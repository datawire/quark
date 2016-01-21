package slackpack_md;

public class slack_Client_construct_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Client_construct_Method() {
        super("slack.event.SlackEvent", "construct", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Client obj = (slack.Client) (object);
        return (obj).construct((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
