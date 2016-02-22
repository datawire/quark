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

	// How long (in seconds) the remote request is given to complete
        static float timeout = 3.0;
	// Number of failed requests before circuit breaker trips
        static int failureLimit = 1;
	// How long (in seconds) before circuit breaker resets
        static float retestDelay = 30.0;

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
