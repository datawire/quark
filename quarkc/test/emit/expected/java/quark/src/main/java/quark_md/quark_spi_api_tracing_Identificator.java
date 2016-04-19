package quark_md;

public class quark_spi_api_tracing_Identificator extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_spi_api_tracing_Identificator();
    public quark_spi_api_tracing_Identificator() {
        super("quark.spi_api_tracing.Identificator");
        (this).name = "quark.spi_api_tracing.Identificator";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.Lock", "lock"), new quark.reflect.Field("quark.int", "seq")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_spi_api_tracing_Identificator_next_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.spi_api_tracing.Identificator();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
