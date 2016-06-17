package slackpack_md;

public class slack_event_SlackError extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new slack_event_SlackError();
    public slack_event_SlackError() {
        super("slack.event.SlackError");
        (this).name = "slack.event.SlackError";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp"), new quark.reflect.Field("quark.int", "code"), new quark.reflect.Field("quark.String", "text")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_event_SlackError_load_Method(), new slack_event_SlackError_dispatch_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.get("slack.event.SlackEvent")}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.event.SlackError();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
