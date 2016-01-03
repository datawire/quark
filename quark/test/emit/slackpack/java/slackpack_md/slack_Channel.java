package slackpack_md;

public class slack_Channel extends reflect.Class implements io.datawire.quark.runtime.QObject {
    public static reflect.Class singleton = new slack_Channel();
    public slack_Channel() {
        super("slack.Channel");
        (this).name = "Channel";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new reflect.Field("slack.Client", "client"), new reflect.Field("String", "channel")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slack_Channel_send_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slack.Channel((slack.Client) ((args).get(0)), (String) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
