@version("0.1.0")
package hello {

    @doc("A value class for Request data for the hello service.")
    class Request {
        String text;
    }

    @doc("A value class for Response data from the hello service.")
    class Response {
        @doc("A greeting from the hello service.")
        String result;
    }

    @doc("The hello service.")
    interface Hello extends Service {

        @doc("Respond to a hello request.")
        @delegate(self.rpc) // XXX: The "self." in front of rpc is a workaround.
        Response hello(Request request);

    }

    @doc("A client adapter for the hello service.")
    class HelloClient extends Client, Hello {}

    @doc("A server adapter for the hello service.")
    class HelloServer extends Server<Hello> {}

}
