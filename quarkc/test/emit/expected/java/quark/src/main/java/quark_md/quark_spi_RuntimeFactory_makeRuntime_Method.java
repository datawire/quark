package quark_md;

public class quark_spi_RuntimeFactory_makeRuntime_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_RuntimeFactory_makeRuntime_Method() {
        super("quark.Runtime", "makeRuntime", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi.RuntimeFactory obj = (quark.spi.RuntimeFactory) (object);
        return (obj).makeRuntime();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
