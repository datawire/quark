package builtin_md;

public class builtin_ServerResponder extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new builtin_ServerResponder();
    public builtin_ServerResponder() {
        super("builtin.ServerResponder");
        (this).name = "ServerResponder";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.HTTPRequest", "request"), new builtin.reflect.Field("builtin.HTTPResponse", "response")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_ServerResponder_onFuture_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.ServerResponder((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
