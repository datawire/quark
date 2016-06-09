namespace quark {
namespace promises {

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

    class Promise {
        Object _successResult;
        error.Error _failureResult;
        boolean _hasResult;
        List<_Callback> _successCallbacks;
        List<_Callback> _failureCallbacks;

        Promise() {
            self._hasResult = false;
            self._successResult = null;
            self._failureResult = null;
            self._successCallbacks = [];
            self._failureCallbacks = [];
        }

        void _maybeRunCallbacks() {
            if (!self._hasResult) {
                return;
            }
            List<_Callback> callbacks = self._successCallbacks;
            Object value = self._successResult;
            if (self._failureResult != null) {
                callbacks = self._failureCallbacks;
                value = self._failureResult;
            }
            int idx = 0;
            while (idx < callbacks.size()) {
                callbacks[idx].call(value);
                idx = idx + 1;
            }
            self._failureCallbacks = [];
            self._successCallbacks = [];
        }

        void _resolve(Object result) {
            if (self._hasResult) {
                // XXX indicates bug, log something
                return;
            }
            self._hasResult = true;
            self._successResult = result;
            self._maybeRunCallbacks();
        }

        void _reject(Error err) {
            if (self._hasResult) {
                // XXX indicates bug, log something
                return;
            }
            self._hasResult = true;
            self._failureResult = result;
            self._maybeRunCallbacks();
        }

        Promise then(Callable callable, List<Object> moreArgs) {
            Promise result = new Promise();
            self._successCallbacks.add(new _Callback(callable, result, moreArgs));
            self._failureCallbacks.add(new _Callback(new _Passthrough(), result, []));
            self._maybeRunCallbacks();
            return result;
        }

        Promise catch(reflect.Class errorClass, Callable callable, List<Object> moreArgs) {
            Promise result = new Promise();
            _Callable callback = new _Callback(new _CallIfIsInstance(callable, errorClass), result, moreArgs);
            self._failureCallbacks.add(callback);
            self._successCallbacks.add(new _Callback(new _Passthrough(), result, []));
            self._maybeRunCallbacks();
            return result;
        }

        Promise finally(Callable callback, List<Object> moreArgs) {
            Promise result = new Promise();
            _Callback callback = new _Callback(callable, result, moreArgs);
            self._successCallbacks.add(callback);
            self._failureCallbacks.add(callback);
            self._maybeRunCallbacks();
            return result;
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

}}
