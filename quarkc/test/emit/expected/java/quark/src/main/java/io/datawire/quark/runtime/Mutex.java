package io.datawire.quark.runtime;

public interface Mutex {
    public void acquire();
    public void release();
}
