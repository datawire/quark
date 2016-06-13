package io.datawire.quark.runtime;

import quark.WSHandler;
import quark.WebSocket;
import quark.WSError;

public abstract class AbstractWSHandler implements WSHandler {
    @Override public void onWSInit(WebSocket socket) {}
    @Override public void onWSConnected(WebSocket socket) {}
    @Override public void onWSMessage(WebSocket socket, String message) {}
    @Override public void onWSClosed(WebSocket socket) {}
    @Override public void onWSError(WebSocket socket, WSError error) {}
    @Override public void onWSFinal(WebSocket socket) {}
}
