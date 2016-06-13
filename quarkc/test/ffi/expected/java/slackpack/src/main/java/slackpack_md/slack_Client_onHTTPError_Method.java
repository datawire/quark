package slackpack_md;

public class slack_Client_onHTTPError_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_onHTTPError_Method() {
        super("quark.void", "onHTTPError", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.HTTPRequest", "quark.HTTPError"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
        (obj).onHTTPError((quark.HTTPRequest) ((args).get(0)), (quark.HTTPError) ((args).get(1)));
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
