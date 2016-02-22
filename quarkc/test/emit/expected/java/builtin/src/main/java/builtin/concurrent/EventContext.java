package builtin.concurrent;

/**
 * Captures the current context, base class for all event source implementations
 */
public class EventContext implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_concurrent_EventContext_ref = builtin_md.Root.builtin_concurrent_EventContext_md;
    public Context _context;
    public EventContext() {
        (this)._context = Context.current();
    }
    public Context getContext() {
        return (this)._context;
    }
    public String _getClass() {
        return "builtin.concurrent.EventContext";
    }
    public Object _getField(String name) {
        if ((name)==("_context") || ((name) != null && (name).equals("_context"))) {
            return (this)._context;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_context") || ((name) != null && (name).equals("_context"))) {
            (this)._context = (Context) (value);
        }
    }
}
