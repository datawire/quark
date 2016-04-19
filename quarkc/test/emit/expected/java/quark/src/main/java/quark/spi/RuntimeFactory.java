package quark.spi;

public class RuntimeFactory implements io.datawire.quark.runtime.QObject {
    public static RuntimeFactory factory = new RuntimeFactory();
    public static Boolean enable_tracing = true;
    public static quark.reflect.Class quark_spi_RuntimeFactory_ref = quark_md.Root.quark_spi_RuntimeFactory_md;
    public RuntimeFactory() {}
    public quark.Runtime makeRuntime() {
        RuntimeSpi spi = io.datawire.quark.runtime.RuntimeSpi.Factory.create();
        quark.Runtime api;
        if (RuntimeFactory.enable_tracing) {
            api = new quark.spi_api_tracing.RuntimeProxy(spi);
        } else {
            api = new quark.spi_api.RuntimeProxy(spi);
        }
        return api;
    }
    public String _getClass() {
        return "quark.spi.RuntimeFactory";
    }
    public Object _getField(String name) {
        if ((name)==("factory") || ((Object)(name) != null && ((Object) (name)).equals("factory"))) {
            return RuntimeFactory.factory;
        }
        if ((name)==("enable_tracing") || ((Object)(name) != null && ((Object) (name)).equals("enable_tracing"))) {
            return RuntimeFactory.enable_tracing;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("factory") || ((Object)(name) != null && ((Object) (name)).equals("factory"))) {
            RuntimeFactory.factory = (RuntimeFactory) (value);
        }
        if ((name)==("enable_tracing") || ((Object)(name) != null && ((Object) (name)).equals("enable_tracing"))) {
            RuntimeFactory.enable_tracing = (Boolean) (value);
        }
    }
}
