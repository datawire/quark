package helloRPC;

import hello.HelloClient;
import hello.Request;
import hello.Response;
import io.datawire.quark.netty.QuarkNettyRuntime;

public class HelloRPCClient {
    public static void main(String[] args) {
        QuarkNettyRuntime runtime = QuarkNettyRuntime.getRuntime();
        runtime.setAllowSync(true);
        HelloClient client = new HelloClient(runtime, "http://localhost:8910/hello");
        Request request = new Request();
        request.text = "Hello from Java!";
        System.out.println("Request says: " + request.text);
        Response response = client.hello(request);
        if (response == null) {
            System.out.println("No response!");
        } else {
            System.out.println("Response says: " + response.result);
        }
    }
}
