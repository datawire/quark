quark *;
import quark.concurrent;

//namespace quark {
namespace promises {

    @doc("A callable that takes a single argument, returns result.")
    interface UnaryCallable {
        Object invoke(Object arg);
    }

    // Called when Promise we're waiting on has result, allowing us to hand it
    // over to Promise that is waiting for it:
    class _ChainPromise extends UnaryCallable {
        Promise _next;

        _ChangePromise(Promise next) {
            self._next = next;
        }

        Object invoke(Object arg) {
            _CallbackEvent.fullfilPromise(self._next, arg);
            return null;
        }
    }

    // Actually run a callback's callable, and hand result on to promise that is
    // expecting it:
    class _CallbackEvent extends concurrent.Event {
        UnaryCallable _callable;
        Promise _next;
        Object _value;
        _Callback _callback;

        _CallbackEvent(UnaryCallable callable, Promise next, Object value,
                       _Callback callback) {
            self._callable = callable;
            self._next = next;
            self._value = value;
            self._callback = callback;
        }

        concurrent.EventContext getContext() {
            return ?self._callback;
        }

        static void fullfilPromise(Promise promise, Object value) {
            if (reflect.Class.ERROR.hasInstance(value)) {
                promise._reject(?value);
            } else {
                promise._resolve(value);
            }
        }

        void fireEvent() {
            Object result = self._callable.invoke(self._value);
            if (reflect.Class.get("promises.Promise").hasInstance(result)) {
                // We got a promise as result of callback, so chain it to the
                // promise that we're supposed to be fulfilling:
                Promise toChain = ?result;
                toChain.always(new _ChainPromise(self._next));
            } else {
                self.fullfilPromise(self._next, result);
            }
        }
    }

    // A callback added to a Promise via whenSuccess/whenResult/always.
    // Preserves the context of the caller so it can be used to run the
    // callback's callable when eventually the original Promise gets its value.
    class _Callback extends concurrent.EventContext {
        UnaryCallable _callable;
        Promise _next;

        _Callback(UnaryCallable callable, Promise next) {
            self._callable = callable;
            self._next = next;
        }

        void call(Object result) {
            // Schedule the actual call to the wrapped callable to run in the
            // appropriate context:
            _CallbackEvent event = new _CallbackEvent(self._callable, self._next, result, self);
            self.getContext().collector.put(event);
        }
    }

    class _Passthrough extends UnaryCallable {
        Object invoke(Object arg) {
            return arg;
        }
    }

    // Wrap another UnaryCallable, only call it if the given value is an
    // instance of the specified class.
    class _CallIfIsInstance extends UnaryCallable {
        UnaryCallable _underlying;
        reflect.Class _class;

        _CallIfIsInstance(UnaryCallable underlying, reflect.Class klass) {
            self._underlying = underlying;
            self._class = klass;
        }

        Object invoke(Object arg) {
            if (self._class.hasInstance(arg)) {
                return self._underlying.invoke(arg);
            } else {
                // Just pass through the instance we care about.
                return arg;
            }
        }
    }

    @doc("Snapshot of the value of a Promise, if it has one.")
    class PromiseValue {
        Object _successResult;
        error.Error _failureResult;
        bool _hasValue;

        @doc("Return true if the Promise had a value at the time this was created.")
        bool hasValue() {
            return self._hasValue;
        }

        @doc("Return true if value is error. Result is only valid if hasValue() is true.")
        bool isError() {
            return (self._failureResult != null);
        }

        @doc("Return the value. Result is only valid if hasValue() is true.")
        Object getValue() {
            if (self.isError()) {
                return self._failureResult;
            } else {
                return self._successResult;
            }
        }

        PromiseValue(Object successResult, error.Error failureResult, bool hasValue) {
            self._successResult = successResult;
            self._failureResult = failureResult;
            self._hasValue = hasValue;
        }
    }

    class Promise {
        concurrent.Lock _lock;
        Object _successResult;
        error.Error _failureResult;
        bool _hasResult;
        List<_Callback> _successCallbacks;
        List<_Callback> _failureCallbacks;

        // Private constructor, don't use externally.
        Promise() {
            self._lock = new concurrent.Lock();
            self._hasResult = false;
            self._successResult = null;
            self._failureResult = null;
            self._successCallbacks = [];
            self._failureCallbacks = [];
        }

        void _maybeRunCallbacks() {
            self._lock.acquire();
            if (!self._hasResult) {
                self._lock.release();
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
            if (reflect.Class.ERROR.hasInstance(result)) {
                // Someone called resolve() with an Error:
                self._reject(?result);
                return;
            }
            self._lock.acquire();
            if (self._hasResult) {
                print("BUG: Resolved Promise that already has a value.");
                self._lock.release();
                return;
            }
            self._hasResult = true;
            self._successResult = result;
            self._lock.release();
            self._maybeRunCallbacks();
        }

        void _reject(error.Error err) {
            self._lock.acquire();
            if (self._hasResult) {
                print("BUG: Rejected Promise that already has a value.");
                self._lock.release();
                return;
            }
            self._hasResult = true;
            self._failureResult = err;
            self._lock.release();
            self._maybeRunCallbacks();
        }

        Promise whenSuccess(UnaryCallable callable) {
            Promise result = new Promise();
            self._lock.acquire();
            self._successCallbacks.add(new _Callback(callable, result));
            self._failureCallbacks.add(new _Callback(new _Passthrough(), result));
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        Promise whenError(reflect.Class errorClass, UnaryCallable callable) {
            Promise result = new Promise();
            _Callback callback = new _Callback(new _CallIfIsInstance(callable, errorClass), result);
            self._lock.acquire();
            self._failureCallbacks.add(callback);
            self._successCallbacks.add(new _Callback(new _Passthrough(), result));
            self._lock.release();
            self._maybeRunCallbacks();
            return result;
        }

        Promise always(UnaryCallable callable) {
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
            PromiseValue result = new PromiseValue(self._successResult, self._failureResult,
                                                   self._hasResult);
            self._lock.release();
            return result;
        }
    }

    class PromiseFactory {
        Promise promise = null;

        PromiseFactory() {
            self.promise = new Promise();
        }

        void resolve(Object result) {
            self.promise._resolve(result);
        }

        void reject(Error err) {
            self.promise._reject(err);
       }
    }
}//}
