quark *;
import quark.test;
import quark.promises;
import quark.error;
import quark.reflect;

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

class PromiseTest {
    void spinCollector() {
        // Wait for the collector to run out of events:
        while (!Context.current().collector.idle) {}
    }

    static String VALUE = "success!";

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

    // Success value becomes available when a resolve() is done before a
    // callback is added.
    void testSuccessValueCallbackBefore() {
        PromiseFactory f = new PromiseFactory();
        Promise p = f.promise;
        f.resolve(?VALUE);
        spinCollector();
        StoreValue success = new StoreValue();
        StoreValue failure = new StoreValue();
        StoreValue both = new StoreValue();
        p.whenSuccess(success);
        p.whenError(Class.ERROR, failure);
        p.always(both);
        spinCollector();
        checkEqual(true, success.called);
        checkEqual(VALUE, success.result);
        checkEqual(false, failure.called);
        checkEqual(true, both.called);
        checkEqual(VALUE, both.result);
        checkEqual(true, p.value().hasValue());
        checkEqual(VALUE, p.value().getValue());
    }

    // Success value becomes available when a resolve() is done after a
    // callback is added.
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
        f.resolve(?VALUE);
        spinCollector();
        checkEqual(true, success.called);
        checkEqual(VALUE, success.result);
        checkEqual(false, failure.called);
        checkEqual(true, both.called);
        checkEqual(VALUE, both.result);
        checkEqual(true, p.value().hasValue());
        checkEqual(VALUE, p.value().getValue());
    }

    // Error value becomes available when a resolve() is done before a
    // callback is added.

    // Error value becomes available when a resolve() is done after a
    // callback is added.


    // Success callback on error value is skipped

    // Error callback on success value is skipped

    // Either-way callback on error value is called

    // Either-way callback on success value is called

    // Multiple success results from single Promise

    // Multiple error results from single Promise

    // Re-entrancy: callback registered inside success callback is called

    // Re-entrancy: callback registered inside error callback is called

    // Re-entrancy: callback registered inside either-way callback is called

    // Success callback returning error switches to error path

    // Error callback returning not-error switches to success path

    // Callback returning promise is chained on success path

    // Callback returning promise is chained on error path

    // Context is preserved on creation of callbacks
}
