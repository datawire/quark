package io.datawire.quark.netty;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import io.datawire.quark.runtime.HTTPRequest;
import io.datawire.quark.runtime.HTTPResponse;
import io.datawire.quark.runtime.HTTPServlet;
import io.datawire.quark.runtime.Runtime;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.DefaultFullHttpResponse;
import io.netty.handler.codec.http.DefaultHttpHeaders;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.util.CharsetUtil;

public class DatawireNettyHttpRequestHandler extends SimpleChannelInboundHandler<Object> {

   class Response implements HTTPResponse {

        private ChannelHandlerContext ctx;
        private int code;
        private String body;
        private HttpHeaders headers;
        private IncomingRequest request;

        public Response(ChannelHandlerContext ctx, IncomingRequest request) {
            this.ctx = ctx;
            this.request = request;
            this.headers = new DefaultHttpHeaders();
        }

        @Override
        public int getCode() {
            return this.code;
        }

        @Override
        public void setCode(int code) { 
            this.code = code;
        }

        @Override
        public String getBody() {
            return this.body;
        }

        @Override
        public void setBody(String body) {
            this.body = body;
        }

        @Override
        public String getHeader(String key) {
            return this.headers.get(key);
        }

        @Override
        public void setHeader(String key, String value) {
            this.headers.set(key, value);
        }

        @Override
        public List<String> getHeaders() {
            return new ArrayList<>(this.headers.names());
        }

        public HTTPRequest request() {
            return this.request;
        }

        void respond() {
            ByteBuf content = ctx.alloc().buffer(body.length());
            ByteBufUtil.writeUtf8(content, body);
            FullHttpRequest req = this.request.impl();
            FullHttpResponse resp = new DefaultFullHttpResponse(req.getProtocolVersion(), HttpResponseStatus.valueOf(this.code), content);
            resp.headers().add(this.headers);
            this.ctx.writeAndFlush(resp);
            if (!HttpHeaders.isKeepAlive(req)) {
                this.ctx.close();
            }
            request.release();
        }

        public void fail(int code, String body) {
            setCode(code);
            setBody(body);
            this.headers.clear();
            respond();
        }
    }

    private class IncomingRequest implements HTTPRequest {

        private FullHttpRequest msg;

        IncomingRequest(FullHttpRequest msg) {
            this.msg = msg;
            msg.retain();
        }

        void release() {
            this.msg.release();
        }

        @Override
        public String getMethod() {
            return msg.getMethod().name();
        }

        @Override
        public void setMethod(String method) {
            // nothing
        }

        @Override
        public void setBody(String body) {
            // nothing
        }

        @Override
        public void setHeader(String key, String value) {
            // nothing
        }

        @Override
        public String getUrl() {
            return msg.getUri();
        }

        @Override
        public String getBody() {
           // XXX: parse charset out of Content-Type
           Charset charset = CharsetUtil.UTF_8;
           return msg.content().toString(charset);
        }

        @Override
        public List<String> getHeaders() {
            return new ArrayList<>(msg.headers().names());
        }

        @Override
        public String getHeader(String key) {
            return msg.headers().get(key);
        }

        FullHttpRequest impl() { return msg; }
    }

    private final Runtime runtime;
    private final HTTPServlet servlet;

    public DatawireNettyHttpRequestHandler(
            io.datawire.quark.runtime.Runtime runtime,
            HTTPServlet servlet) {
        this.runtime = runtime;
        this.servlet = servlet;
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
            IncomingRequest rq = new IncomingRequest((FullHttpRequest)msg);
            Response rs = new Response(ctx, rq);
            servlet.onHTTPRequest(rq, rs);
        }
    }

}
