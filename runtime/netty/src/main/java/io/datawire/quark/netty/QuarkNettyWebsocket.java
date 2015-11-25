package io.datawire.quark.netty;

import io.datawire.quark.runtime.Buffer;
import io.datawire.quark.runtime.BufferImpl;
import io.datawire.quark.runtime.WSHandler;
import io.datawire.quark.runtime.WebSocket;
import io.netty.buffer.ByteBuf;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.websocketx.BinaryWebSocketFrame;
import io.netty.handler.codec.http.websocketx.CloseWebSocketFrame;
import io.netty.handler.codec.http.websocketx.PongWebSocketFrame;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketClientHandshaker;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.util.CharsetUtil;

import java.util.ArrayList;

public class QuarkNettyWebsocket extends SimpleChannelInboundHandler<Object> implements WebSocket {

    private final WebSocketClientHandshaker handshaker;
    private final WSHandler handler;
    private Channel ch;

    public QuarkNettyWebsocket(WebSocketClientHandshaker handshaker, WSHandler handler) {
        this.handshaker = handshaker;
        this.handler = handler;
        this.ch = null;
    }

    /// quark_runtime.WebSocket
    public boolean send(String message) {
        TextWebSocketFrame frame = new TextWebSocketFrame(message);
        if (ch != null) {
            ch.writeAndFlush(frame);
            return true;
        }
        return false;
    }

    @Override
    public boolean sendBinary(Buffer message) {
        ByteBuf binaryData = QuarkNettyRuntime.adaptBuffer(message);
        BinaryWebSocketFrame frame = new BinaryWebSocketFrame(binaryData);
        if (ch != null) {
            ch.writeAndFlush(frame);
            return true;
        }
        return false;
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
            this.ch = ch;
            this.handler.onWSConnected(this);
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
                handler.onWSMessage(this, textFrame.text());
            }
        } else if (frame instanceof BinaryWebSocketFrame) {
            BinaryWebSocketFrame binFrame = (BinaryWebSocketFrame) frame;
            System.out.println("WebSocket Client received binary message: " + binFrame.content().readableBytes() + " bytes");
            if (handler != null) {
                handler.onWSBinary(this, new BufferImpl(binFrame.content().slice()));
            }
        } else if (frame instanceof PongWebSocketFrame) {
            System.out.println("WebSocket Client received pong");
        } else if (frame instanceof CloseWebSocketFrame) {
            System.out.println("WebSocket Client received closing");
            ch.close();
        }
    }

}