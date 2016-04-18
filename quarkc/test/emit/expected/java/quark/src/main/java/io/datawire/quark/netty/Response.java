package io.datawire.quark.netty;

import quark.HTTPRequest;
import quark.HTTPResponse;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.DefaultFullHttpResponse;
import io.netty.handler.codec.http.DefaultHttpHeaders;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpResponseStatus;

import java.util.ArrayList;
import java.util.List;

class Response implements HTTPResponse {

    private ChannelHandlerContext ctx;
    private int code;
    private String body;
    private HttpHeaders headers;
    private IncomingRequest request;
    private final QuarkNettyRuntime runtime;

    public Response(ChannelHandlerContext ctx, IncomingRequest request, QuarkNettyRuntime runtime) {
        this.ctx = ctx;
        this.request = request;
        this.headers = new DefaultHttpHeaders();
        this.runtime = runtime;
        this.runtime.busy();
    }

    @Override
    public Integer getCode() {
        return this.code;
    }

    @Override
    public void setCode(Integer code) { 
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
    public ArrayList<String> getHeaders() {
        return new ArrayList<>(this.headers.names());
    }

    public HTTPRequest request() {
        return this.request;
    }

    void respond() {

        ByteBuf content = ctx.alloc().buffer(2*body.length());
        int length = ByteBufUtil.writeUtf8(content, body);
        FullHttpRequest req = this.request.impl();
        FullHttpResponse resp = new DefaultFullHttpResponse(req.getProtocolVersion(), HttpResponseStatus.valueOf(this.code), content);
        resp.headers().add(this.headers);
        HttpHeaders.setContentLength(resp, length);
        this.ctx.writeAndFlush(resp);
        if (!HttpHeaders.isKeepAlive(req)) {
            this.ctx.close();
        }
        finish();
    }

    public void fail(int code, String body) {
        setCode(code);
        setBody(body);
        this.headers.clear();
        respond();
    }

    public void finish() {
        request.release();
        runtime.idle();
    }
}
