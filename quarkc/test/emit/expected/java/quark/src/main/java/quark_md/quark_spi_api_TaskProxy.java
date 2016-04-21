package quark_md;

public class quark_spi_api_TaskProxy extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_TaskProxy();
    public quark_spi_api_TaskProxy() {
        super("quark.spi_api.TaskProxy");
        (this).name = "quark.spi_api.TaskProxy";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.Task", "task_impl"), new quark.reflect.Field("quark.Runtime", "real_runtime")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_TaskProxy_onExecute_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api.TaskProxy((quark.Runtime) ((args).get(0)), (quark.Task) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
