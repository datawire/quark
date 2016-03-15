package quark.concurrent;

/**
 * An active queue of events. Each event will fire sequentially, one by one. Multiple instances of Collector are not serialized with eachother and may run in parallel.
 */
public class Collector implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_Collector_ref = quark_md.Root.quark_concurrent_Collector_md;
    public io.datawire.quark.runtime.Lock lock;
    public Queue<Event> pending;
    public CollectorExecutor executor;
    public Boolean idle;
    public Collector() {
        (this).lock = new io.datawire.quark.runtime.Lock();
        (this).pending = new Queue<Event>();
        (this).executor = new CollectorExecutor(this);
        (this).idle = true;
    }
    public void put(Event event) {
        ((this).lock).acquire();
        ((this).pending).put(event);
        if ((this).idle) {
            ((this).executor)._start();
        }
        ((this).lock).release();
    }
    public Queue<Event> _swap(Queue<Event> drained) {
        Queue<Event> pending = (this).pending;
        (this).idle = ((pending).size())==(0) || ((Object)((pending).size()) != null && ((Object) ((pending).size())).equals(0));
        (this).pending = drained;
        return pending;
    }
    public void _poll() {
        ((this).lock).acquire();
        ((this).executor)._start();
        ((this).lock).release();
    }
    public String _getClass() {
        return "quark.concurrent.Collector";
    }
    public Object _getField(String name) {
        if ((name)==("lock") || ((Object)(name) != null && ((Object) (name)).equals("lock"))) {
            return (this).lock;
        }
        if ((name)==("pending") || ((Object)(name) != null && ((Object) (name)).equals("pending"))) {
            return (this).pending;
        }
        if ((name)==("executor") || ((Object)(name) != null && ((Object) (name)).equals("executor"))) {
            return (this).executor;
        }
        if ((name)==("idle") || ((Object)(name) != null && ((Object) (name)).equals("idle"))) {
            return (this).idle;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("lock") || ((Object)(name) != null && ((Object) (name)).equals("lock"))) {
            (this).lock = (io.datawire.quark.runtime.Lock) (value);
        }
        if ((name)==("pending") || ((Object)(name) != null && ((Object) (name)).equals("pending"))) {
            (this).pending = (Queue<Event>) (value);
        }
        if ((name)==("executor") || ((Object)(name) != null && ((Object) (name)).equals("executor"))) {
            (this).executor = (CollectorExecutor) (value);
        }
        if ((name)==("idle") || ((Object)(name) != null && ((Object) (name)).equals("idle"))) {
            (this).idle = (Boolean) (value);
        }
    }
}
