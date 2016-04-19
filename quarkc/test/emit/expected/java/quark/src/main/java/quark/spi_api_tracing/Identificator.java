package quark.spi_api_tracing;

public class Identificator implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_Identificator_ref = quark_md.Root.quark_spi_api_tracing_Identificator_md;
    public io.datawire.quark.runtime.Lock lock = new io.datawire.quark.runtime.Lock();
    public Integer seq = 0;
    public Identificator() {}
    public String next(Object what) {
        (this.lock).acquire();
        Integer n = this.seq;
        this.seq = (this.seq) + (1);
        (this.lock).release();
        String basename;
        if ((what)==(null) || ((Object)(what) != null && ((Object) (what)).equals(null))) {
            basename = "?null?";
        } else {
            quark.reflect.Class clz = quark.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(what));
            if ((clz)==(null) || ((Object)(clz) != null && ((Object) (clz)).equals(null))) {
                basename = (("?") + ((quark.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(this))).getName())) + ("?");
            } else {
                basename = (clz).getName();
            }
        }
        return ((basename) + ("-")) + (Integer.toString(n));
    }
    public String _getClass() {
        return "quark.spi_api_tracing.Identificator";
    }
    public Object _getField(String name) {
        if ((name)==("lock") || ((Object)(name) != null && ((Object) (name)).equals("lock"))) {
            return (this).lock;
        }
        if ((name)==("seq") || ((Object)(name) != null && ((Object) (name)).equals("seq"))) {
            return (this).seq;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("lock") || ((Object)(name) != null && ((Object) (name)).equals("lock"))) {
            (this).lock = (io.datawire.quark.runtime.Lock) (value);
        }
        if ((name)==("seq") || ((Object)(name) != null && ((Object) (name)).equals("seq"))) {
            (this).seq = (Integer) (value);
        }
    }
}
