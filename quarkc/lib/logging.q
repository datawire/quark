include io/datawire/quark/runtime/Logger.java;
include io/datawire/quark/runtime/QuarkJavaLogger.java;
include io/datawire/quark/runtime/LoggerConfig.java;

namespace quark {
    namespace logging {
        @doc("Destination for logging, just a marker interface for now")
        interface Appender {
        }

        macro Appender stdout() $java{io.datawire.quark.runtime.LoggerConfig.stdout()}
                                $js{_qrt.LoggerConfig.stdout()};
        macro Appender stderr() $java{io.datawire.quark.runtime.LoggerConfig.stderr()}
                                $js{_qrt.LoggerConfig.stderr()};
        macro Appender file(String path) $java{io.datawire.quark.runtime.LoggerConfig.file($path)}
                                $js{_qrt.LoggerConfig.file()};

        @doc("Logging configurator")
        interface Config {
            @doc("Set the destination for logging, default stderr()")
            Config setAppender(Appender appender);
            @doc("set the logging level [trace|debug|info|warn|error], default 'info'")
            Config setLevel(String level);
            @doc("Configure the logging")
            void configure();
        }
        macro Config config() $java{io.datawire.quark.runtime.LoggerConfig.config()}
                              $js{_qrt.LoggerConfig.config()};
    }

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
