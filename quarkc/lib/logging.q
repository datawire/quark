quark *;
include io/datawire/quark/runtime/Logger.java;
include io/datawire/quark/runtime/QuarkJavaLogger.java;
include io/datawire/quark/runtime/LoggerConfig.java;

namespace quark {
    namespace logging {
        @doc("Destination for logging, just a marker interface for now")
        interface Appender {
        }

        macro Appender stdout() $java{io.datawire.quark.runtime.LoggerConfig.stdout()}
                                $py{_LoggerConfig.stdout()}
                                $rb{::DatawireQuarkCore::LoggerConfig.stdout()}
                                $js{_qrt.LoggerConfig.stdout()};
        macro Appender stderr() $java{io.datawire.quark.runtime.LoggerConfig.stderr()}
                                $py{_LoggerConfig.stderr()}
                                $rb{::DatawireQuarkCore::LoggerConfig.stderr()}
                                $js{_qrt.LoggerConfig.stderr()};
        macro Appender file(String path) $java{io.datawire.quark.runtime.LoggerConfig.file($path)}
                                $py{_LoggerConfig.file($path)}
                                $rb{::DatawireQuarkCore::LoggerConfig.file($path)}
                                $js{_qrt.LoggerConfig.file($path)};

        class _Override {
            static String envVar = "QUARK_TRACE";
            static String level = "DEBUG";

            static bool check() {
                if (envVar == null) {
                    return false;
                }
                String envVarValue = quark.os._env_get(envVar);
                if ((envVarValue == null) ||
                    (envVarValue == "") ||
                    (envVarValue == "0") ||
                    (envVarValue.toLower() == "false")) {
                    return false;
                }
                return true;
            }

            static String getFilename() {
                // Assumes check() has returned true
                String envVarValue = quark.os._env_get(envVar);
                if ((envVarValue == "1") || (envVarValue.toLower() == "true")) {
                    return null;
                }
                return envVarValue;
            }
        }

        @doc("Set an environment variable to override logging set up in the code")
        void setEnvironmentOverride(String envVar, String level) {
            _Override.envVar = envVar;
            _Override.level = level;
        }

        @doc("Logging configurator")
        interface Config {
            @doc("Set the destination for logging, default stderr()")
            Config setAppender(Appender appender);
            @doc("set the logging level [trace|debug|info|warn|error], default 'info'")
            Config setLevel(String level);
            @doc("Configure the logging")
            void configure();
        }
        macro Config makeConfig() $java{io.datawire.quark.runtime.LoggerConfig.config()}
                              $py{_LoggerConfig.config()}
                              $rb{::DatawireQuarkCore::LoggerConfig.config()}
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
