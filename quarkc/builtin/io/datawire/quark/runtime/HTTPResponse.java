package io.datawire.quark.runtime;

import java.util.ArrayList;

public interface HTTPResponse {
    Integer getCode();
    void setCode(Integer code);
    String getBody();
    void setBody(String body);
    String getHeader(String key);
    void setHeader(String key, String value);
    ArrayList<String> getHeaders();
}
