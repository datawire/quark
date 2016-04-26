package slackpack_md;

public class slack_event_Message extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new slack_event_Message();
    public slack_event_Message() {
        super("slack.event.Message");
        (this).name = "slack.event.Message";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp"), new quark.reflect.Field("quark.String", "subtype"), new quark.reflect.Field("quark.bool", "hidden"), new quark.reflect.Field("quark.String", "text"), new quark.reflect.Field("slack.event.Edited", "edited")}));
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
