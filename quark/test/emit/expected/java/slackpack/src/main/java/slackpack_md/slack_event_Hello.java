package slackpack_md;

public class slack_event_Hello extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new slack_event_Hello();
    public slack_event_Hello() {
        super("slack.event.Hello");
        (this).name = "Hello";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("builtin.String", "type"), new reflect.Field("slack.User", "user"), new reflect.Field("slack.Channel", "channel"), new reflect.Field("builtin.String", "timestamp")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_event_Hello_dispatch_Method(), new slack_event_Hello_load_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.event.Hello();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
