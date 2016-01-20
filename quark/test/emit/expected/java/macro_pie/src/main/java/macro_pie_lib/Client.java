package macro_pie_lib;

/* BEGIN_BUILTIN */

public class Client implements io.datawire.quark.runtime.QObject {
    public io.datawire.quark.runtime.Runtime runtime;
    public String url;
    public Long timeout;
    public Client(io.datawire.quark.runtime.Runtime runtime, String url) {
        (this).runtime = runtime;
        (this).url = url;
        (this).timeout = new Long(0);
    }
    public io.datawire.quark.runtime.Runtime getRuntime() {
        return (this).runtime;
    }
    public String getURL() {
        return (this).url;
    }
    public Long getTimeout() {
        return (this).timeout;
    }
    public void setTimeout(Long timeout) {
        (this).timeout = timeout;
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
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            return (this).timeout;
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
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            (this).timeout = (Long) (value);
        }
    }
}
/* END_BUILTIN */
