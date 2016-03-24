package quark.concurrent;

/**
 * Synchronization point for a Future.)
 */
public class FutureWait implements FutureListener, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_FutureWait_ref = quark_md.Root.quark_concurrent_FutureWait_md;
    public io.datawire.quark.runtime.Condition _lock;
    public Future _future;
    public FutureWait() {
        (this)._lock = new io.datawire.quark.runtime.Condition();
        (this)._future = (Future) (null);
    }
    public void wait(Future future, Double timeout) {
        if ((future).isFinished()) {
            return;
        }
        (this)._future = future;
        ((this)._future).onFinished(this);
        Long rounded = Math.round((1000.0) * (timeout));
        Long deadline = (System.currentTimeMillis()) + (rounded);
        while (!(((this)._future).isFinished())) {
            Long remaining = (deadline) - (System.currentTimeMillis());
            if (!((rounded)==(0) || ((Object)(rounded) != null && ((Object) (rounded)).equals(0)))) {
                if ((remaining) <= (new Long(0))) {
                    break;
                }
            } else {
                remaining = new Long(3141);
            }
            ((this)._lock).acquire();
            ((this)._lock).waitWakeup(remaining);
            ((this)._lock).release();
        }
        (this)._future = (Future) (null);
    }
    public void onFuture(Future future) {
        ((this)._lock).acquire();
        ((this)._lock).wakeup();
        ((this)._lock).release();
    }
    public static Future waitFor(Future future, Double timeout) {
        if (false) {
            FutureWait w = new FutureWait();
            (w).wait(future, timeout);
            if (!((future).isFinished())) {}
        }
        return future;
    }
    public String _getClass() {
        return "quark.concurrent.FutureWait";
    }
    public Object _getField(String name) {
        if ((name)==("_lock") || ((Object)(name) != null && ((Object) (name)).equals("_lock"))) {
            return (this)._lock;
        }
        if ((name)==("_future") || ((Object)(name) != null && ((Object) (name)).equals("_future"))) {
            return (this)._future;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_lock") || ((Object)(name) != null && ((Object) (name)).equals("_lock"))) {
            (this)._lock = (io.datawire.quark.runtime.Condition) (value);
        }
        if ((name)==("_future") || ((Object)(name) != null && ((Object) (name)).equals("_future"))) {
            (this)._future = (Future) (value);
        }
    }
}
