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
        long start = now();
        Future f = new Future();
        f.await(0.125);
        long elapsed = now() - start;
        check(elapsed < 200, "Returned too late.");
        check(elapsed > 60, "Returned too early.");
    }
}
