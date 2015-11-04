package io.datawire.quark.runtime;

import java.util.LinkedHashMap;
import java.util.Map;

public class HTTPRequest {
    private String url;
    private String method;
    private String body;
    private Map<String,String> headers;
    public HTTPRequest(String url) {
        this.url = url;
        this.method = "GET";
        this.body = null;
        this.headers = new LinkedHashMap<String,String>();
    }
    public void setMethod(String method) { this.method = method; }
    public void setBody(String body) { this.body = body; }
    public void setHeader(String key, String value) { this.headers.put(key, value); }

    public String getUrl() { return url; }
    public String getMethod() { return method; }
    public String getBody() { return body; }
    public Map<String,String> getHeaders() { return headers; }
}