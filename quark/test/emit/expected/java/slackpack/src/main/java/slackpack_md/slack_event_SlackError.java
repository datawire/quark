package slackpack_md;

public class slack_event_SlackError extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new slack_event_SlackError();
    public slack_event_SlackError() {
        super("slack.event.SlackError");
        (this).name = "SlackError";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("String", "type"), new reflect.Field("slack.User", "user"), new reflect.Field("slack.Channel", "channel"), new reflect.Field("String", "timestamp"), new reflect.Field("int", "code"), new reflect.Field("String", "text")}));
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
