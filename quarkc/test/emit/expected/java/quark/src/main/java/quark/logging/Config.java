package quark.logging;

/**
 * Logging configurator
 */
public interface Config {
    public static quark.reflect.Class quark_logging_Config_ref = quark_md.Root.quark_logging_Config_md;
    /**
     * Set the destination for logging, default stderr()
     */
     Config setAppender(Appender appender);
    /**
     * set the logging level [trace|debug|info|warn|error], default 'info'
     */
     Config setLevel(String level);
    /**
     * Configure the logging
     */
     void configure();
}
