package slackpack_md;

public class slack_Client_ws_send_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_ws_send_Method() {
        super("void", "ws_send", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
        (obj).ws_send((String) ((args).get(0)));
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
