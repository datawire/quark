quark *;
import quark.promise;

namespace quark_io {
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
            Context.runtime().request(request, new _IOHTTPHandler(factory));
            return factory.promise;
        }

        @doc("Schedule a callable to run in the future, return Promise with its result.")
        static Promise schedule(UnaryCallable callable, float delayInSeconds) {
            PromiseFactory factory = new PromiseFactory();
            return factory.promise;
        }
    }
        // For websockets:
        // 1. Figure out if all runtimes use same API path
        // 2. Write some toy sample code with proposed API to see if it improves things at all.
}
