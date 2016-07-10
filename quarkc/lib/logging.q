quark *;
include io/datawire/quark/runtime/Logger.java;
include io/datawire/quark/runtime/QuarkJavaLogger.java;
include io/datawire/quark/runtime/LoggerConfig.java;

namespace quark {
    namespace logging {

        @doc("Destination for logging")
        class Appender {
            String name;
            Appender(String name) {
                self.name = name;
            }
        }

        @doc("Logging appender that sends log messages to standard output")
        Appender stdout() { return new Appender(":STDOUT"); }

        @doc("Logging appender that sends log messages to standard error")
        Appender stderr() { return new Appender(":STDERR"); }

        @doc("Logging appender that sends log messages to a file")
        Appender file(String path) { return new Appender(path); }

        @doc("Set an environment variable to override logging set up in the code")
        void setEnvironmentOverride(String envVar, String level) {
            Config._overrideEnvVar = envVar;
            Config._overrideLevel = level;
        }

        macro void _configureLogging(Appender appender, String level)
            $java{io.datawire.quark.runtime.LoggerConfig.configureLogging(($appender), ($level))}
            $py{_configure_logging(($appender), ($level))}
            $js{_qrt.configureLogging(($appender), ($level))}
            $rb{::DatawireQuarkCore.configureLogging(($appender), ($level))}
        ;

        @doc("Logging configurator")
        class Config {
            static String _overrideEnvVar = "QUARK_TRACE";
            static String _overrideLevel = "DEBUG";
            static bool _configured = false;

            Appender appender = stderr();
            String level = "INFO";

            @doc("Set the destination for logging, default stderr()")
            Config setAppender(Appender appender) {
                self.appender = appender;
                return self;
            }

            @doc("set the logging level [trace|debug|info|warn|error], default 'info'")
            Config setLevel(String level) {
                self.level = level;
                return self;
            }

            static String _getOverrideIfExists() {
                if (Config._overrideEnvVar == null) {
                    return null;
                }
                String envVarValue = quark.os._env_get(Config._overrideEnvVar);
                if ((envVarValue == null) ||
                    (envVarValue == "") ||
                    (envVarValue == "0") ||
                    (envVarValue.toLower() == "false")) {
                    return null;
                }
                return envVarValue;
            }

            static bool _autoconfig() {
                return !_configured && _getOverrideIfExists() != null;
            }

            @doc("Configure the logging")
            void configure() {
                String envVarValue = Config._getOverrideIfExists();
                if (envVarValue != null) {
                    if ((envVarValue == "1") || (envVarValue.toLower() == "true")) {
                        appender = stderr();
                    } else {
                        appender = file(envVarValue);
                    }
                    level = Config._overrideLevel;
                }
                _configureLogging(appender, level);
                Config._configured = true;
            }
        }

        @doc("Create a logging configurator")
        Config makeConfig() {
            return new Config();
        }
    }

    Logger _getLogger(String topic) {
        if (quark.logging.Config._autoconfig()) {
            quark.logging.makeConfig().configure();
        }
        return quark.concurrent.Context.current().runtime().logger(topic);
    }

    @doc("A logging facility")
    @mapping($java{io.datawire.quark.runtime.Logger})
    primitive Logger {
        macro Logger(String topic) _getLogger(topic);
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
