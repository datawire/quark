package pkg;

public class Handler implements slack.SlackHandler, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pkg_Handler_ref = slackpack_md.Root.pkg_Handler_md;
    public Handler() {}
    public void onSlackEvent(slack.event.SlackEvent event) {
        do{System.out.println((event).type);System.out.flush();}while(false);
        if (!(((event).user)==(null) || (((event).user) != null && ((event).user).equals(null)))) {
            do{System.out.println(((event).user).user);System.out.flush();}while(false);
        }
        if (!(((event).channel)==(null) || (((event).channel) != null && ((event).channel).equals(null)))) {
            do{System.out.println(((event).channel).channel);System.out.flush();}while(false);
        }
    }
    public String _getClass() {
        return "pkg.Handler";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
    public void onHello(slack.event.Hello hello) {
        (this).onSlackEvent(hello);
    }
    public void onSlackError(slack.event.SlackError error) {
        (this).onSlackEvent(error);
    }
    public void onMessage(slack.event.Message message) {
        (this).onSlackEvent(message);
    }
}
