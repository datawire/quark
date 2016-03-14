package quark.concurrent;

/**
 * Timeout
 */
public class Timeout extends EventContext implements io.datawire.quark.runtime.Task, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_Timeout_ref = quark_md.Root.quark_concurrent_Timeout_md;
    public Double timeout;
    public io.datawire.quark.runtime.Lock lock;
    public TimeoutListener listener;
    public Timeout(Double timeout) {
        super();
        (this).timeout = timeout;
        (this).listener = (TimeoutListener) (null);
        (this).lock = new io.datawire.quark.runtime.Lock();
    }
    public void start(TimeoutListener listener) {
        (this).listener = listener;
        Double delay = (this).timeout;
        (Context.runtime()).schedule(this, delay);
    }
    public void cancel() {
        ((this).lock).acquire();
        (this).listener = (TimeoutListener) (null);
        ((this).lock).release();
    }
    public void onExecute(io.datawire.quark.runtime.Runtime runtime) {
        ((this).lock).acquire();
        if (!(((this).listener)==(null) || (((this).listener) != null && ((this).listener).equals(null)))) {
            (((this)._context).collector).put(new TimeoutExpiry(this, (this).listener));
            (this).listener = (TimeoutListener) (null);
        }
        ((this).lock).release();
    }
    public String _getClass() {
        return "quark.concurrent.Timeout";
    }
    public Object _getField(String name) {
        if ((name)==("_context") || ((name) != null && (name).equals("_context"))) {
            return (this)._context;
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            return (this).timeout;
        }
        if ((name)==("lock") || ((name) != null && (name).equals("lock"))) {
            return (this).lock;
        }
        if ((name)==("listener") || ((name) != null && (name).equals("listener"))) {
            return (this).listener;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_context") || ((name) != null && (name).equals("_context"))) {
            (this)._context = (Context) (value);
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            (this).timeout = (Double) (value);
        }
        if ((name)==("lock") || ((name) != null && (name).equals("lock"))) {
            (this).lock = (io.datawire.quark.runtime.Lock) (value);
        }
        if ((name)==("listener") || ((name) != null && (name).equals("listener"))) {
            (this).listener = (TimeoutListener) (value);
        }
    }
}
