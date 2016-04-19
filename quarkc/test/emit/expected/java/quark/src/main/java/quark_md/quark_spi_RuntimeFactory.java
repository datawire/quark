package quark_md;

public class quark_spi_RuntimeFactory extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_RuntimeFactory();
    public quark_spi_RuntimeFactory() {
        super("quark.spi.RuntimeFactory");
        (this).name = "quark.spi.RuntimeFactory";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi.RuntimeFactory", "factory"), new quark.reflect.Field("quark.bool", "enable_tracing")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_RuntimeFactory_makeRuntime_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi.RuntimeFactory();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
