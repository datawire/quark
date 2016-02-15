package logme_lib;

public class Functions {
    public static void main() {
        io.datawire.quark.runtime.Logger l = (builtin.concurrent.Context.runtime()).logger("logme");
        (l).error("logme error");
        io.datawire.quark.runtime.Logger sweet = (builtin.concurrent.Context.runtime()).logger("logthat");
        (sweet).error("nice");
    }
}
