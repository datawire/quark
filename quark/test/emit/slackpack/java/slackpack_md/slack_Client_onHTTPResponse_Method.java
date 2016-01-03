package slackpack_md;

public class slack_Client_onHTTPResponse_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_onHTTPResponse_Method() {
        super("void", "onHTTPResponse", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"HTTPRequest", "HTTPResponse"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
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
