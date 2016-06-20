quark *;
include io/datawire/quark/runtime/AbstractWSHandler.java;
include io/datawire/quark/netty/QuarkNettyServerWebsocket.java;
include io/datawire/quark/netty/QuarkWebSocket.java;
include io/datawire/quark/netty/QuarkNettyClientWebsocket.java;

namespace quark {

    class WSError extends Error {}

    interface WSHandler {
        @doc("Called when the WebSocket is first created.")
        void onWSInit(WebSocket socket) {}

        @doc("Called when the WebSocket connects successfully.")
        void onWSConnected(WebSocket socket) {}

        @doc("Called when the WebSocket receives a message.")
        void onWSMessage(WebSocket socket, String message) {}

        @doc("Called when the WebSocket receives a binary message.")
        void onWSBinary(WebSocket socket, Buffer message) {}

        @doc("Called when the WebSocket disconnects cleanly.")
        void onWSClosed(WebSocket socket) {}

        @doc("Called when the WebSocket disconnects with an error, or fails to connect.")
        void onWSError(WebSocket socket, WSError error) {}

        @doc("Called when the WebSocket is done with life, one way or another.")
        void onWSFinal(WebSocket socket) {}
    }

    interface WebSocket {
        bool send(String message);
        bool sendBinary(Buffer bytes);
        bool close();
    }

    @doc("Websocket servlet")
    interface WSServlet extends Servlet {
        @doc("called for each new incoming WebSocket connection")
        WSHandler onWSConnect(HTTPRequest upgrade_request) { return null; }

        void serveWS(String url) { concurrent.Context.runtime().serveWS(url, self); }
    }
}
