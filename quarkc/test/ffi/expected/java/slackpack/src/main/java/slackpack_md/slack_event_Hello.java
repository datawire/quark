package slackpack_md;

public class slack_event_Hello extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new slack_event_Hello();
    public slack_event_Hello() {
        super("slack.event.Hello");
        (this).name = "slack.event.Hello";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("slack.Channel", "channel"), new quark.reflect.Field("quark.String", "timestamp")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_event_Hello_dispatch_Method(), new slack_event_Hello_load_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"slack.event.SlackEvent"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.event.Hello();
    }
    public Boolean isAbstract() {
        return false;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
