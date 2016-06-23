quark *;

namespace quark {
    class _IOScheduleTask extends Task {
        PromiseFactory factory;

        _IOScheduleTask(PromiseFactory factory) {
            self.factory = factory;
        }

        void onExecute(Runtime runtime) {
            self.factory.resolve(true);
        }
    }

    class _IOHTTPHandler extends HTTPHandler {
        PromiseFactory factory;

        _IOHTTPHandler(PromiseFactory factory) {
            self.factory = factory;
        }

        void onHTTPInit(HTTPRequest request) {}
        void onHTTPFinal(HTTPRequest request) {}

        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
            self.factory.resolve(response);
        }
        void onHTTPError(HTTPRequest request, HTTPError message) {
            self.factory.reject(message);
        }
    }

    @doc("Promise-based I/O and scheduling APIs.")
    class IO {
        @doc("Send a HTTP request, get back Promise that gets HTTPResponse or HTTPError result.")
        static Promise httpRequest(HTTPRequest request) {
            PromiseFactory factory = new PromiseFactory();
            concurrent.Context.runtime().request(request, new _IOHTTPHandler(factory));
            return factory.promise;
        }

        @doc("Schedule a callable to run in the future, return Promise with null result.")
        static Promise schedule(float delayInSeconds) {
            PromiseFactory factory = new PromiseFactory();
            concurrent.Context.runtime().schedule(new _IOScheduleTask(factory), delayInSeconds);
            return factory.promise;
        }

        // Might want WebSocket connect API too. Not clear at the moment.
    }
}
