package hello_server {
    class HelloServlet extends HTTPServlet {
        Runtime runtime;
        void onServletInit(String url, Runtime runtime) {
            self.runtime = runtime;
            print("Hello Registered on " + url);
            runtime.serveHTTP(url + "/world", new WorldServlet());
        }

        void onHTTPRequest(HTTPRequest rq, HTTPResponse rs) {
            rs.setCode(200);
            rs.setBody("Hello World!\r\n");
            rs.setHeader("Content-Type", "text/plain");
            self.runtime.respond(rq, rs);
        }

        void onServletError(String url, String reason) {
            print("Hello Trouble with registering at " + url + "   reason: " + reason);
        }

        void onServletEnd(String url) {
            print("Hello End of serving on " + url);
        }
    }

    class WorldServlet extends HTTPServlet {
        Runtime runtime;
        void onServletInit(String url, Runtime runtime) {
            self.runtime = runtime;
            print("World Registered on " + url);
        }

        void onHTTPRequest(HTTPRequest rq, HTTPResponse rs) {
            rs.setCode(200);
            rs.setBody("World Hello!\r\n");
            rs.setHeader("Content-Type", "text/plain");
            self.runtime.respond(rq, rs);
        }

        void onServletError(String url, String reason) {
            print("World Trouble with registering at " + url + "   reason: " + reason);
        }

        void onServletEnd(String url) {
            print("World End of serving on " + url);
        }
    }
    class MySocketServlet extends WSServlet, WSHandler {
        Runtime runtime;
        void onServletInit(String url, Runtime runtime) {
            self.runtime = runtime;
            print("webSocket Registered on " + url);
        }

        WSHandler onWSConnect(HTTPRequest handshake) {
            print("webSocket server handshake request: " + handshake.getUrl());
            return self;
        }

        void onServletError(String url, String reason) {
            print("webSocket Trouble with registering at " + url + "   reason: " + reason);
        }

        void onServletEnd(String url) {
            print("webSocket End of serving on " + url);
        }

    void onWSInit(WebSocket socket)                    {print("webSocket onWSInit");}
    void onWSConnected(WebSocket socket)               {print("webSocket onWSConnected"); socket.send("howdy!"); }
    void onWSMessage(WebSocket socket, String message) {print("webSocket onWSMessage " + message);}
    void onWSBinary(WebSocket socket, Buffer message)  {print("webSocket onWSBinary " + self.runtime.codec().toHexdump(message, 0, message.capacity(), 2));}
    void onWSClosed(WebSocket socket)                  {print("webSocket onWSClosed");}
    void onWSError(WebSocket socket)                   {print("webSocket onWSError");}
    void onWSFinal(WebSocket socket)                   {print("webSocket onWSFinal");}

    }
}
