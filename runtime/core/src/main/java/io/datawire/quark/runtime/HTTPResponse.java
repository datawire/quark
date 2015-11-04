package io.datawire.quark.runtime;

public interface HTTPResponse {
    int getCode();
    String getBody();
}