namespace ipify {

    interface IPConsumer {
        void consume(String ip);
    }

    class MyExternalIP extends HTTPHandler {

        Runtime runtime;
        IPConsumer callback;

        MyExternalIP(Runtime runtime, IPConsumer callback) {
            self.runtime = runtime;
            self.callback = callback;
            self.runtime.request(new HTTPRequest("https://api.ipify.org/"), self);
        }

        void onHTTPError(HTTPRequest req, String message) {
            print("HTTP Request Error: " + message);
        }

        void onHTTPResponse(HTTPRequest req, HTTPResponse resp) {
            self.callback.consume(resp.getBody());
        }
    }

}
