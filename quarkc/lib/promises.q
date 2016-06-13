quark *;
include io/datawire/quark/runtime/Lock.java;

namespace quark {
namespace promises {

    // XXX in real imlpementation instead of calling self.next._reject/_resolve
    // directly this should be scheduled via a Collector in order to ensure
    // thread-safety.
    class _Callback {
        Callable _callable;
        Promise _next;
        List<Object> _extraArgs;

        _Callback(Callable callable, Promise<Object> next, List<Object> extraArgs) {
            self._callable = callable;
            self._next = next;
            self._extraArgs = extraArgs;
        }

        void call(Object arg) {
            List<Object> args = self._extraArgs.slice(0, self._extraArgs.size());
            args.insert(0, arg);
            Object result = self.callable.invoke(args);
            if (reflect.Class.ERROR.isinstance(result)) {
                self.next._reject(result);
            } else {
                self.next._resolve(result);
            }
        }
    }

    class _Passthrough extends Callable {
        Object invoke(List<Object> args) {
            return args[0];
        }
    }

    class _CallIfIsInstance extends Callable {
        Callable _underlying;
        reflect.Class _class;

        _CallIfIsInstance(Callable underlying, reflect.Class klass) {
            self._underlying = underlying;
            self._class = klass;
        }

        Object invoke(List<Object> args) {
            if (self._class.isinstance(args[0])) {
                return self._underlying.invoke(args);
            } else {
                // Just pass through the instance we care about.
                return args[0];
            }
        }
    }

    class PromiseValue {
        Object successResult;
        error.Error failureResult;
        boolean _hasResult;

        boolean isError() {
            return self.failureResult != null;
        }

        boolean isAvailable() {
            return self.hasResult;
        }

        PromiseValue(Object successResult, error.Error failureResult, boolean hasResult) {
            self.successResult = successResult;
            self.failureResult = failureResult;
            self.hasResult = hasResult;
        }
    }

    class Promise extends concurrent.EventContext {
        Lock _lock;
        Object _successResult;
        error.Error _failureResult;
        boolean _hasResult;
        List<_Callback> _successCallbacks;
        List<_Callback> _failureCallbacks;

        Promise() {
            self._lock = new Lock();
            self._hasResult = false;
            self._successResult = null;
            self._failureResult = null;
            self._successCallbacks = [];
            self._failureCallbacks = [];
        }

        void _maybeRunCallbacks() {
            self._lock.acquire();
            if (!self._hasResult) {
                return;
            }
            List<_Callback> callbacks = self._successCallbacks;
            Object value = self._successResult;
            if (self._failureResult != null) {
                callbacks = self._failureCallbacks;
                value = self._failureResult;
            }
            self._failureCallbacks = [];
            self._successCallbacks = [];
            self._lock.release();

            // XXX in real imlpementation instead of calling call()
            // directly this should be scheduled via a Collector in order to ensure
            // thread-safety.
            int idx = 0;
            while (idx < callbacks.size()) {
                callbacks[idx].call(value);
                idx = idx + 1;
            }
        }

        void _resolve(Object result) {
            self._lock.acquire();
            if (self._hasResult) {
                // XXX indicates bug, log something
                self._lock.release();
                return;
            }
            self._hasResult = true;
            self._successResult = result;
            self._lock.release();
            self._maybeRunCallbacks();
        }

        void _reject(Error err) {
            self._lock.acquire();
            if (self._hasResult) {
                // XXX indicates bug, log something
                return;
            }
            self._hasResult = true;
            self._failureResult = result;
            self._lock.release();
            self._maybeRunCallbacks();
        }

        Promise then(Callable callable, List<Object> moreArgs) {
            Promise result = new Promise();
            self._lock.acquire();
            self._successCallbacks.add(new _Callback(callable, result, moreArgs));
            self._failureCallbacks.add(new _Callback(new _Passthrough(), result, []));
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        Promise catch(reflect.Class errorClass, Callable callable, List<Object> moreArgs) {
            Promise result = new Promise();
            _Callable callback = new _Callback(new _CallIfIsInstance(callable, errorClass), result, moreArgs);
            self._lock.acquire();
            self._failureCallbacks.add(callback);
            self._successCallbacks.add(new _Callback(new _Passthrough(), result, []));
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        Promise finally(Callable callback, List<Object> moreArgs) {
            Promise result = new Promise();
            _Callback callback = new _Callback(callable, result, moreArgs);
            self._lock.acquire();
            self._successCallbacks.add(callback);
            self._failureCallbacks.add(callback);
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        PromiseValue value() {
            self._lock.acquire();
            PromiseValue result = PromiseValue(self._successResult, self._failureResult,
                                               self._hasResult);
            self._lock.release();
            return result;
        }

        @doc("Wait until timeout is hit or Promise gets a value. Note that this can block, unlike other Promise methods.")
        PromiseValue waitFor(float timeout) {
            // XXX Sleep until timeout is hit or _reject/_resolve are called, then:
            return self.value();
        }
    }

    class Deferred {
        Promise promise;

        Deferred() {
            self.promise = new Promise();
        }

        void resolve(Object result) {
            self.promise._resolve(result);
        }

        void reject(Error err) {
            self.promise._reject(err);
        }
    }

    class _HTTPHandler extends HTTPHandler {
        Deferred result;

        HTTPHandler() {
            self.result = new Deferred();
        }

        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
            self._result.resolve(response);
        }

        void onHTTPError(HTTPRequest request, HTTPError error) {
            self._result.reject(error);
        }
    }

    class IO {
        @doc("Return a Promise that will get a HTTPResponse value or HTTPError")
        static Promise httpRequest(Runtime runtime, HTTPRequest request) {
            handler = new _HTTPHandler();
            runtime.request(request, handler);
            return handler.result.promise;
        }

        // Likewise have similar methods for WebSocket connect. Note that
        // promises don't work really well for streaming results, so WebSocket
        // messages would ahve to be handled by a different API... say a
        // SimplerWSHandler that only has onWSMessage.
        // @doc("Return a Promise that will get a WebSocket when connected.")
        // static Promise wsOpen(Runtime runtime, String wsurl, SimplerWSHandler handler);
    }


    // This is just a very sketchy example of using the above:
    class Example {
        Promise getWithDefault(Runtime runtime, String url, String defaultResult) {
            List<Object> default = [];
            default.add(defaultResult);
            return IO.httpRequest(runtime, new HTTPRequest(url)
                                  ).then(reflect.bind(self, "_handleResponse"), []
                                  ).catch(HTTPError, reflect.bind(self, "_handleError"), default);
        }

        String _handleResponse(HTTPResponse response) {
            return response.text;
        }

        String _handleError(HTTPError error, String default) {
            log(error);
            return default;
        }
    }
}}
