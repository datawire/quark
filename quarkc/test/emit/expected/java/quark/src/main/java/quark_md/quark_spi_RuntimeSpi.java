package quark_md;

public class quark_spi_RuntimeSpi extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_RuntimeSpi();
    public quark_spi_RuntimeSpi() {
        super("quark.spi.RuntimeSpi");
        (this).name = "quark.spi.RuntimeSpi";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_RuntimeSpi_open_Method(), new quark_spi_RuntimeSpi_request_Method(), new quark_spi_RuntimeSpi_schedule_Method(), new quark_spi_RuntimeSpi_codec_Method(), new quark_spi_RuntimeSpi_serveHTTP_Method(), new quark_spi_RuntimeSpi_serveWS_Method(), new quark_spi_RuntimeSpi_respond_Method(), new quark_spi_RuntimeSpi_fail_Method(), new quark_spi_RuntimeSpi_logger_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
