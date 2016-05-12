package io.datawire.quark.netty;

import io.datawire.quark.runtime.Buffer;
import quark.WSHandler;
import quark.WebSocket;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketHandshakeException;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;

public class QuarkNettyServerWebsocket extends SimpleChannelInboundHandler<WebSocketFrame>  {

    private final WebSocketServerHandshaker handshaker;
    private final WSHandler handler;
    private Channel ch = null;
    private QuarkWebSocket webSocket = new QuarkWebSocket() {

        @Override
        protected Channel getCh() {
            return ch;
        }

        @Override
        protected WSHandler getHandler() {
            return handler;
        }

    };

    public QuarkNettyServerWebsocket(WebSocketServerHandshaker handshaker,
            WSHandler handler) {
        this.handshaker = handshaker;
        this.handler = handler;
    }

    public boolean handshake(ChannelHandlerContext ctx, FullHttpRequest rq) {
        handler.onWSInit(webSocket);
        ctx.channel().closeFuture().addListener(new ChannelFutureListener() {

            @Override
            public void operationComplete(ChannelFuture future) throws Exception {
                handler.onWSFinal(webSocket);
            }
        });
        ChannelFuture handshakeFuture;
        try {
            handshakeFuture = handshaker.handshake(ctx.channel(), rq);
        } catch (WebSocketHandshakeException e) {
            handler.onWSError(webSocket, new quark.WSError(e.toString()));
            return false;
        }
        handshakeFuture.addListener(new ChannelFutureListener() {
            @Override
            public void operationComplete(ChannelFuture future) throws Exception {
                if (future.isDone()) {
                    if (future.isSuccess()) {
                        ch = future.channel();
                        handler.onWSConnected(webSocket);
                    } else {
                        handler.onWSError(webSocket, new quark.WSError(future.cause().toString()));
                        future.channel().close();
                    }
                }
            }
        });
        return true;
    }


    @Override
    protected void channelRead0(ChannelHandlerContext ctx, WebSocketFrame frame)
            throws Exception {
        webSocket.handleWebSocketFrame(ctx, frame);
    }


    public WebSocket getWebSocket() {
        return webSocket;
    }


}
