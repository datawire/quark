package io.datawire.quark.netty;

import quark.WSHandler;
import quark.WebSocket;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketHandshakeException;
import io.netty.util.CharsetUtil;

public class QuarkNettyClientWebsocket extends SimpleChannelInboundHandler<Object> {

    private final WebSocketClientHandshaker handshaker;
    private final WSHandler handler;
    private Channel ch;
    private QuarkWebSocket webSocket = new QuarkWebSocket() {

        @Override
        protected Channel getCh() {
            return ch;
        }

        @Override protected WSHandler getHandler() {
            return handler;
        }
    };

    private class Lifecycle implements ChannelFutureListener {
        private boolean _connected = false;
        Lifecycle() {
            handler.onWSInit(webSocket);
        }

        void connected() {
            _connected = true;
            handler.onWSConnected(webSocket);
        }

        @Override
        public void operationComplete(ChannelFuture future) throws Exception {
            if (future.isDone()) {
                if (_connected) {
                    handler.onWSClosed(webSocket);
                }
                if (!future.isSuccess()) {
                    handler.onWSError(webSocket, new quark.WSError(future.cause().toString()));
                }
                handler.onWSFinal(webSocket);
            }
        }
    }
    Lifecycle lifecycle;

    public QuarkNettyClientWebsocket(WebSocketClientHandshaker handshaker, WSHandler handler) {
        this.handshaker = handshaker;
        this.handler = handler;
        this.ch = null;
    }

    void  startWSHandlerLifecycle(Channel ch) {
        lifecycle = new Lifecycle();
        ch.closeFuture().addListener(lifecycle);
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        handshaker.handshake(ctx.channel());
    }

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, Object msg)
            throws Exception {
        Channel ch = ctx.channel();
        if (!handshaker.isHandshakeComplete()) {
            try {
                handshaker.finishHandshake(ch, (FullHttpResponse) msg);
            } catch (WebSocketHandshakeException e) {
                this.handler.onWSError(webSocket, new quark.WSError(e.toString()));
                ctx.channel().close();
                return;
            }
            this.ch = ch;
            lifecycle.connected();
            return;
        }

        if (msg instanceof FullHttpResponse) {
            FullHttpResponse response = (FullHttpResponse) msg;
            throw new IllegalStateException(
                    "Unexpected FullHttpResponse (getStatus=" + response.getStatus() +
                    ", content=" + response.content().toString(CharsetUtil.UTF_8) + ')');
        }

        WebSocketFrame frame = (WebSocketFrame) msg;
        webSocket.handleWebSocketFrame(ctx, frame);
    }

    public WebSocket getWebSocket() {
        return webSocket;
    }

}
