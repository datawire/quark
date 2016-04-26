package slackpack;

public class Handler implements slack.SlackHandler, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class slackpack_Handler_ref = slackpack_md.Root.slackpack_Handler_md;
    public Handler() {}
    public void onSlackEvent(slack.event.SlackEvent event) {}
    public String _getClass() {
        return "slackpack.Handler";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void onHello(slack.event.Hello hello) {}
    public void onSlackError(slack.event.SlackError error) {}
    public void onMessage(slack.event.Message message) {}
}
