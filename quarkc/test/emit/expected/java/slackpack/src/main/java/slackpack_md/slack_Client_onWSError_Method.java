package slackpack_md;

public class slack_Client_onWSError_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_onWSError_Method() {
        super("quark.void", "onWSError", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.WebSocket"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
        (obj).onWSError((io.datawire.quark.runtime.WebSocket) ((args).get(0)));
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
