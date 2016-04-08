package logging_config;

public class Functions {

    static logging_config_md.Root root = new logging_config_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        (((io.datawire.quark.runtime.LoggerConfig.config()).setAppender(io.datawire.quark.runtime.LoggerConfig.stdout())).setLevel("DEBUG")).configure();
        io.datawire.quark.runtime.Logger l = (quark.concurrent.Context.runtime()).logger("hello");
        (l).trace("Should not see trace log");
        (l).debug("Debug log");
        (l).info("Info log");
        (l).error("Error log");
    }
}
