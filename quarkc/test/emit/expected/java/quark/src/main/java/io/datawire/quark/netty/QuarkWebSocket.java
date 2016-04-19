package io.datawire.quark.netty;

import io.datawire.quark.runtime.Buffer;
import io.datawire.quark.runtime.BufferImpl;
import quark.WSHandler;
import quark.WebSocket;
import io.netty.buffer.ByteBuf;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.websocketx.BinaryWebSocketFrame;
import io.netty.handler.codec.http.websocketx.CloseWebSocketFrame;
import io.netty.handler.codec.http.websocketx.PongWebSocketFrame;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;

abstract class QuarkWebSocket implements WebSocket {

    /// quark_runtime.WebSocket
    public Boolean send(String message) {
        TextWebSocketFrame frame = new TextWebSocketFrame(message);
        if (getCh() != null) {
            getCh().writeAndFlush(frame);
            return true;
        }
        return false;
    }

    @Override
    public Boolean sendBinary(Buffer message) {
        ByteBuf binaryData = QuarkNettyRuntime.adaptBuffer(message);
        BinaryWebSocketFrame frame = new BinaryWebSocketFrame(binaryData);
        if (getCh() != null) {
            getCh().writeAndFlush(frame);
            return true;
        }
        return false;
    }

    @Override
    public Boolean close() {
        if (getCh() != null) {
            CloseWebSocketFrame frame = new CloseWebSocketFrame();
            getCh().writeAndFlush(frame);
            return true;
        }
        return false;
    }

    protected abstract Channel getCh();
    protected abstract WSHandler getHandler();

    void handleWebSocketFrame(ChannelHandlerContext ctx,
            WebSocketFrame frame) {
        if (frame instanceof TextWebSocketFrame) {
            TextWebSocketFrame textFrame = (TextWebSocketFrame) frame;
            // System.out.println("WebSocket Client received message: " + textFrame.text());
            if (getHandler() != null) {
                getHandler().onWSMessage(this, textFrame.text());
            }
        } else if (frame instanceof BinaryWebSocketFrame) {
            BinaryWebSocketFrame binFrame = (BinaryWebSocketFrame) frame;
            // System.out.println("WebSocket Client received binary message: " + binFrame.content().readableBytes() + " bytes");
            if (getHandler() != null) {
                getHandler().onWSBinary(this, new BufferImpl(binFrame.content().slice()));
            }
        } else if (frame instanceof PongWebSocketFrame) {
            // System.out.println("WebSocket Client received pong");
        } else if (frame instanceof CloseWebSocketFrame) {
            // System.out.println("WebSocket Client received closing");
            ctx.channel().close();
        }
    }


}
