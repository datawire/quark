quark *;
package hello 1.0.0;
import quark.concurrent;

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
        static float retestDelay = 10.0;

        @doc("Respond to a hello request.")
        Response hello(Request request) {
            // ? operator casts the return value to a Response object
            return ?self.rpc("hello", [request]);
        }

    }

    // FIXME: This class and its uses below are temporary. Please ignore!
    @doc("Class to enable Quark tracing via static instantiation")
    class DoTrace {
        DoTrace() {
            //logging.makeConfig().setLevel("WARN")
            //    .setAppender(logging.file("trace.log")).configure();
            logging.makeConfig().setLevel("WARN").configure();
        }
    }

    @doc("A client adapter for the hello service.")
    class HelloClient extends Client, Hello {
        static DoTrace unused = new DoTrace();  // FIXME: Please ignore this
    }

    @doc("A server adapter for the hello service.")
    class HelloServer extends Server<Hello> {
        static DoTrace unused = new DoTrace();  // FIXME: Please ignore this
    }

}
