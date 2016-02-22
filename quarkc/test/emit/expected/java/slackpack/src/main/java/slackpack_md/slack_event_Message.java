package slackpack_md;

public class slack_event_Message extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new slack_event_Message();
    public slack_event_Message() {
        super("slack.event.Message");
        (this).name = "slack.event.Message";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("builtin.String", "type"), new builtin.reflect.Field("slack.User", "user"), new builtin.reflect.Field("slack.Channel", "channel"), new builtin.reflect.Field("builtin.String", "timestamp"), new builtin.reflect.Field("builtin.String", "subtype"), new builtin.reflect.Field("builtin.bool", "hidden"), new builtin.reflect.Field("builtin.String", "text"), new builtin.reflect.Field("slack.event.Edited", "edited")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_event_Message_load_Method(), new slack_event_Message_dispatch_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.event.Message();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
