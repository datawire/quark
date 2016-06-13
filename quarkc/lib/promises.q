quark *;
include io/datawire/quark/runtime/Lock.java;

namespace quark {
namespace promises {

    class _ChainPromise extends Callable {
        Promise _next;

        _ChangePromise(Promise next) {
            self._next = next;
        }

        Object invoke(List<object> args) {
            _Callback.fullfilPromise(self.next, args[0]);
        }
    }

    // XXX in real imlpementation instead of calling this directly in
    // Promise._maybeRunCallbacks this should be scheduled via a Collector in
    // order to ensure thread-safety.
    class _Callback {
        Callable _callable;
        Promise _next;
        List<Object> _extraArgs;

        _Callback(Callable callable, Promise next, List<Object> extraArgs) {
            self._callable = callable;
            self._next = next;
            self._extraArgs = extraArgs;
        }

        static void fullfilPromise(Promise promise, Object result) {
            if (reflect.Class.ERROR.isinstance(result)) {
                promise._reject(result);
            } else {
                promise._resolve(result);
            }
        }

        void call(Object arg) {
            List<Object> args = self._extraArgs.slice(0, self._extraArgs.size());
            args.insert(0, arg);
            Object result = self.callable.invoke(args);
            if (reflect.Class.get("quark.promises.Promise").isinstance(result)) {
                // We got a promise as result of callback, so chain it to the
                // promise that we're supposed to be fulfilling:
                Promise toChain = result;
                result.then(new _ChainPromise(self.next));
            } else {
                self.fullfilPromise(self.next, result);
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

    class Maybe<T> {
        T successResult;
        error.Error failureResult;

        boolean isError() {
            return self.failureResult != null;
        }

        Maybe<T>(Object successResult, error.Error failureResult, boolean hasResult) {
            self.successResult = successResult;
            self.failureResult = failureResult;
        }
    }

    class Promise extends concurrent.EventContext {
        Lock _lock;
        Object _successResult;
        error.Error _failureResult;
        boolean _hasResult;
        List<_Callback> _successCallbacks;
        List<_Callback> _failureCallbacks;

        // Private constructor, don't use externally.
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

        // Conflicts with Java keyword
        IPromise catch(reflect.Class errorClass, Callable callable, List<Object> moreArgs) {
            Promise result = new Promise();
            _Callable callback = new _Callback(new _CallIfIsInstance(callable, errorClass), result, moreArgs);
            self._lock.acquire();
            self._failureCallbacks.add(callback);
            self._successCallbacks.add(new _Callback(new _Passthrough(), result, []));
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        // Conflicts with Java keyword
        IPromise finally(Callable callback, List<Object> moreArgs) {
            Promise result = new Promise();
            _Callback callback = new _Callback(callable, result, moreArgs);
            self._lock.acquire();
            self._successCallbacks.add(callback);
            self._failureCallbacks.add(callback);
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }


        @doc("Synchronous extraction of the promise's current value, if it has any.")
        Maybe<Object> value() {
            self._lock.acquire();
            Maybe<Object> result = new Maybe<Object>(self._successResult, self._failureResult,
                                                     self._hasResult);
            self._lock.release();
            return result;
        }

        @doc("Wait until timeout is hit or Promise gets a value. Note that this can block, unlike other Promise methods.")
        Maybe<Object> waitFor(float timeout) {
            // XXX Sleep until timeout is hit or _reject/_resolve are called, then:
            return self.value();
        }
    }

    // XXX Choose better name
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
        Promise getWithDefault(String url, String defaultResult) {
            List<Object> default = [];
            default.add(defaultResult);
            return IO.httpRequest(Context.get().runtime, new HTTPRequest(url)
                                  ).then(reflect.bind(self, "_handleResponse"), []
                                  ).catch(HTTPError, reflect.bind(self, "_handleError"), default);
        }

        Maybe<String> syncGetWithDefault(String url, String defaultResult) {
            return ? getWithDefault(url, defaultResult)).waitFor(5.0);
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
