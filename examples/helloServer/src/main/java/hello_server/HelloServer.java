package hello_server;

import io.datawire.quark.netty.QuarkNettyRuntime;
import io.datawire.quark.runtime.Buffer;
import io.datawire.quark.runtime.ClientHTTPRequest;
import io.datawire.quark.runtime.HTTPHandler;
import io.datawire.quark.runtime.HTTPRequest;
import io.datawire.quark.runtime.HTTPResponse;
import io.datawire.quark.runtime.WSHandler;
import io.datawire.quark.runtime.WebSocket;

public class HelloServer {
    public static void main(String[] args) throws Exception {
        final QuarkNettyRuntime runtime = new QuarkNettyRuntime();
        HelloServlet server = new HelloServlet();
        runtime.serveHTTP("http://127.0.0.1:9876/foo", server);
        runtime.serveHTTP("http://127.0.0.1:0/foo", server);
        runtime.serveHTTP("http://127.0.0.1/foo", server);
        runtime.serveWS("ws://127.0.0.1:9876/ws", new MySocketServlet());
        runtime.launch();
        Thread.sleep(1000);
        WSHandler handler = new WSHandler() {

            @Override
            public void onWSMessage(WebSocket socket, String message) {
                System.out.println("client onWSMessage " + message);
            }

            @Override
            public void onWSInit(WebSocket socket) {
                System.out.println("client onWSInit ");
            }

            @Override
            public void onWSFinal(WebSocket socket) {
                System.out.println("client onWSFinal ");
            }

            @Override
            public void onWSError(WebSocket socket) {
                System.out.println("client onWSError ");
            }

            @Override
            public void onWSConnected(WebSocket socket) {
                System.out.println("client onWSConnected ");
                socket.send("Hello socket!");
            }

            @Override
            public void onWSClosed(WebSocket socket) {
                System.out.println("client onWSClosed ");
            }

            @Override
            public void onWSBinary(WebSocket socket, Buffer message) {
                System.out.println("client onWSBinary " + runtime.codec().toHexdump(message, 0, message.capacity(), 3));
            }
        };
        runtime.open("ws://127.0.0.1:9876/ws", handler);
        runtime.open("ws://127.0.0.1:9876/wsx", handler);
        ClientHTTPRequest request = new ClientHTTPRequest("http://127.0.0.1:9876/ws");
        request.setMethod("GET");
        runtime.request(request, new HTTPHandler() {

            @Override
            public void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
                System.out.println("client onHTTPResponse "+ request.getUrl() + "------\n" + dumps(response) + "-----\n");
            }

            @Override
            public void onHTTPInit(HTTPRequest request) {
                System.out.println("client onHTTPInit "+ request.getUrl());
            }

            @Override
            public void onHTTPFinal(HTTPRequest request) {
                System.out.println("client onHTTPFinal "+ request.getUrl());

            }

            @Override
            public void onHTTPError(HTTPRequest request) {
                System.out.println("client onHTTPError "+ request.getUrl());

            }
        });
    }

    protected static String dumps(HTTPResponse response) {
        StringBuilder b = new StringBuilder();
        b.append(response.getCode()).append("\n");
        for (String key : response.getHeaders()) {
            b.append(key).append(": ").append(response.getHeader(key)).append("\n");
        }
        b.append("\n");
        b.append(response.getBody());
        return b.toString();
    }
}
