package slackpack_md;

public class slack_Channel_send_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_Channel_send_Method() {
        super("void", "send", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.Channel obj = (slack.Channel) (object);
        (obj).send((String) ((args).get(0)));
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
