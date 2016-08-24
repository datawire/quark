quark *;
import quark.test;

// Avoid the _test prefix for the py ffi so py.test doesn't try to
// load it as a test.
include callable_ffi.py;
include callable_ffi_test.js;
include callable_ffi_test.rb;
include callable_ffi_test/FFI.java;

void main(List<String> args) {
    test.run(args);
}

Object smug(UnaryCallable c, Object arg) {
    return c.__call__(arg);
}

class Doubler extends UnaryCallable {

    Object call(Object arg) {
        int x = ?arg;
        return 2*x;
    }

}

macro bool checkFFI()
    $py{callable_ffi.check()}
    $rb{CallableFFI::check()}
    $js{callable_ffi_test.check()}
    $java{callable_ffi_test.FFI.check()};

class CallableTest {

    void testFromQuark() {
        int result = ?smug(new Doubler(), 3);
        checkEqual(6, result);
    }

    void testFromFFI() {
        check(checkFFI(), "native ffi checks");
    }

}
