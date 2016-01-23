package slackpack_md;

public class pkg_Handler extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new pkg_Handler();
    public pkg_Handler() {
        super("pkg.Handler");
        (this).name = "Handler";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pkg_Handler_onSlackEvent_Method(), new pkg_Handler_onHello_Method(), new pkg_Handler_onSlackError_Method(), new pkg_Handler_onMessage_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pkg.Handler();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
