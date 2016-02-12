package logme_lib;

public class Functions {
    public static void main() {
        io.datawire.quark.runtime.Logger l = (builtin.concurrent.Context.runtime()).logger("logme");
        (l).error("logme error");
    }
}
