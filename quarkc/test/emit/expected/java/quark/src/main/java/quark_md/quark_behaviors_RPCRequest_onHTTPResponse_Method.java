package quark_md;

public class quark_behaviors_RPCRequest_onHTTPResponse_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_behaviors_RPCRequest_onHTTPResponse_Method() {
        super("quark.void", "onHTTPResponse", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.HTTPRequest", "quark.HTTPResponse"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.behaviors.RPCRequest obj = (quark.behaviors.RPCRequest) (object);
        (obj).onHTTPResponse((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
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
