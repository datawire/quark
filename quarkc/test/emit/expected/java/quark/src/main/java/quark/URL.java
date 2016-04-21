package quark;

/**
 * A URL class.
 */
public class URL implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_URL_ref = quark_md.Root.quark_URL_md;
    public String scheme = null;
    public String host = null;
    public String port = null;
    public String path = null;
    public URL() {}
    public static URL parse(String url) {
        URL result = new URL();
        if ((url)==(null) || ((Object)(url) != null && ((Object) (url)).equals(null))) {
            return (URL) (null);
        }
        java.util.ArrayList<String> parts;
        String remaining;
        Integer idx = (url).indexOf("://");
        if ((idx) >= (0)) {
            (result).scheme = (url).substring((0), (idx));
            remaining = (url).substring(((idx) + (3)), ((url).length()));
        } else {
            remaining = url;
        }
        Integer firstSlash = (remaining).indexOf("/");
        if ((firstSlash)==(0) || ((Object)(firstSlash) != null && ((Object) (firstSlash)).equals(0))) {
            (result).path = remaining;
            return result;
        }
        if ((firstSlash) < (0)) {
            firstSlash = (remaining).length();
        } else {
            (result).path = (remaining).substring((firstSlash), ((remaining).length()));
        }
        idx = (remaining).indexOf(":");
        if ((idx) > (firstSlash)) {
            (result).host = (remaining).substring((0), (firstSlash));
        } else {
            if ((idx) >= (0)) {
                (result).host = (remaining).substring((0), (idx));
                (result).port = (remaining).substring(((idx) + (1)), (firstSlash));
            } else {
                (result).host = (remaining).substring((0), (firstSlash));
            }
        }
        return result;
    }
    public String toString() {
        String result = "";
        if (!((this.scheme)==(null) || ((Object)(this.scheme) != null && ((Object) (this.scheme)).equals(null)))) {
            result = (this.scheme) + ("://");
        }
        if (!((this.host)==(null) || ((Object)(this.host) != null && ((Object) (this.host)).equals(null)))) {
            result = (result) + (this.host);
        }
        if (!((this.port)==(null) || ((Object)(this.port) != null && ((Object) (this.port)).equals(null)))) {
            result = ((result) + (":")) + (this.port);
        }
        if (!((this.path)==(null) || ((Object)(this.path) != null && ((Object) (this.path)).equals(null)))) {
            result = (result) + (this.path);
        }
        return result;
    }
    public String _getClass() {
        return "quark.URL";
    }
    public Object _getField(String name) {
        if ((name)==("scheme") || ((Object)(name) != null && ((Object) (name)).equals("scheme"))) {
            return (this).scheme;
        }
        if ((name)==("host") || ((Object)(name) != null && ((Object) (name)).equals("host"))) {
            return (this).host;
        }
        if ((name)==("port") || ((Object)(name) != null && ((Object) (name)).equals("port"))) {
            return (this).port;
        }
        if ((name)==("path") || ((Object)(name) != null && ((Object) (name)).equals("path"))) {
            return (this).path;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("scheme") || ((Object)(name) != null && ((Object) (name)).equals("scheme"))) {
            (this).scheme = (String) (value);
        }
        if ((name)==("host") || ((Object)(name) != null && ((Object) (name)).equals("host"))) {
            (this).host = (String) (value);
        }
        if ((name)==("port") || ((Object)(name) != null && ((Object) (name)).equals("port"))) {
            (this).port = (String) (value);
        }
        if ((name)==("path") || ((Object)(name) != null && ((Object) (name)).equals("path"))) {
            (this).path = (String) (value);
        }
    }
}
