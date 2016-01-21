package strings_md;

public class builtin_ResponseHolder_onHTTPError_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_ResponseHolder_onHTTPError_Method() {
        super("builtin.void", "onHTTPError", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.HTTPRequest", "builtin.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.ResponseHolder obj = (builtin.ResponseHolder) (object);
        (obj).onHTTPError((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (String) ((args).get(1)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
