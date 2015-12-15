@version("0.1.0")
package hello {

    class Request {
        String text;
    }

    class Response {
        String result;
    }

    interface Hello extends Service {

        @delegate(self.rpc)
        Response hello(Request request);

    }

    class HelloClient extends Client, Hello {}

    class HelloServer extends Server<Hello> {}

}
