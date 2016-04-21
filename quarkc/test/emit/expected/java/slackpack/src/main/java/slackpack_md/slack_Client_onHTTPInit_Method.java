package slackpack_md;

public class slack_Client_onHTTPInit_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_onHTTPInit_Method() {
        super("quark.void", "onHTTPInit", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.HTTPRequest"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
        (obj).onHTTPInit((quark.HTTPRequest) ((args).get(0)));
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
