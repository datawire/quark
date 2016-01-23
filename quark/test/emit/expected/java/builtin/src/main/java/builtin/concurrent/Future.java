package builtin.concurrent;

/**
 * The base class for value objects
 */
public class Future extends EventContext implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_concurrent_Future_ref = builtin_md.Root.builtin_concurrent_Future_md;
    public Boolean _finished;
    public String _error;
    public java.util.ArrayList<FutureCompletion> _callbacks;
    public io.datawire.quark.runtime.Lock _lock;
    public Future() {
        super();
        (this)._finished = false;
        (this)._callbacks = (java.util.ArrayList<FutureCompletion>) (null);
        (this)._lock = new io.datawire.quark.runtime.Lock();
    }
    public void onFinished(FutureListener callback) {
        ((this)._lock).acquire();
        if ((this)._finished) {
            (((this)._context).collector).put(new FutureCompletion(this, callback));
        } else {
            if (((this)._callbacks)==(null) || (((this)._callbacks) != null && ((this)._callbacks).equals(null))) {
                (this)._callbacks = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            }
            ((this)._callbacks).add(new FutureCompletion(this, callback));
        }
        ((this)._lock).release();
    }
    public void finish(String error) {
        java.util.ArrayList<FutureCompletion> callbacks = (java.util.ArrayList<FutureCompletion>) (null);
        ((this)._lock).acquire();
        if (!((this)._finished)) {
            (this)._finished = true;
            (this)._error = error;
            callbacks = (this)._callbacks;
            (this)._callbacks = (java.util.ArrayList<FutureCompletion>) (null);
        }
        ((this)._lock).release();
        if (!((callbacks)==(null) || ((callbacks) != null && (callbacks).equals(null)))) {
            Integer i = 0;
            while ((i) < ((callbacks).size())) {
                (((this)._context).collector).put((callbacks).get(i));
                i = (i) + (1);
            }
        }
    }
    public Boolean isFinished() {
        ((this)._lock).acquire();
        Boolean finished = (this)._finished;
        ((this)._lock).release();
        return finished;
    }
    public String getError() {
        ((this)._lock).acquire();
        String error = (this)._error;
        ((this)._lock).release();
        return error;
    }
    public String _getClass() {
        return "builtin.concurrent.Future";
    }
    public Object _getField(String name) {
        if ((name)==("_context") || ((name) != null && (name).equals("_context"))) {
            return (this)._context;
        }
        if ((name)==("_finished") || ((name) != null && (name).equals("_finished"))) {
            return (this)._finished;
        }
        if ((name)==("_error") || ((name) != null && (name).equals("_error"))) {
            return (this)._error;
        }
        if ((name)==("_callbacks") || ((name) != null && (name).equals("_callbacks"))) {
            return (this)._callbacks;
        }
        if ((name)==("_lock") || ((name) != null && (name).equals("_lock"))) {
            return (this)._lock;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_context") || ((name) != null && (name).equals("_context"))) {
            (this)._context = (Context) (value);
        }
        if ((name)==("_finished") || ((name) != null && (name).equals("_finished"))) {
            (this)._finished = (Boolean) (value);
        }
        if ((name)==("_error") || ((name) != null && (name).equals("_error"))) {
            (this)._error = (String) (value);
        }
        if ((name)==("_callbacks") || ((name) != null && (name).equals("_callbacks"))) {
            (this)._callbacks = (java.util.ArrayList<FutureCompletion>) (value);
        }
        if ((name)==("_lock") || ((name) != null && (name).equals("_lock"))) {
            (this)._lock = (io.datawire.quark.runtime.Lock) (value);
        }
    }
}
