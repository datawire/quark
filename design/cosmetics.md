This is what hello world RPC currently looks like:

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
            @delegate(self.rpc, {"timeout": 3000})
            Response hello(Request request);

        }

        @doc("A client adapter for the hello service.")
        class HelloClient extends Client, Hello {}

        @doc("A server adapter for the hello service.")
        class HelloServer extends Server<Hello> {}

    }   

It provokes a number of questions:
 - Why do I have to explicitly declare the client/server stubs?
 - What's up with this @delegate(self.rpc, ...) thing?


It would be good to de-smell this into something more paletable, e.g.:

    package hello {

        class Request {
            String foo;
            List<String> bar;
            ...
        }

        class Response {...}

        @service(url="...")
        interface Hello {
            @rpc(timeout=3000)
            Response hello(Request request);
        }

    }
