package pkg;



public class Handler implements slack.SlackHandler, io.datawire.quark.runtime.QObject {
    public Handler() {}
    public void onSlackEvent(slack.event.SlackEvent event) {
        System.out.println((event).type);
        if (!(((event).user)==(null) || (((event).user) != null && ((event).user).equals(null)))) {
            System.out.println(((event).user).user);
        }
        if (!(((event).channel)==(null) || (((event).channel) != null && ((event).channel).equals(null)))) {
            System.out.println(((event).channel).channel);
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
