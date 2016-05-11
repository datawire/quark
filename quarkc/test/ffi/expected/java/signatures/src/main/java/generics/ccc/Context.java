package generics.ccc;

public class Context implements io.datawire.quark.runtime.QObject {
    public static Context _global;
    public static TLS<Context> _current;
    public static quark.reflect.Class generics_ccc_Context_ref = quark_ffi_signatures_md.Root.generics_ccc_Context_md;
    public static quark.reflect.Class generics_ccc_TLS_generics_ccc_Context__ref = quark_ffi_signatures_md.Root.generics_ccc_TLS_generics_ccc_Context__md;
    public Context parent;
    public Context(Context parent) {}
    public static Context current() {
        return (Context) (null);
    }
    public static Context global() {
        return (Context) (null);
    }
    public String _getClass() {
        return "generics.ccc.Context";
    }
    public Object _getField(String name) {
        if ((name)==("_global") || ((Object)(name) != null && ((Object) (name)).equals("_global"))) {
            return Context._global;
        }
        if ((name)==("_current") || ((Object)(name) != null && ((Object) (name)).equals("_current"))) {
            return Context._current;
        }
        if ((name)==("parent") || ((Object)(name) != null && ((Object) (name)).equals("parent"))) {
            return (this).parent;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("_global") || ((Object)(name) != null && ((Object) (name)).equals("_global"))) {
            Context._global = (Context) (value);
        }
        if ((name)==("_current") || ((Object)(name) != null && ((Object) (name)).equals("_current"))) {
            Context._current = (TLS<Context>) (value);
        }
        if ((name)==("parent") || ((Object)(name) != null && ((Object) (name)).equals("parent"))) {
            (this).parent = (Context) (value);
        }
    }
}
