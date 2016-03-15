package quark.concurrent;

/**
 * Fire events one by one with no locks held
 */
public class CollectorExecutor implements io.datawire.quark.runtime.Task, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_Queue_quark_concurrent_Event__ref = quark_md.Root.quark_concurrent_Queue_quark_concurrent_Event__md;
    public static quark.reflect.Class quark_concurrent_CollectorExecutor_ref = quark_md.Root.quark_concurrent_CollectorExecutor_md;
    public Queue<Event> events;
    public Collector collector;
    public CollectorExecutor(Collector collector) {
        (this).events = new Queue<Event>();
        (this).collector = collector;
    }
    public void _start() {
        (this).events = ((this).collector)._swap((this).events);
        if ((((this).events).size()) > (0)) {
            (Context.runtime()).schedule(this, 0.0);
        }
    }
    public void onExecute(io.datawire.quark.runtime.Runtime runtime) {
        Event next = ((this).events).get();
        Context old = Context.current();
        while (!((next)==(null) || ((Object)(next) != null && ((Object) (next)).equals(null)))) {
            Context.swap(((next).getContext()).getContext());
            (next).fireEvent();
            next = ((this).events).get();
        }
        Context.swap(old);
        ((this).collector)._poll();
    }
    public String _getClass() {
        return "quark.concurrent.CollectorExecutor";
    }
    public Object _getField(String name) {
        if ((name)==("events") || ((Object)(name) != null && ((Object) (name)).equals("events"))) {
            return (this).events;
        }
        if ((name)==("collector") || ((Object)(name) != null && ((Object) (name)).equals("collector"))) {
            return (this).collector;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("events") || ((Object)(name) != null && ((Object) (name)).equals("events"))) {
            (this).events = (Queue<Event>) (value);
        }
        if ((name)==("collector") || ((Object)(name) != null && ((Object) (name)).equals("collector"))) {
            (this).collector = (Collector) (value);
        }
    }
}
