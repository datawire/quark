@version("1.2.3") // version is mandatory
package interop { // package interop is mandatory
    class Entrypoint { // class Entrypoint is mandatory
        void server(Runtime runtime, int port) { // runtime and port are mandatory constructor parameters
            InteropWSServlet servlet = new InteropWSServlet();
            runtime.serveWS("ws://127.0.0.1:" + port.toString() + "/ws_server", servlet);
        }
        void client(Runtime runtime, int port) {
            runtime.open("ws://127.0.0.1:" + port.toString() + "/ws_server", new InteropWSClient(runtime));
        }
    }

    class InteropWSServlet extends WSServlet {
        Runtime runtime;
        String url;

        void onServletInit(String url, Runtime runtime) {
            self.runtime = runtime;
            self.url = url;
            print("WSServlet.onServletInit " + url);
        }

        void onServletError(String url, String error) {
            print("WSServlet.onServletError " + url + " : " + error);
        }

        void onServletEnd(String url) {
            print("WSServlet.onServletEnd " + url);
        }

        WSHandler onWSConnect(HTTPRequest handshake) {
            return new InteropWSServer(self.runtime);
        }
    }

    class InteropWSCommon extends WSHandler {
        Runtime runtime;
        InteropWSCommon(Runtime runtime) {
            self.runtime = runtime;
        }

        void onWSInit(WebSocket socket) {
            print("onWSInit");
        }
        void onWSConnected(WebSocket socket) {
            print("onWSConnected");
        }
        void onWSMessage(WebSocket socket, String message) {
            print("onWSMessage " + message);
        }
        void onWSBinary(WebSocket socket, Buffer data) {
            print("onWSBinary " + self.runtime.codec().toHexdump(data, 0, data.capacity(), 0));
        }
        void onWSClosed(WebSocket socket) {
            print("onWSClosed");
        }
        void onWSError(WebSocket socket) {
            print("onWSError");
        }
        void onWSFinal(WebSocket socket) {
            print("onWSFinal");
        }
    }

    class InteropWSServer extends InteropWSCommon {
        void onWSMessage(WebSocket socket, String message) {
            print("onWSMessage " + message);
            socket.send(message);
        }
        void onWSBinary(WebSocket socket, Buffer data) {
            print("onWSBinary " + self.runtime.codec().toHexdump(data, 0, data.capacity(), 0));
            socket.sendBinary(data);
        }
    }

    class InteropWSClient extends InteropWSCommon {
        void onWSConnected(WebSocket socket) {
            print("onWSConnected");
            socket.send("hello from client");
        }
        void onWSMessage(WebSocket socket, String message) {
            print("onWSMessage " + message);
            socket.sendBinary(self.runtime.codec().fromHexdump("0xdeadbeef"));
        }
        void onWSBinary(WebSocket socket, Buffer data) {
            print("onWSBinary " + self.runtime.codec().toHexdump(data, 0, data.capacity(), 0));
            socket.close();
        }
    }
}
