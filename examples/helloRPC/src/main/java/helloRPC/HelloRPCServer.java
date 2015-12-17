package helloRPC;

import io.datawire.quark.netty.QuarkNettyRuntime;
import hello.HelloServer;

public class HelloRPCServer {

    public static void main(String[] args) {
        QuarkNettyRuntime runtime = new QuarkNettyRuntime();
        HelloImpl impl = new HelloImpl();
        HelloServer server = new HelloServer(runtime, impl);
        runtime.serveHTTP("http://127.0.0.1:8910/hello", server);
    }
}
