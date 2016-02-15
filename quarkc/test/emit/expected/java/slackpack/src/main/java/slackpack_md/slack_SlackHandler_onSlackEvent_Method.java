package slackpack_md;

public class slack_SlackHandler_onSlackEvent_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_SlackHandler_onSlackEvent_Method() {
        super("builtin.void", "onSlackEvent", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"slack.event.SlackEvent"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.SlackHandler obj = (slack.SlackHandler) (object);
        (obj).onSlackEvent((slack.event.SlackEvent) ((args).get(0)));
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
