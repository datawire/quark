include io/datawire/quark/runtime/Logger.java;
include io/datawire/quark/runtime/QuarkJavaLogger.java;

namespace quark {

    @doc("A logging facility")
    @mapping($java{io.datawire.quark.runtime.Logger})
    primitive Logger {
        macro Logger(String topic) quark.concurrent.Context.current().runtime().logger(topic);
        @doc("emit a log at trace level")
        void trace(String msg);
        @doc("emit a log at debug level")
        void debug(String msg);
        @doc("emit a log at info level")
        void info(String msg);
        @doc("emit a log at warn level")
        void warn(String msg);
        @doc("emit a log at error level")
        void error(String msg);
    }

}
