package hello_server;

import io.datawire.quark.netty.QuarkNettyRuntime;

public class HelloServer {
    public static void main(String[] args) throws Exception {
        QuarkNettyRuntime runtime = new QuarkNettyRuntime();
        HelloServlet server = new HelloServlet();
        runtime.serveHTTP("http://127.0.0.1:9876/foo", server);
        runtime.serveHTTP("http://127.0.0.1:0/foo", server);
        runtime.serveHTTP("http://127.0.0.1/foo", server);
        runtime.launch();
    }
}
