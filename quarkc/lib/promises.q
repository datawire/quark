quark *;
include io/datawire/quark/runtime/Lock.java;

namespace quark {
namespace promises {

    @doc("A callable that takes a single argument, returns result.")
    interface UnaryCallable {
      Object invoke(Object arg);
    }

    class _ChainPromise extends UnaryCallable {
        Promise _next;

        _ChangePromise(Promise next) {
            self._next = next;
        }

        Object invoke(Object arg) {
            _Callback.fullfilPromise(self.next, arg);
        }
    }

    // XXX in real imlpementation instead of calling this directly in
    // Promise._maybeRunCallbacks this should be scheduled via a Collector in
    // order to ensure thread-safety.
    class _Callback {
        UnaryCallable _callable;
        Promise _next;

        _Callback(UnaryCallable callable, Promise next) {
            self._callable = callable;
            self._next = next;
        }

        static void fullfilPromise(Promise promise, Object result) {
            if (reflect.Class.ERROR.isinstance(result)) {
                promise._reject(result);
            } else {
                promise._resolve(result);
            }
        }

        void call(Object arg) {
            Object result = self.callable.invoke(arg);
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

    class _Passthrough extends UnaryCallable {
        Object invoke(Object arg) {
            return arg;
        }
    }

    class _CallIfIsInstance extends UnaryCallable {
        UnaryCallable _underlying;
        reflect.Class _class;

        _CallIfIsInstance(UnaryCallable underlying, reflect.Class klass) {
            self._underlying = underlying;
            self._class = klass;
        }

        Object invoke(Object arg) {
            if (self._class.isinstance(arg)) {
                return self._underlying.invoke(arg);
            } else {
                // Just pass through the instance we care about.
                return arg];
            }
        }
    }

    class PromiseValue {
        Object successResult;
        error.Error failureResult;

        boolean isError() {
            return self.failureResult != null;
        }

        PromiseValue(Object successResult, error.Error failureResult, boolean hasResult) {
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

        Promise then(UnaryCallable callable) {
            Promise result = new Promise();
            self._lock.acquire();
            self._successCallbacks.add(new _Callback(callable, result));
            self._failureCallbacks.add(new _Callback(new _Passthrough(), result));
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        // Conflicts with Java keyword
        Promise catch(reflect.Class errorClass, UnaryCallable callable) {
            Promise result = new Promise();
            _UnaryCallable callback = new _Callback(new _CallIfIsInstance(callable, errorClass), result);
            self._lock.acquire();
            self._failureCallbacks.add(callback);
            self._successCallbacks.add(new _Callback(new _Passthrough(), result));
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        // Conflicts with Java keyword
        Promise finally(UnaryCallable callable) {
            Promise result = new Promise();
            _Callback callback = new _Callback(callable, result);
            self._lock.acquire();
            self._successCallbacks.add(callback);
            self._failureCallbacks.add(callback);
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }


        @doc("Synchronous extraction of the promise's current value, if it has any.")
        PromiseValue value() {
            self._lock.acquire();
            PromiseValueresult = new PromiseValue(self._successResult, self._failureResult,
                                                  self._hasResult);
            self._lock.release();
            return result;
        }
    }

    // We'll want to implement this if we end up needing to make Promises
    // outside of built-in operations like HTTP queries:
    //class PromiseFactory {
    //    Promise promise;
    //
    //    Deferred() {
    //        self.promise = new Promise();
    //    }
    //
    //    void resolve(Object result) {
    //        self.promise._resolve(result);
    //    }
    //
    //    void reject(Error err) {
    //        self.promise._reject(err);
    //    }
    //}
}}
