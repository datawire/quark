package slackpack_md;

public class slack_event_SlackEvent extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new slack_event_SlackEvent();
    public slack_event_SlackEvent() {
        super("slack.event.SlackEvent");
        (this).name = "slack.event.SlackEvent";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_event_SlackEvent_load_Method(), new slack_event_SlackEvent_dispatch_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.event.SlackEvent();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
