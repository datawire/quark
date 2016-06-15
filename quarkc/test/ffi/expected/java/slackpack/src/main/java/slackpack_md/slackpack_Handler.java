package slackpack_md;

public class slackpack_Handler extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new slackpack_Handler();
    public slackpack_Handler() {
        super("slackpack.Handler");
        (this).name = "slackpack.Handler";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new slackpack_Handler_onSlackEvent_Method(), new slackpack_Handler_onHello_Method(), new slackpack_Handler_onSlackError_Method(), new slackpack_Handler_onMessage_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{quark.reflect.Class.OBJECT}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new slackpack.Handler();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
