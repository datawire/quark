package simpleRPC;

import io.datawire.quark.netty.QuarkNettyRuntime;
import hello.HelloServer;

public class SimpleRPCServer {

    public static void main(String[] args) {
        QuarkNettyRuntime runtime = new QuarkNettyRuntime();
        HelloImpl impl = new HelloImpl();
        HelloServer server = new HelloServer(runtime, impl);
        runtime.serveHTTP("http://127.0.0.1:8888/hello", server);
        runtime.launch();                    // XXX: do we want to promote this
    }
}
