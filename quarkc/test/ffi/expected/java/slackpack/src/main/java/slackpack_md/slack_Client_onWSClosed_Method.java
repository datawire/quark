package slackpack_md;

public class slack_Client_onWSClosed_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_onWSClosed_Method() {
        super("quark.void", "onWSClosed", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.WebSocket"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
        (obj).onWSClosed((quark.WebSocket) ((args).get(0)));
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
