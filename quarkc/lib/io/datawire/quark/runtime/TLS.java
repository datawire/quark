package io.datawire.quark.runtime;

public class TLS<T> {
    private ThreadLocal<T> value;
    public TLS(final TLSInitializer<T> initializer) {
        value = new ThreadLocal<T>() {
            @Override
            protected T initialValue() {
                // TODO Auto-generated method stub
                return initializer.getValue();
            }
        };
    }

    public T getValue() { return value.get(); }
    public void setValue(T t) { value.set(t); }
}
