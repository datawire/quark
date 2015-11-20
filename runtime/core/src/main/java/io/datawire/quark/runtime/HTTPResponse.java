package io.datawire.quark.runtime;

import java.util.List;

public interface HTTPResponse {
    int getCode();
    void setCode(int code);
    String getBody();
    void setBody(String body);
    String getHeader(String key);
    void setHeader(String key, String value);
    List<String> getHeaders();
}