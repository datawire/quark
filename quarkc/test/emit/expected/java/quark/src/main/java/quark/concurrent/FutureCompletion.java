package quark.concurrent;

/**
 * internal class that binds a listener to a future
 */
public class FutureCompletion implements Event, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_FutureCompletion_ref = quark_md.Root.quark_concurrent_FutureCompletion_md;
    public Future future;
    public FutureListener listener;
    public FutureCompletion(Future future, FutureListener listener) {
        (this).future = future;
        (this).listener = listener;
    }
    public EventContext getContext() {
        return (this).future;
    }
    public void fireEvent() {
        ((this).listener).onFuture((this).future);
    }
    public String _getClass() {
        return "quark.concurrent.FutureCompletion";
    }
    public Object _getField(String name) {
        if ((name)==("future") || ((name) != null && (name).equals("future"))) {
            return (this).future;
        }
        if ((name)==("listener") || ((name) != null && (name).equals("listener"))) {
            return (this).listener;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("future") || ((name) != null && (name).equals("future"))) {
            (this).future = (Future) (value);
        }
        if ((name)==("listener") || ((name) != null && (name).equals("listener"))) {
            (this).listener = (FutureListener) (value);
        }
    }
}
