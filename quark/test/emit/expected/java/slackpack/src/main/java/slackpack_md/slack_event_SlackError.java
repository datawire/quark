package slackpack_md;

public class slack_event_SlackError extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new slack_event_SlackError();
    public slack_event_SlackError() {
        super("slack.event.SlackError");
        (this).name = "SlackError";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "type"), new builtin.reflect.Field("slack.User", "user"), new builtin.reflect.Field("slack.Channel", "channel"), new builtin.reflect.Field("builtin.String", "timestamp"), new builtin.reflect.Field("builtin.int", "code"), new builtin.reflect.Field("builtin.String", "text")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_event_SlackError_load_Method(), new slack_event_SlackError_dispatch_Method()}));
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
