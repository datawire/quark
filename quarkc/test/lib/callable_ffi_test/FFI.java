package callable_ffi_test;

import static test_callable.Functions.*;
import quark.Callable;

public class FFI {

    public static final boolean check() {
        Callable doubler = new Callable() {
                public Object doit(Object arg) {
                    return 2*((int) arg);
                }
            };
        return 6 == (int) smug(doubler, 3);
    }

}
