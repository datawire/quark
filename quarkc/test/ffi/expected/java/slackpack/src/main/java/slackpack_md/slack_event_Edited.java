package slackpack_md;

public class slack_event_Edited extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new slack_event_Edited();
    public slack_event_Edited() {
        super("slack.event.Edited");
        (this).name = "slack.event.Edited";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("slack.User", "user"), new quark.reflect.Field("quark.String", "timestamp")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.event.Edited();
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
