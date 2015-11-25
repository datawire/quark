package io.datawire.quark.runtime;

public interface WebSocket {
    boolean send(String message);
    boolean sendBinary(Buffer message);
    boolean close();
}