package ipify {

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

        void onInit(HTTPRequest req) {}

        void onError(HTTPRequest req) {}

        void onResponse(HTTPRequest req, HTTPResponse resp) {
            self.callback.consume(resp.getBody());
        }

        void onFinal(HTTPRequest req) {}
    }

}
