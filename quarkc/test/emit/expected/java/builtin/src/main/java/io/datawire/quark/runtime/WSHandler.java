package io.datawire.quark.runtime;

public interface WSHandler {
    void onWSInit(WebSocket socket);
    void onWSConnected(WebSocket socket);
    void onWSMessage(WebSocket socket, String message);
    void onWSBinary(WebSocket socket, Buffer message);
    void onWSClosed(WebSocket socket);
    void onWSError(WebSocket socket);
    void onWSFinal(WebSocket socket);
}