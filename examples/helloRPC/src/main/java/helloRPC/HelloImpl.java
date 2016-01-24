package helloRPC;

import hello.Hello;
import hello.Request;
import hello.Response;

public class HelloImpl extends ServerServiceStub implements Hello {

    @Override
    public Response hello(Request request) {
        Response response = new Response();

        // Uncomment this try block to simulate a long request processing
        // time and force a request timeout to occur for the client.
        // try {
        //   Thread.sleep(5000);
        // }
        // catch(InterruptedException ex) {
        // }

        response.result = "Responding to [" + request.text + "] from Java";
        return response;
    }

}
