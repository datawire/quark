package constructors_md;

public class builtin_Server_Object__onHTTPRequest_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public builtin_Server_Object__onHTTPRequest_Method() {
        super("builtin.void", "onHTTPRequest", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.HTTPRequest", "builtin.HTTPResponse"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        builtin.Server<Object> obj = (builtin.Server<Object>) (object);
        (obj).onHTTPRequest((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
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
