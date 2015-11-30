package io.datawire.quark.runtime;

public interface Servlet {

    public void onServletInit(String url, Runtime runtime);

    public void onServletError(String url, String error);

    public void onServletEnd(String url);
}