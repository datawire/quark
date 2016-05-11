package slackpack_md;

public class slack_Client_request_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_request_Method() {
        super("quark.void", "request", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String", "quark.Map<quark.String,quark.Object>", "quark.HTTPHandler"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
        (obj).request((String) ((args).get(0)), (java.util.HashMap<String,Object>) ((args).get(1)), (quark.HTTPHandler) ((args).get(2)));
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
