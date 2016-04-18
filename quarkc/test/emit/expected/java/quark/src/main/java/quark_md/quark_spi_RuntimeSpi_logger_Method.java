package quark_md;

public class quark_spi_RuntimeSpi_logger_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_RuntimeSpi_logger_Method() {
        super("quark.Logger", "logger", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.String"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi.RuntimeSpi obj = (quark.spi.RuntimeSpi) (object);
        return (obj).logger((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
