package quark.spi;

public class RuntimeFactory implements io.datawire.quark.runtime.QObject {
    public static RuntimeFactory factory = new RuntimeFactory();
    public static quark.reflect.Class quark_spi_RuntimeFactory_ref = quark_md.Root.quark_spi_RuntimeFactory_md;
    public RuntimeFactory() {}
    public quark.Runtime makeRuntime() {
        RuntimeSpi spi = io.datawire.quark.runtime.RuntimeSpi.Factory.create();
        RuntimeApi api = new RuntimeApi(spi);
        return api;
    }
    public String _getClass() {
        return "quark.spi.RuntimeFactory";
    }
    public Object _getField(String name) {
        if ((name)==("factory") || ((Object)(name) != null && ((Object) (name)).equals("factory"))) {
            return RuntimeFactory.factory;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("factory") || ((Object)(name) != null && ((Object) (name)).equals("factory"))) {
            RuntimeFactory.factory = (RuntimeFactory) (value);
        }
    }
}
