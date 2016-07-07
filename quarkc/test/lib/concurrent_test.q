quark *;

import quark.test;
import quark.concurrent;

void main(List<String> args) {
    test.run(args);
}

class ConcurrentTest {
    // Future.await returns after given timeout if the Future hasn't got a value
    // yet.
    void testAwaitNoResult() {
        if (isJavascript()) {
            return;
        }
        long start = now();
        Future f = new Future();
        f.await(0.5);
        long elapsed = now() - start;
        String elapsedStr = elapsed.toString() + " ms";
        check(elapsed < 750, "Expected elapsed < 750 ms got " + elapsedStr);
        check(elapsed > 400, "Expected elapsed > 400 ms got " + elapsedStr);
    }

    void testSleep() {
        long start = now();
        sleep(0.5);
        long elapsed = now() - start;
        String elapsedStr = elapsed.toString() + " ms";
        check(elapsed < 750, "Expected elapsed < 750 ms got " + elapsedStr);
        check(elapsed > 400, "Expected elapsed > 400 ms got " + elapsedStr);
    }
}
