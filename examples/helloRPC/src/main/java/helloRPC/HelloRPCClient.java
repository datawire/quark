package helloRPC;

import hello.HelloClient;
import hello.Request;
import hello.Response;
import io.datawire.quark.netty.QuarkNettyRuntime;

public class HelloRPCClient {
    public static void main(String[] args) {
        QuarkNettyRuntime runtime = new QuarkNettyRuntime();
        runtime.setAllowSync(true);
        HelloClient client = new HelloClient(runtime, "http://localhost:8910/hello");
        Request request = new Request();
        request.text = "hello? world?";
        Response response = client.hello(request);
        System.out.println(response.result);
    }
}
