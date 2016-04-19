package quark.concurrent;

/**
 * The logical stack for async stuff.
 */
public class Context implements io.datawire.quark.runtime.QObject {
    public static Context _global = null;
    public static io.datawire.quark.runtime.TLS<Context> _current = new io.datawire.quark.runtime.TLS(new TLSContextInitializer());
    public static quark.reflect.Class quark_concurrent_Context_ref = quark_md.Root.quark_concurrent_Context_md;
    public Context _parent;
    public quark.Runtime _runtime;
    public Collector collector;
    public Context(Context parent) {
        (this)._parent = parent;
        if ((parent)==(null) || ((Object)(parent) != null && ((Object) (parent)).equals(null))) {
            (this)._runtime = (quark.spi.RuntimeFactory.factory).makeRuntime();
            (this).collector = new Collector();
        } else {
            (this)._runtime = (parent)._runtime;
            (this).collector = (parent).collector;
        }
    }
    public static Context current() {
        return (Context._current).getValue();
    }
    public static Context global() {
        if ((Context._global)==(null) || ((Object)(Context._global) != null && ((Object) (Context._global)).equals(null))) {
            Context._global = new Context(null);
        }
        return Context._global;
    }
    public static quark.Runtime runtime() {
        return (Context.current())._runtime;
    }
    public static void swap(Context c) {
        (Context._current).setValue(c);
    }
    public String _getClass() {
        return "quark.concurrent.Context";
    }
    public Object _getField(String name) {
        if ((name)==("_global") || ((Object)(name) != null && ((Object) (name)).equals("_global"))) {
            return Context._global;
        }
        if ((name)==("_current") || ((Object)(name) != null && ((Object) (name)).equals("_current"))) {
            return Context._current;
        }
        if ((name)==("_parent") || ((Object)(name) != null && ((Object) (name)).equals("_parent"))) {
            return (this)._parent;
        }
        if ((name)==("_runtime") || ((Object)(name) != null && ((Object) (name)).equals("_runtime"))) {
            return (this)._runtime;
        }
        if ((name)==("collector") || ((Object)(name) != null && ((Object) (name)).equals("collector"))) {
            return (this).collector;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_global") || ((Object)(name) != null && ((Object) (name)).equals("_global"))) {
            Context._global = (Context) (value);
        }
        if ((name)==("_current") || ((Object)(name) != null && ((Object) (name)).equals("_current"))) {
            Context._current = (io.datawire.quark.runtime.TLS<Context>) (value);
        }
        if ((name)==("_parent") || ((Object)(name) != null && ((Object) (name)).equals("_parent"))) {
            (this)._parent = (Context) (value);
        }
        if ((name)==("_runtime") || ((Object)(name) != null && ((Object) (name)).equals("_runtime"))) {
            (this)._runtime = (quark.Runtime) (value);
        }
        if ((name)==("collector") || ((Object)(name) != null && ((Object) (name)).equals("collector"))) {
            (this).collector = (Collector) (value);
        }
    }
}
