package quark_md;

public class quark_Client extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_Client();
    public quark_Client() {
        super("quark.Client");
        (this).name = "quark.Client";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.Logger", "logger"), new quark.reflect.Field("quark.Resolver", "resolver"), new quark.reflect.Field("quark.String", "serviceName"), new quark.reflect.Field("quark.float", "_timeout"), new quark.reflect.Field("quark.int", "_failureLimit"), new quark.reflect.Field("quark.float", "_retestDelay"), new quark.reflect.Field("quark.concurrent.Lock", "mutex"), new quark.reflect.Field("quark.Map<quark.String,quark.ServiceInstance>", "instanceMap"), new quark.reflect.Field("quark.int", "counter")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.Client((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
