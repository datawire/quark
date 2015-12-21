package helloRPC;

import hello.Hello;
import hello.Request;
import hello.Response;

public class HelloImpl extends ServerServiceStub implements Hello {

    @Override
    public Response hello(Request request) {
        Response response = new Response();
        response.result = "Responding to [" + request.text + "] from Java";
        return response;
    }

}
