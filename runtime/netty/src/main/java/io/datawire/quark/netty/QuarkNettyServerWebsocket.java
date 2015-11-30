package io.datawire.quark.netty;

import io.datawire.quark.runtime.Buffer;
import io.datawire.quark.runtime.WSHandler;
import io.datawire.quark.runtime.WebSocket;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
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


    @Override
    protected void channelRead0(ChannelHandlerContext ctx, WebSocketFrame frame)
            throws Exception {
        webSocket.handleWebSocketFrame(ctx, frame);
    }


    public WebSocket getWebSocket() {
        return webSocket;
    }

 
}
