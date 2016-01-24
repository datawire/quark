package helloRPC;

import hello.HelloClient;
import hello.Request;
import hello.Response;
import io.datawire.quark.netty.QuarkNettyRuntime;

public class HelloRPCClient {
    public static void main(String[] args) {
        QuarkNettyRuntime runtime = QuarkNettyRuntime.getRuntime();
        runtime.setAllowSync(true);

        // "http://hello.datawire.io/" is the URL of the simple "Hello" cloud
        // microservice run by Datawire, Inc. to serve as a simple first test.
        //
        //  You can test completely locally, too:
        //  - comment out the http://hello.datawire.io line
        //  - uncomment the http://127.0.0.1:8910/hello line
        //  - fire up the local version of the server by following the instructions
        //  in the README.md.
        //
        HelloClient client = new HelloClient(runtime, "http://hello.datawire.io/");
        // HelloClient client = new HelloClient(runtime, "http://localhost:8910/hello");

        Request request = new Request();

        if (args.length > 0) {
            request.text = args[0];
        } else {
            request.text = "Hello from Java!";
        }
        System.out.println("Request says: " + request.text);
        Response response = client.hello(request);
        if (response == null) {
            System.out.println("No response!");
        } else {
            System.out.println("Response says: " + response.result);
        }
    }
}
