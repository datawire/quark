package callable_ffi_test;

import static test_callable.Functions.*;
import quark.UnaryCallable;

public class FFI {

    public static final boolean check() {
        UnaryCallable doubler = new UnaryCallable() {
                public Object call(Object arg) {
                    return 2*((int) arg);
                }
            };
        return 6 == (int) smug(doubler, 3);
    }

}
