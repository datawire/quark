package io.datawire.netty;

import java.util.ArrayList;

import io.datawire.quark_runtime.WebSocket;
import io.datawire.quark_runtime.WebSocketHandler;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.websocketx.CloseWebSocketFrame;
import io.netty.handler.codec.http.websocketx.PongWebSocketFrame;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.util.CharsetUtil;

public class DatawireNettyWebsocket extends SimpleChannelInboundHandler<Object> implements WebSocket {

	private final WebSocketClientHandshaker handshaker;
	private final WebSocketHandler handler;
	private ArrayList<String> pending = new ArrayList<>();
	private Channel ch;

	public DatawireNettyWebsocket(WebSocketClientHandshaker handshaker, WebSocketHandler handler) {
		this.handshaker = handshaker;
		this.handler = handler;
		this.ch = null;
	}
	
	/// quark_runtime.WebSocket
	public void send(String message) {
		if (ch != null) {
			ch.writeAndFlush(new TextWebSocketFrame(message));
		} else {
			pending.add(message);
		}
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
            handshaker.finishHandshake(ch, (FullHttpResponse) msg);
            System.out.println("WebSocket Client connected!");
            this.handler.onConnected(this);
            this.ch = ch;
            for (String message : pending) {
            	send(message);
            }
            pending.clear();
            pending = null;
            return;
        }

        if (msg instanceof FullHttpResponse) {
            FullHttpResponse response = (FullHttpResponse) msg;
            throw new IllegalStateException(
                    "Unexpected FullHttpResponse (getStatus=" + response.getStatus() +
                            ", content=" + response.content().toString(CharsetUtil.UTF_8) + ')');
        }

        WebSocketFrame frame = (WebSocketFrame) msg;
        if (frame instanceof TextWebSocketFrame) {
            TextWebSocketFrame textFrame = (TextWebSocketFrame) frame;
            System.out.println("WebSocket Client received message: " + textFrame.text());
            if (handler != null) {
                handler.onMessage(this, textFrame.text());
            }
        } else if (frame instanceof PongWebSocketFrame) {
            System.out.println("WebSocket Client received pong");
        } else if (frame instanceof CloseWebSocketFrame) {
            System.out.println("WebSocket Client received closing");
            ch.close();
        }
	}
}
