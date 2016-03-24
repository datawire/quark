package quark.concurrent;

/**
 * Captures the current context, base class for all event source implementations
 */
public class EventContext implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_concurrent_EventContext_ref = quark_md.Root.quark_concurrent_EventContext_md;
    public Context _context;
    public EventContext() {
        (this)._context = Context.current();
    }
    public Context getContext() {
        return (this)._context;
    }
    public String _getClass() {
        return "quark.concurrent.EventContext";
    }
    public Object _getField(String name) {
        if ((name)==("_context") || ((Object)(name) != null && ((Object) (name)).equals("_context"))) {
            return (this)._context;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_context") || ((Object)(name) != null && ((Object) (name)).equals("_context"))) {
            (this)._context = (Context) (value);
        }
    }
}
