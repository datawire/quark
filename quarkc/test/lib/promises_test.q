quark *;
import quark.test;
import quark.error;
import quark.reflect;
import quark.promise;


void main(List<String> args) {
    test.run(args);
}

class PromiseValueTest {
    void testNoValue() {
        PromiseValue value = new PromiseValue(null, null, false);
        checkEqual(false, value.hasValue());
    }

    void testSuccessValue() {
        PromiseValue value = new PromiseValue("hello", null, true);
        checkEqual(true, value.hasValue());
        checkEqual(false, value.isError());
        checkEqual("hello", value.getValue());
    }

    void testErrorValue() {
        Error e = new Error("e");
        PromiseValue value = new PromiseValue(null, e, true);
        checkEqual(true, value.hasValue());
        checkEqual(true, value.isError());
        checkEqual(e, value.getValue());
    }
}

class StoreValue extends UnaryCallable {
    Object result = null;
    bool called = false;

    Object invoke(Object arg) {
        self.result = arg;
        self.called = true;
        return null;
    }
}

class ReturnValue extends UnaryCallable {
    Object returnme;

    ReturnValue(Object returnme) {
        self.returnme = returnme;
    }

    Object invoke(Object arg) {
        return self.returnme;
    }
}

class StoreContext extends UnaryCallable {
    Context recorded = null;

    Object invoke(Object arg) {
        self.recorded = Context.current();
        return true;
    }
}

class PromiseTest {
    void spinCollector() {
        // Wait for the collector to run out of events:
        while (!Context.current().collector.idle) {}
    }

    static String theValue = "success!";
    static error.Error theError = new Error("err");

    // No value on initial creation
    void testNoValue() {
        Promise p = new PromiseFactory().promise;
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        StoreValue both = new StoreValue();
        p.whenSuccess(success);
        p.whenError(Class.ERROR, failure);
        p.always(both);
        spinCollector();
        checkEqual(false, success.called);
        checkEqual(false, failure.called);
        checkEqual(false, both.called);
        checkEqual(false, p.value().hasValue());
    }

    // Success value becomes available to success callback and either-way
    // callback when a resolve() is done before a callback is added.
    void testSuccessValueCallbackBefore() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        f.resolve(?theValue);
        spinCollector();
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        StoreValue both = new StoreValue();
        p.whenSuccess(success);
        p.whenError(Class.ERROR, failure);
        p.always(both);
        spinCollector();
        checkEqual(true, success.called);
        checkEqual(theValue, success.result);
        checkEqual(false, failure.called);
        checkEqual(true, both.called);
        checkEqual(theValue, both.result);
        checkEqual(true, p.value().hasValue());
        checkEqual(theValue, p.value().getValue());
    }

    // Success value becomes available to success callback and either-way
    // callback when a resolve() is done after a callback is added.
    void testSuccessValueCallbackAfter() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        StoreValue both = new StoreValue();
        p.whenSuccess(success);
        p.whenError(Class.ERROR, failure);
        p.always(both);
        spinCollector();
        f.resolve(?theValue);
        spinCollector();
        checkEqual(true, success.called);
        checkEqual(theValue, success.result);
        checkEqual(false, failure.called);
        checkEqual(true, both.called);
        checkEqual(theValue, both.result);
        checkEqual(true, p.value().hasValue());
        checkEqual(theValue, p.value().getValue());
    }

    // Error value becomes available to error callback and either-way callback
    // when a resolve() is done before a callback is added.
    void testErrorValueCallbackBefore() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        f.reject(?theError);
        spinCollector();
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        StoreValue both = new StoreValue();
        p.whenSuccess(success);
        p.whenError(Class.ERROR, failure);
        p.always(both);
        spinCollector();
        checkEqual(false, success.called);
        checkEqual(true, failure.called);
        checkEqual(theError, failure.result);
        checkEqual(true, both.called);
        checkEqual(theError, both.result);
        checkEqual(true, p.value().hasValue());
        checkEqual(theError, p.value().getValue());
    }

    // Error value becomes available to error callback and either-way callback
    // when a resolve() is done after a callback is added.
    void testErrorValueCallbackAfter() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        StoreValue both = new StoreValue();
        p.whenSuccess(success);
        p.whenError(Class.ERROR, failure);
        p.always(both);
        spinCollector();
        f.reject(theError);
        spinCollector();
        checkEqual(false, success.called);
        checkEqual(true, failure.called);
        checkEqual(theError, failure.result);
        checkEqual(true, both.called);
        checkEqual(theError, both.result);
        checkEqual(true, p.value().hasValue());
        checkEqual(theError, p.value().getValue());
    }

    // whenError only catches errors that are instances of given class.
    void testErrorFiltering() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        HTTPError err = new HTTPError("ONO");
        f.reject(err);
        spinCollector();
        StoreValue failure = new StoreValue();
        StoreValue httpFailure = new StoreValue();
        StoreValue servletFailure = new StoreValue();
        p.whenError(Class.ERROR, failure);
        p.whenError(Class.get("quark.HTTPError"), httpFailure);
        p.whenError(Class.get("quark.ServletError"), servletFailure);
        spinCollector();
        checkEqual(true, failure.called);
        checkEqual(err, failure.result);
        checkEqual(true, httpFailure.called);
        checkEqual(err, httpFailure.result);
        checkEqual(false, servletFailure.called);
    }

    // Success callback passes through error values:
    void testErrorPassthrough() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        f.reject(theError);
        spinCollector();
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        p.whenSuccess(success).whenError(Class.ERROR, failure);
        spinCollector();
        checkEqual(false, success.called);
        checkEqual(true, failure.called);
        checkEqual(theError, failure.result);
    }

    // Error callback passes through success values:
    void testSuccessPassthrough() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        p.whenError(Class.ERROR, failure).whenSuccess(success);
        f.resolve(theValue);
        spinCollector();
        checkEqual(false, failure.called);
        checkEqual(true, success.called);
        checkEqual(theValue, success.result);
    }

    // Success callback returning error switches to error path
    void testSuccessReturningError() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        StoreValue failure = new StoreValue();
        p.whenSuccess(new ReturnValue(theError)).whenError(Class.ERROR, failure);
        f.resolve(theValue);
        spinCollector();
        checkEqual(true, failure.called);
        checkEqual(theError, failure.result);
    }

    // Calling resolve() with an error turns it into a reject():
    // (Made this mistake myself... seems most reasonable thing to do).
    void testResolveWithErrorDoesReject() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        StoreValue failure = new StoreValue();
        p.whenError(Class.ERROR, failure);
        f.resolve(theError); // resolve() not reject()!
        spinCollector();
        checkEqual(true, failure.called);
        checkEqual(theError, failure.result);
    }

    // Error callback returning not-error switches to success path
    void testErrorReturningSuccess() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        StoreValue success = new StoreValue();
        p.whenError(Class.ERROR, new ReturnValue(theValue)).whenSuccess(success);
        f.reject(theError);
        spinCollector();
        checkEqual(true, success.called);
        checkEqual(theValue, success.result);
    }

    // Callback returning value-less promise is chained on success path when the
    // promise is resolved.
    void testCallbackReturningUnresolvedPromiseSuccess() {
        PromiseFactory f = new PromiseFactory();
        PromiseFactory o = new PromiseFactory();
        Promise p = f.promise;
        StoreValue success = new StoreValue();
        p.whenSuccess(new ReturnValue(o.promise)).whenSuccess(success);
        f.resolve(123);
        spinCollector();
        checkEqual(false, success.called);
        o.resolve(456);
        spinCollector();
        checkEqual(true, success.called);
        checkEqual(456, success.result);
    }

    // Callback returning promise with value is chained on success path when the
    // promise is resolved.
    void testCallbackReturningResolvedPromiseSuccess() {
        PromiseFactory f = new PromiseFactory();
        PromiseFactory o = new PromiseFactory();
        o.resolve(456);
        Promise p = f.promise;
        StoreValue success = new StoreValue();
        p.whenSuccess(new ReturnValue(o.promise)).whenSuccess(success);
        f.resolve(123);
        spinCollector();
        checkEqual(true, success.called);
        checkEqual(456, success.result);
    }

    // Callback returning value-less promise is chained on error path when the
    // promise is rejected.
    void testCallbackReturningUnresolvedPromiseError() {
        PromiseFactory f = new PromiseFactory();
        PromiseFactory o = new PromiseFactory();
        Promise p = f.promise;
        StoreValue failure = new StoreValue();
        p.whenSuccess(new ReturnValue(o.promise)).whenError(Class.ERROR, failure);
        f.resolve(123);
        spinCollector();
        checkEqual(false, failure.called);
        o.reject(theError);
        spinCollector();
        checkEqual(true, failure.called);
        checkEqual(theError, failure.result);
    }

    // Callback returning promise with value is chained on error path when the
    // promise is rejected.
    void testCallbackReturningResolvedPromiseError() {
        PromiseFactory f = new PromiseFactory();
        PromiseFactory o = new PromiseFactory();
        o.reject(theError);
        Promise p = f.promise;
        StoreValue failure = new StoreValue();
        p.whenSuccess(new ReturnValue(o.promise)).whenError(Class.ERROR, failure);
        f.resolve(123);
        spinCollector();
        checkEqual(true, failure.called);
        checkEqual(theError, failure.result);
    }

    // Context of whoever added the callback is used when running the callback.
    void testContextPreserved() {
        Context original = Context.current();
        Context customContext = new Context(original);
        PromiseFactory f = new PromiseFactory();
        StoreContext store = new StoreContext();

        // Add callback with custom context:
        Context.swap(customContext);
        f.promise.whenSuccess(store);

        // Restore the context:
        Context.swap(original);

        // Resolve:
        f.resolve(123);
        spinCollector();

        checkEqual(customContext, store.recorded);
        checkEqual(original, Context.current());
    }

    // Nice to have tests but unlikely use cases:
    // Re-entrancy: callback registered inside error callback is called
    // Re-entrancy: callback registered inside either-way callback is called
    // Re-entrancy: callback registered inside success callback is called
}
