package builtin;

public class Client implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_Client_ref = builtin_md.Root.builtin_Client_md;
    public String url;
    public Long _timeout;
    public Client(String url) {
        (this).url = url;
        (this)._timeout = new Long(0);
    }
    public String getURL() {
        return (this).url;
    }
    public Long getTimeout() {
        return (this)._timeout;
    }
    public void setTimeout(Long timeout) {
        (this)._timeout = timeout;
    }
    public String _getClass() {
        return "builtin.Client";
    }
    public Object _getField(String name) {
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            return (this).url;
        }
        if ((name)==("_timeout") || ((name) != null && (name).equals("_timeout"))) {
            return (this)._timeout;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            (this).url = (String) (value);
        }
        if ((name)==("_timeout") || ((name) != null && (name).equals("_timeout"))) {
            (this)._timeout = (Long) (value);
        }
    }
}
