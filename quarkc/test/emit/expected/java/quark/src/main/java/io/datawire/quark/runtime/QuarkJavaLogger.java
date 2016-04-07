package io.datawire.quark.runtime;

import java.util.logging.Logger;

public class QuarkJavaLogger implements io.datawire.quark.runtime.Logger {
    Logger impl;
    QuarkJavaLogger(String topic) {
        impl = Logger.getLogger("quark."+topic);
    }

    @Override public void trace(String message) { impl.finest(message); }
    @Override public void debug(String message)  { impl.fine(message); }
    @Override public void info(String message) { impl.info(message); }
    @Override public void warn(String message) { impl.warning(message); }
    @Override public void error(String message) { impl.severe(message); }
}
