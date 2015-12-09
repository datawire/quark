package hello {

    class Request {
        String requestyStuff;
    }

    class Response {
        String responsyStuff;
    }

    interface Hello extends Service {

        @delegate(self.rpc)
        Response hello(Request request);

    }

    class HelloClient extends Client, Hello {}

    class HelloServer extends Server<Hello> {}

}
