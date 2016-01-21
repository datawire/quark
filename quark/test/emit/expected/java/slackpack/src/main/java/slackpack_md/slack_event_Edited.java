package slackpack_md;

public class slack_event_Edited extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new slack_event_Edited();
    public slack_event_Edited() {
        super("slack.event.Edited");
        (this).name = "Edited";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("slack.User", "user"), new reflect.Field("builtin.String", "timestamp")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.event.Edited();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
