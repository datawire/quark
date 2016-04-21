package io.datawire.quark.runtime;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import quark.HTTPRequest;

public class ClientHTTPRequest implements HTTPRequest {
    private String url;
    private String method;
    private String body;
    private Map<String,String> headers;
    public ClientHTTPRequest(String url) {
        this.url = url;
        this.method = "GET";
        this.body = null;
        this.headers = new LinkedHashMap<String,String>();
    }
    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#setMethod(java.lang.String)
     */
    @Override
    public void setMethod(String method) { this.method = method; }
    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#setBody(java.lang.String)
     */
    @Override
    public void setBody(String body) { this.body = body; }
    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#setHeader(java.lang.String, java.lang.String)
     */
    @Override
    public void setHeader(String key, String value) { this.headers.put(key, value); }

    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#getUrl()
     */
    @Override
    public String getUrl() { return url; }
    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#getMethod()
     */
    @Override
    public String getMethod() { return method; }
    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#getBody()
     */
    @Override
    public String getBody() { return body; }
    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#getHeaders()
     */
    @Override
    public ArrayList<String> getHeaders() { return new ArrayList<>(headers.keySet()); }
    /* (non-Javadoc)
     * @see io.datawire.quark.runtime.HTTPRequest#getHeader(java.lang.String)
     */@Override
    public String getHeader(String key) {
        return headers.get(key);
    }
}
