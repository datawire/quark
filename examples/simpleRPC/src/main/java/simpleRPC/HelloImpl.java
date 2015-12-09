package simpleRPC;

import hello.Hello;
import hello.Request;
import hello.Response;

public class HelloImpl extends ServerServiceStub implements Hello {

    @Override
    public Response hello(Request request) {
        Response response = new Response();
        response.responsyStuff = "in response to " + request.requestyStuff;
        return response;
    }

}
