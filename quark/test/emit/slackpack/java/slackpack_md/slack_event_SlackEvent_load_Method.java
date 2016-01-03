package slackpack_md;

public class slack_event_SlackEvent_load_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public slack_event_SlackEvent_load_Method() {
        super("void", "load", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"slack.Client", "JSONObject"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slack.event.SlackEvent obj = (slack.event.SlackEvent) (object);
        (obj).load((slack.Client) ((args).get(0)), (io.datawire.quark.runtime.JSONObject) ((args).get(1)));
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
