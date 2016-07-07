package io.datawire.quark.runtime;

import java.util.Date;
import java.util.logging.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

public class LoggerConfig {
    private static boolean firstRun = true;
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

    public static void configureLogging(quark.logging.Appender appender, String levelString) {
        StreamHandler handler;
        if (":STDOUT".equals(appender.name)) {
            handler = new FlushingStreamHandler(System.out, FORMATTER);
        } else if (":STDERR".equals(appender.name)) {
            handler = new FlushingStreamHandler(System.err, FORMATTER);
        } else {
            try {
                handler = new java.util.logging.StreamHandler(new FileOutputStream(appender.name), FORMATTER);
            } catch (java.io.FileNotFoundException ex) {
                throw new RuntimeException("Cannot write logfile", ex);
            }
        }

        Level level;
        if (levelString != null) {
            levelString = levelString.toLowerCase();
        }
        if ("trace".equals(levelString)) level = Level.FINEST;
        else if ("debug".equals(levelString)) level = Level.FINE;
        else if ("info".equals(levelString)) level = Level.INFO;
        else if ("warn".equals(levelString)) level = Level.WARNING;
        else if ("error".equals(levelString)) level = Level.SEVERE;
        else level = Level.INFO;

        if (firstRun) {
            LogManager mgr = LogManager.getLogManager();
            mgr.reset();
            firstRun = false;
        }

        Handler[] handlers = root.getHandlers();
        for (int idx = 0; idx < handlers.length; idx++) {
            root.removeHandler(handlers[idx]);
        }

        handler.setLevel(level);
        root.setLevel(level);
        root.addHandler(handler);
    }
}
