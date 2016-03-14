package quark.concurrent;

/**
 * Timeout expiry event
 */
public class TimeoutExpiry implements Event, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_TimeoutExpiry_ref = quark_md.Root.quark_concurrent_TimeoutExpiry_md;
    public Timeout timeout;
    public TimeoutListener listener;
    public TimeoutExpiry(Timeout timeout, TimeoutListener listener) {
        (this).timeout = timeout;
        (this).listener = listener;
    }
    public EventContext getContext() {
        return (this).timeout;
    }
    public void fireEvent() {
        ((this).listener).onTimeout((this).timeout);
    }
    public String _getClass() {
        return "quark.concurrent.TimeoutExpiry";
    }
    public Object _getField(String name) {
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            return (this).timeout;
        }
        if ((name)==("listener") || ((name) != null && (name).equals("listener"))) {
            return (this).listener;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            (this).timeout = (Timeout) (value);
        }
        if ((name)==("listener") || ((name) != null && (name).equals("listener"))) {
            (this).listener = (TimeoutListener) (value);
        }
    }
}
