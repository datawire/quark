package io.datawire.quark.runtime;

import java.util.ArrayList;

public interface HTTPRequest {

    public void setMethod(String method);

    public void setBody(String body);

    public void setHeader(String key, String value);

    public String getUrl();

    public String getMethod();

    public String getBody();

    public ArrayList<String> getHeaders();

    public String getHeader(String key);

}
