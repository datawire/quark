quark *;

import quark.test;

void main(List<String> args) {
    test.run(args);
}


@doc("Panic (i.e. raise exception) if blowup is true.")
class BadThingsHappen extends UnaryCallable {
    bool called = false;
    bool afterPanic = false;
    bool blowup;

    BadThingsHappen(bool blowup) {
        self.blowup = blowup;
    }

    Object call(Object ignore) {
        self.called = true;
        if (blowup) {
            panic("BLOW UP!");
        }
        self.afterPanic = true;
        return "success!";
    }
}

class CallSafelyTest {
    @doc("callSafely returns non-exception results.")
    void testCallSafelySuccess() {
        BadThingsHappen bad = new BadThingsHappen(false);
        String result = ?Context.runtime().callSafely(bad, "nope");
        checkEqual(result, "success!");
        checkEqual(bad.called, true);
        checkEqual(bad.afterPanic, true);
    }

    @doc("callSafely catches exceptions, returns default value on error.")
    void testCallSafelyError() {
        BadThingsHappen bad = new BadThingsHappen(true);
        String result = ?Context.runtime().callSafely(bad, "uh oh");
        checkEqual(result, "uh oh");
        checkEqual(bad.called, true);
        checkEqual(bad.afterPanic, false);
    }
}
