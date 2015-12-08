package string_methods_lib;

/* BEGIN_BUILTIN */

public class Client implements io.datawire.quark.runtime.QObject {
    public io.datawire.quark.runtime.Runtime runtime;
    public String url;
    public Client(io.datawire.quark.runtime.Runtime runtime, String url) {
        (this).runtime = runtime;
        (this).url = url;
    }
    public io.datawire.quark.runtime.Runtime getRuntime() {
        return (this).runtime;
    }
    public String getURL() {
        return (this).url;
    }
    public String _getClass() {
        return "Client";
    }
    public Object _getField(String name) {
        if ((name)==("runtime") || ((name) != null && (name).equals("runtime"))) {
            return (this).runtime;
        }
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            return (this).url;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("runtime") || ((name) != null && (name).equals("runtime"))) {
            (this).runtime = (io.datawire.quark.runtime.Runtime) (value);
        }
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            (this).url = (String) (value);
        }
    }
}
/* END_BUILTIN */
