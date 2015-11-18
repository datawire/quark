package io.datawire.quark.runtime;

public interface WebSocket {
    void send(String message);
    void sendBinary(Buffer message);
}