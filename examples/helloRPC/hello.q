@version("0.1.0")
package hello {

    @doc("A value class for Request data for the hello service.")
    class Request {
        String text;
    }

    @doc("A value class for Response data from the hello service.")
    class Response extends quarkrt.concurrent.Future {
        @doc("A greeting from the hello service.")
        String result;
    }

    @doc("The hello service.")
    interface Hello extends quarkrt.Service {

        @doc("Respond to a hello request.")
        @delegate(self.rpc, {"timeout": 3000})
        Response hello(Request request);

    }

    @doc("A client adapter for the hello service.")
    class HelloClient extends quarkrt.Client, Hello {}

    @doc("A server adapter for the hello service.")
    class HelloServer extends quarkrt.Server<Hello> {}

}
