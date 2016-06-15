quark *;
import quark.test;

void main(List<String> args) {
    test.run(args);
}

class PromiseValueTest {
    // No value

    // Success value

    // Error value
}

class PromiseTest {
    // No value on initial creation

    // Value available on _resolve()

    // Value available on _reject()

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
}
