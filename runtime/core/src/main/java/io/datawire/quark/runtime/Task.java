package io.datawire.quark.runtime;

public interface Task {
    void onExecute(Runtime runtime);
}