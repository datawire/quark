package hello 1.2.3;
import builtin.concurrent;

namespace hello {

    @doc("A value class for Request data for the hello service.")
    class Request {
        String text;
    }

    @doc("A value class for Response data from the hello service.")
    // The RPC call immediately returns a Future object
    // that can be processed by a listener
    class Response extends Future {
        @doc("A greeting from the hello service.")
        String result;
    }

    @doc("The hello service.")
    interface Hello extends Service {

        static int timeout = 3000;

        @doc("Respond to a hello request.")
        Response hello(Request request) {
	    // ? operator casts the return value to a Response object
            return ?self.rpc("hello", [request]);
        }

    }

    @doc("A client adapter for the hello service.")
    class HelloClient extends Client, Hello {}

    @doc("A server adapter for the hello service.")
    class HelloServer extends Server<Hello> {}

}
