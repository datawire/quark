quark *;

/* Used by test_testing.py */

import quark.test;


class FailOrSucceedTest {
    void testSucceed() {
	return;
    }

    void testFail() {
	check(false, "Fail the test, so the test runner has a non-0 exit code.");
    }
}

void main(List<String> args) {
    test.run(args);
}
