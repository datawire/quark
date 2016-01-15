package helloRPC;

import hello.HelloServer;

public class HelloRPCServer {

    public static void main(String[] args) {
        HelloImpl impl = new HelloImpl();
        HelloServer server = new HelloServer(impl);
        server.serve("http://127.0.0.1:8910/hello");
    }
}
