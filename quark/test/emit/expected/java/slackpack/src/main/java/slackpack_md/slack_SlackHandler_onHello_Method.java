package slackpack_md;

public class slack_SlackHandler_onHello_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_SlackHandler_onHello_Method() {
        super("void", "onHello", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"slack.event.Hello"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.SlackHandler obj = (slack.SlackHandler) (object);
        (obj).onHello((slack.event.Hello) ((args).get(0)));
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
