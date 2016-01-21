package break_and_continue_md;

public class builtin_ResponseHolder extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new builtin_ResponseHolder();
    public builtin_ResponseHolder() {
        super("builtin.ResponseHolder");
        (this).name = "ResponseHolder";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("builtin.HTTPResponse", "response"), new reflect.Field("builtin.String", "failure")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin_ResponseHolder_onHTTPResponse_Method(), new builtin_ResponseHolder_onHTTPError_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new builtin.ResponseHolder();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
