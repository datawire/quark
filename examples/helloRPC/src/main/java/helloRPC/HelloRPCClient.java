package helloRPC;

import quarkrt.concurrent.FutureWait;
import hello.HelloClient;
import hello.Request;
import hello.Response;

public class HelloRPCClient {
    public static void main(String[] args) {
        HelloClient client = new HelloClient("http://localhost:8910/hello");
        Request request = new Request();
        request.text = "Hello from Java!";
        System.out.println("Request says: " + request.text);
        Response response = client.hello(request);
        new FutureWait().wait(response, Long.valueOf(1000)); // XXX: this can go away once we figure out synchronous configuration API
        if (!response.isFinished()) { // XXX: unless we wait indefinitely the response wait can time out so the synchronous caller should still check isFinished()
            System.out.println("No response!");
        } else if (response.getError() != null) {
            System.out.println("Response failed with: " + response.getError());
        } else {
            System.out.println("Response says: " + response.result);
        }
    }
}
