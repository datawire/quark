package io.datawire.quark.netty;

import java.util.List;

import io.datawire.quark.runtime.HTTPRequest;
import io.datawire.quark.runtime.HTTPResponse;
import io.datawire.quark.runtime.HTTPServlet;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;

public class DatawireNettyHttpRequestHandler implements ChannelHandler {

    public class Response implements HTTPResponse {

        @Override
        public int getCode() {
            throw new RuntimeException("TODO");
        }

        @Override
        public void setCode(int code) {
            throw new RuntimeException("TODO");
        }

        @Override
        public String getBody() {
            throw new RuntimeException("TODO");
        }

        @Override
        public void setBody(String body) {
            throw new RuntimeException("TODO");
        }

        @Override
        public String getHeader(String key) {
            throw new RuntimeException("TODO");
        }

        @Override
        public void setHeader(String key, String value) {
            throw new RuntimeException("TODO");
        }

        @Override
        public List<String> getHeaders() {
            throw new RuntimeException("TODO");
        }

        public HTTPRequest request() {
            throw new RuntimeException("TODO");
        }

        void respond() {
            throw new RuntimeException("TODO");
        }

        public void fail() {
            throw new RuntimeException("TODO");
        }

    }

    public DatawireNettyHttpRequestHandler(
            io.datawire.quark.runtime.Runtime runtime,
            HTTPServlet servlet) {
        // TODO Auto-generated constructor stub
    }

    @Override
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        // TODO Auto-generated method stub

    }

    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        // TODO Auto-generated method stub

    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause)
            throws Exception {
        // TODO Auto-generated method stub

    }

}
