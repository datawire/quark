package io.datawire.quark.netty;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import quark.HTTPServlet;
import quark.Runtime;
import quark.Servlet;
import quark.WSHandler;
import quark.WSServlet;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.channel.ChannelHandler.Sharable;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshakerFactory;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;

@Sharable
public class DatawireNettyHttpContainer extends SimpleChannelInboundHandler<Object> {
    private static final Logger log = Logger.getLogger(DatawireNettyHttpContainer.class.getName());
    static class Root {
        final String scheme;
        final String host;
        final int port;
        final URI root;

        public Root(String scheme, String host, int port) {
            this.scheme = scheme;
            this.host = host;
            this.port = port;
            try {
                this.root = new URI(scheme, null, host, port, null, null, null);
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException(e);
            }
        }

        String urlOf(Route route) {
            try {
                return new URI(route.scheme, null, host, port, route.path, null, null).toString();
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException(e);
            }
        }

        String pathOf(String p) {
            return root.resolve(p).getPath();
        }
        boolean isSecure() { return "https".equals(scheme) || "wss".equals(scheme); }
    }

    static abstract class Route {
        String scheme;
        String path;
        Servlet servlet;
        Route(String scheme, String path, Servlet servlet) {
            this.scheme = scheme;
            this.path = path;
            this.servlet = servlet;
        }
        abstract void invoke(ChannelHandlerContext ctx, IncomingRequest rq, Response rs);
        boolean isSecure() { return "https".equals(scheme) || "wss".equals(scheme); }
    }

    static class HTTPRoute extends Route {
        private HTTPServlet servlet;
        HTTPRoute(String scheme, String path, HTTPServlet servlet) {
            super(scheme, path, servlet);
            this.servlet = servlet;
        }
        @Override
        void invoke(ChannelHandlerContext ctx, IncomingRequest rq, Response rs) {
            try {
                this.servlet.onHTTPRequest(rq, rs);
            } catch (Throwable e) {
                StringWriter msg = new StringWriter();
                PrintWriter p = new PrintWriter(msg);
                e.printStackTrace(p);
                p.close();
                log.severe(msg.toString());
                rs.fail(500, msg.toString());
            }
        }
    }

    class WSRoute extends Route {
        WSServlet servlet;
        WSRoute(String scheme, String path, WSServlet servlet) {
            super(scheme, path, servlet);
            this.servlet = servlet;
        }
        @Override
        void invoke(final ChannelHandlerContext ctx, IncomingRequest rq, Response rs) {
            final WSHandler handler = this.servlet.onWSConnect(rq);
            if (handler == null) {
                rs.fail(403, "Forbidden\r\n");
            } else {
                WebSocketServerHandshakerFactory factory = new WebSocketServerHandshakerFactory(root.urlOf(this), null, true);
                FullHttpRequest request = rq.impl();
                WebSocketServerHandshaker handshaker = factory.newHandshaker(request);
                if (handshaker == null) {
                    rs.finish();
                    WebSocketServerHandshakerFactory.sendUnsupportedVersionResponse(ctx.channel());
                } else {
                    ctx.pipeline().remove(DatawireNettyHttpContainer.class);
                    final QuarkNettyServerWebsocket socket = new QuarkNettyServerWebsocket(handshaker, handler);
                    ctx.pipeline().addLast(socket);
                    if (socket.handshake(ctx, request)) {
                        rs.finish();
                    } else {
                        rs.fail(400, "websockets here, move along\r\n");
                        ctx.close();
                    }
                }
            }
        }
    }

    static interface RouteResolver {
        void resolve(Route route);
    }

    private final QuarkNettyRuntime runtime;
    private final Object lock = new Object();
    private Map<String, Route> servlets; // locked by lock
    private List<Route> pending;         // locked by lock
    private Root root;   // locked by lock
    private RouteResolver resolver;      // locked by lock

    public DatawireNettyHttpContainer(
            QuarkNettyRuntime runtime) {
        this.runtime = runtime;
        servlets = new HashMap<>();
        pending = new ArrayList<>();
        root = null;
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause)
            throws Exception {
        ctx.close();
    }

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, Object msg)
            throws Exception {
        if (msg instanceof FullHttpRequest) {
            FullHttpRequest request = (FullHttpRequest)msg;
            IncomingRequest rq = new IncomingRequest(request);
            String path = root.pathOf(request.getUri());
            Route route;
            synchronized(lock) {
                // XXX: add RCU for servlets
                route = servlets.get(path);
            }
            Response rs = new Response(ctx, rq, runtime);
            if (route != null) {
                route.invoke(ctx, rq, rs);
            } else {
                rs.fail(404, "Not found: " + path);
            }
        }
    }

    public void addRoute(String scheme, String path, HTTPServlet servlet_w) {
        addRoute(new HTTPRoute(scheme, path, servlet_w));
    }


    public void addRoute(String scheme, String path, WSServlet servlet_w) {
        WSRoute wsRoute = new WSRoute(scheme, path, servlet_w);
        addRoute(wsRoute);
    }

    private void addRoute(Route route) {
        final Route old;
        final RouteResolver currentResolver;
        final Root currentRoot;
        if (route.servlet != null) {
            synchronized (lock) {
                currentResolver = resolver;
                currentRoot = root;
            }
            if (currentRoot != null && currentRoot.isSecure() != route.isSecure()) {
                route.servlet.onServletError(currentRoot.urlOf(route), "This port has already been configured " + (currentRoot.isSecure() ? "with" : "without") + " TLS");
                return;
            }
            if (currentResolver != null) {
                currentResolver.resolve(route);
            }
        }
        synchronized (lock) {
            if (pending != null) {
                pending.add(route);
                return;
            } else {
                if (route.servlet == null) {
                    old = servlets.remove(route.path);
                } else {
                    old = servlets.put(route.path, route);
                }
            }
        }
        if (old != null) {
            assert(root != null);
            old.servlet.onServletEnd(root.urlOf(old));
        }
    }

    public ChannelFutureListener getBindListener(final String scheme, final String host, final int port) {
        return new ChannelFutureListener() {
            @Override
            public void operationComplete(ChannelFuture future) throws Exception {
                if (future.isDone()) {
                    final Root urlFormatter_local;
                    final RouteResolver resolver_local;
                    if (future.isSuccess()) {
                        InetSocketAddress addr = (InetSocketAddress)future.channel().localAddress();
                        urlFormatter_local = new Root(scheme, addr.getHostString(), addr.getPort());
                        resolver_local = new RouteResolver() {
                            @Override
                            public void resolve(Route route) {
                                if (route.servlet != null) {
                                    route.servlet.onServletInit(root.urlOf(route), runtime);
                                }
                            }
                        };
                    } else {
                        urlFormatter_local = new Root(scheme, host, port);
                        final String error = future.cause() != null ? future.cause().toString() : "bind cancelled";
                        resolver_local = new RouteResolver() {
                            @Override
                            public void resolve(Route route) {
                                if (route.servlet != null) {
                                    route.servlet.onServletError(root.urlOf(route), error);
                                }
                            }
                        };
                    }
                    final List<Route> pending_local;
                    synchronized (lock) {
                        root = urlFormatter_local;
                        resolver = resolver_local;
                        pending_local = pending;
                        pending = null;
                    }
                    for (Route route: pending_local) {
                        addRoute(route);
                    }
                }
            }
        };
    }
}
