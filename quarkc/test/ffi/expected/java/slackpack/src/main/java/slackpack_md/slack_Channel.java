package slackpack_md;

public class slack_Channel extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new slack_Channel();
    public slack_Channel() {
        super("slack.Channel");
        (this).name = "slack.Channel";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("slack.Client", "client"), new quark.reflect.Field("quark.String", "channel")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_Channel_send_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.Channel((slack.Client) ((args).get(0)), (String) ((args).get(1)));
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
