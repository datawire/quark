package io.datawire.quark.runtime;


public interface Runtime {
    void acquire();
    void release();
    void wait(Double timeoutInSeconds);
    void open(String url, WSHandler handler);
    void request(HTTPRequest request, HTTPHandler handler);
    void schedule(Task handler, Double delayInSeconds);
}