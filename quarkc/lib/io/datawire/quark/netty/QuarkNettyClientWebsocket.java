package io.datawire.quark.netty;

import quark.WSHandler;
import quark.WebSocket;
import io.netty.channel.Channel;
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


    public QuarkNettyClientWebsocket(WebSocketClientHandshaker handshaker, WSHandler handler) {
        this.handshaker = handshaker;
        this.handler = handler;
        this.ch = null;
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
                this.handler.onWSError(webSocket);
                // XXX: this will fire onWSClosed, do we need to stop that?
                ctx.channel().close();
                return;
            }
            System.out.println("WebSocket Client connected!");
            this.ch = ch;
            this.handler.onWSConnected(webSocket);
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
