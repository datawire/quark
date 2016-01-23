package builtin;

public class Client implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_Client_ref = builtin_md.Root.builtin_Client_md;
    public String url;
    public Long timeout;
    public Client(String url) {
        (this).url = url;
        (this).timeout = new Long(0);
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
        return "builtin.Client";
    }
    public Object _getField(String name) {
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            return (this).url;
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            return (this).timeout;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            (this).url = (String) (value);
        }
        if ((name)==("timeout") || ((name) != null && (name).equals("timeout"))) {
            (this).timeout = (Long) (value);
        }
    }
}
