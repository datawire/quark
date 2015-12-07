package io.datawire.quark.runtime;

public interface QObject {
    String _getClass();
    Object _getField(String name);
    void _setField(String name, Object value);
}
