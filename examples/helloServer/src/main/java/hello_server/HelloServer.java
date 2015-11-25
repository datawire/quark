package hello_server;

import io.datawire.quark.netty.QuarkNettyRuntime;

public class HelloServer {
    public static void main(String[] args) throws Exception {
        QuarkNettyRuntime runtime = new QuarkNettyRuntime();
        HelloServlet server = new HelloServlet();
        runtime.serveHTTP("http://localhost:8765/foo", server);
        runtime.serveHTTP("http://0.0.0.0:0/foo", server);
        runtime.launch();
    }
}
