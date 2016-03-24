package slackpack_md;

public class pkg_Handler_onHello_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public pkg_Handler_onHello_Method() {
        super("quark.void", "onHello", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"slack.event.Hello"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        pkg.Handler obj = (pkg.Handler) (object);
        (obj).onHello((slack.event.Hello) ((args).get(0)));
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
