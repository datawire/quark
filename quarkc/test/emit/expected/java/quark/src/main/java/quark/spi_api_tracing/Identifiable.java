package quark.spi_api_tracing;

public class Identifiable implements io.datawire.quark.runtime.QObject {
    public static Identificator namer = new Identificator();
    public static quark.reflect.Class quark_spi_api_tracing_Identifiable_ref = quark_md.Root.quark_spi_api_tracing_Identifiable_md;
    public String id;
    public io.datawire.quark.runtime.Logger log;
    public Identifiable(io.datawire.quark.runtime.Logger log, String basename) {
        (this).id = (Identifiable.namer).next(basename);
        (this).log = log;
    }
    public String _getClass() {
        return "quark.spi_api_tracing.Identifiable";
    }
    public Object _getField(String name) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            return Identifiable.namer;
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            return (this).id;
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            return (this).log;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            Identifiable.namer = (Identificator) (value);
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            (this).id = (String) (value);
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            (this).log = (io.datawire.quark.runtime.Logger) (value);
        }
    }
}
