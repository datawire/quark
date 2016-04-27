package slackpack_md;

public class slackpack_Handler_onMessage_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public slackpack_Handler_onMessage_Method() {
        super("quark.void", "onMessage", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"slack.event.Message"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        slackpack.Handler obj = (slackpack.Handler) (object);
        (obj).onMessage((slack.event.Message) ((args).get(0)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
