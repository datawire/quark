package slackpack_md;

public class slack_event_Message extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new slack_event_Message();
    public slack_event_Message() {
        super("slack.event.Message");
        (this).name = "Message";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("builtin.String", "type"), new reflect.Field("slack.User", "user"), new reflect.Field("slack.Channel", "channel"), new reflect.Field("builtin.String", "timestamp"), new reflect.Field("builtin.String", "subtype"), new reflect.Field("builtin.bool", "hidden"), new reflect.Field("builtin.String", "text"), new reflect.Field("slack.event.Edited", "edited")}));
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
