package helloRPC;

import quark.concurrent.FutureWait;
import hello.HelloClient;
import hello.Request;
import hello.Response;

public class HelloRPCClient {
    public static void main(String[] args) {
        // "http://hello.datawire.io/" is the URL of the simple "Hello" cloud
        // microservice run by Datawire, Inc. to serve as a simple first test.
        //
        //  You can test completely locally, too:
        //  - comment out the http://hello.datawire.io line
        //  - uncomment the http://127.0.0.1:8910/hello line
        //  - fire up the local version of the server by following the instructions
        //  in the README.md.
        //
        // HelloClient client = new HelloClient("http://hello.datawire.io/");
        HelloClient client = new HelloClient("http://localhost:8910/hello");

        Request request = new Request();

        if (args.length > 0) {
            request.text = args[0];
        } else {
            request.text = "Hello from Java!";
        }
        System.out.println("Request says: " + request.text);
        Response response = client.hello(request);
        response.await(1.0);
        if (!response.isFinished()) { // Unless we wait indefinitely the response wait can time out so the synchronous caller should still check isFinished()
            System.out.println("No response!");
        } else if (response.getError() != null) {
            System.out.println("Response failed with: " + response.getError());
        } else {
            System.out.println("Response says: " + response.result);
        }
    }
}
