package quark_md;

public class quark_spi_RuntimeSpi_codec_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_RuntimeSpi_codec_Method() {
        super("quark.Codec", "codec", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi.RuntimeSpi obj = (quark.spi.RuntimeSpi) (object);
        return (obj).codec();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
