package quark_md;

public class quark_spi_RuntimeApi extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_RuntimeApi();
    public quark_spi_RuntimeApi() {
        super("quark.spi.RuntimeApi");
        (this).name = "quark.spi.RuntimeApi";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.spi.RuntimeSpi", "impl")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_RuntimeApi_open_Method(), new quark_spi_RuntimeApi_request_Method(), new quark_spi_RuntimeApi_schedule_Method(), new quark_spi_RuntimeApi_codec_Method(), new quark_spi_RuntimeApi_serveHTTP_Method(), new quark_spi_RuntimeApi_serveWS_Method(), new quark_spi_RuntimeApi_respond_Method(), new quark_spi_RuntimeApi_fail_Method(), new quark_spi_RuntimeApi_logger_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi.RuntimeApi((quark.spi.RuntimeSpi) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
