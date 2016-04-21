package quark;

public interface WSHandler {
    public static quark.reflect.Class quark_WSHandler_ref = quark_md.Root.quark_WSHandler_md;
     void onWSInit(WebSocket socket);
     void onWSConnected(WebSocket socket);
     void onWSMessage(WebSocket socket, String message);
     void onWSBinary(WebSocket socket, io.datawire.quark.runtime.Buffer message);
     void onWSClosed(WebSocket socket);
     void onWSError(WebSocket socket);
     void onWSFinal(WebSocket socket);
}
