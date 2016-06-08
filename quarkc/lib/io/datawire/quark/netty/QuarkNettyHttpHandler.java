package io.datawire.quark.netty;

import quark.HTTPHandler;
import quark.HTTPRequest;
import quark.HTTPResponse;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.util.CharsetUtil;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class QuarkNettyHttpHandler extends SimpleChannelInboundHandler<Object> {

    private HTTPRequest request;
    private HTTPHandler handler;

    public QuarkNettyHttpHandler(HTTPRequest request,
            HTTPHandler handler) {
        this.request = request;
        this.handler = handler;
    }

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, Object msg)
            throws Exception {
        if (msg instanceof FullHttpResponse) {
            final FullHttpResponse resp = (FullHttpResponse)msg;
            resp.retain();
            handler.onHTTPResponse(request, new HTTPResponse() {

                @Override
                protected void finalize() throws Throwable {
                    resp.release();
                }
                @Override
                public Integer getCode() {
                    return resp.getStatus().code();
                }

                @Override
                public String getBody() {
                    String encoding = resp.headers().get(HttpHeaders.Names.CONTENT_ENCODING);
                    Charset charset = CharsetUtil.UTF_8;
                    Set<String> aliases = charset.aliases();
                    if (encoding != null && aliases.contains(encoding)) {
                        charset = Charset.forName(encoding);
                    }
                    return resp.content().toString(charset);
                }

                @Override
                public void setCode(Integer code) {
                    // nope
                }

                @Override
                public void setBody(String body) {
                    // nope
                }

                @Override
                public String getHeader(String key) {
                    return resp.headers().get(key);
                }

                @Override
                public void setHeader(String key, String value) {
                    // nope;
                }

                @Override
                public ArrayList<String> getHeaders() {
                    return new ArrayList<>(resp.headers().names());
                }
            });
            ctx.close();
        }
    }
}
