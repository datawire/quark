package io.datawire.quark.runtime;

import java.util.Date;
import java.util.logging.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

public class LoggerConfig {
    private static java.util.logging.Logger root = java.util.logging.Logger.getLogger("quark");
    static String levelToName(Level level) {
        if (level == Level.FINEST) return "trace";
        if (level == Level.FINE) return "debug";
        if (level == Level.INFO) return "info";
        if (level == Level.WARNING) return "warn";
        if (level == Level.SEVERE) return "error";
        return level.getName();
    }
    private static class QuarkFormatter extends Formatter {
        public QuarkFormatter(String fmt) {
            this.fmt = fmt;
        }
        Date stamp = new Date();
        String fmt;
        @Override
        public String format(LogRecord record) {
            stamp.setTime(record.getMillis());
            String name = record.getLoggerName();
            String level = levelToName(record.getLevel()).toUpperCase();
            return String.format(fmt, stamp, level, name, formatMessage(record));
        }
    }
    private static Formatter TS_FORMATTER = new QuarkFormatter("%1$tF-%1$tT.%1$tL %2$s %3$s %4$s\n");
    private static Formatter FORMATTER = new QuarkFormatter("%2$s %3$s %4$s\n");
    public static quark.logging.Config config() {
        return new quark.logging.Config() {
            Appender appender = STDERR;
            Level level = Level.INFO;
            public quark.logging.Config setAppender(quark.logging.Appender appender) {
                this.appender = (Appender)appender;
                return this;
            }
            public quark.logging.Config setLevel(String level) {
                if (level != null) {
                    level = level.toLowerCase();
                }

                if ("trace".equals(level)) this.level = Level.FINEST;
                else if ("debug".equals(level)) this.level = Level.FINE;
                else if ("info".equals(level)) this.level = Level.INFO;
                else if ("warn".equals(level)) this.level = Level.WARNING;
                else if ("error".equals(level)) this.level = Level.SEVERE;
                else this.level = Level.INFO;
                return this;
            }
            public void configure() {
                LogManager mgr = LogManager.getLogManager();
                mgr.reset();
                root.setLevel(level);
                Handler handler = appender.handler();
                handler.setLevel(level);
                root.setLevel(level);
                root.addHandler(handler);
            }
        };
    }
    private interface Appender extends quark.logging.Appender {
        Handler handler();
    }
    private static class FlushingStreamHandler extends StreamHandler {
        OutputStream stream;
        FlushingStreamHandler(OutputStream stream, Formatter formatter) {
            super(stream, formatter);
            this.stream = stream;
        }
        @Override
        public synchronized void publish(LogRecord record) {
            super.publish(record);
            flush();
        }
    }
    private static Appender STDOUT =  new Appender() {
            public StreamHandler handler() {
                PrintStream stream = System.out;
                return new FlushingStreamHandler(stream, FORMATTER);
            }
        };
    public static quark.logging.Appender stdout() {
        return STDOUT;
    }
    private static Appender STDERR = new Appender() {
            public StreamHandler handler() {
                return new FlushingStreamHandler(System.err, FORMATTER);
            }
        };
    public static quark.logging.Appender stderr() {
        return STDERR;
    }
    public static quark.logging.Appender file(final String path) {
        return new Appender() {
            public StreamHandler handler() {
                try {
                    return new java.util.logging.StreamHandler(new FileOutputStream(path),  FORMATTER);
                } catch (java.io.FileNotFoundException ex) {
                    throw new RuntimeException("Cannot write logfile", ex);
                }
            }
        };
    }
}
