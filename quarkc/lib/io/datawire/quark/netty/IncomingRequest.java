package io.datawire.quark.netty;

import quark.HTTPRequest;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.util.CharsetUtil;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

class IncomingRequest implements HTTPRequest {

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
    public ArrayList<String> getHeaders() {
        return new ArrayList<>(msg.headers().names());
    }

    @Override
    public String getHeader(String key) {
        return msg.headers().get(key);
    }

    FullHttpRequest impl() { return msg; }
}
