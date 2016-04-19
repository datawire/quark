package quark.spi_api_tracing;

public class ServletProxy extends Identifiable implements quark.Servlet, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_ServletProxy_ref = quark_md.Root.quark_spi_api_tracing_ServletProxy_md;
    public quark.Servlet servlet_impl;
    public RuntimeProxy real_runtime;
    public ServletProxy(io.datawire.quark.runtime.Logger log, String basename, RuntimeProxy real_runtime, quark.Servlet servlet_impl) {
        super(log, basename);
        (this).real_runtime = real_runtime;
        (this).servlet_impl = servlet_impl;
    }
    public void onServletInit(String url, quark.Runtime runtime) {
        ((this).log).debug(((((((this).id) + (".onServletInit(")) + (Functions.quote(url))) + (", ")) + ((this.real_runtime).id)) + (")"));
        (this.servlet_impl).onServletInit(url, this.real_runtime);
    }
    public void onServletError(String url, String error) {
        ((this).log).debug(((((((this).id) + (".onServletError(")) + (Functions.quote(url))) + (", ")) + (Functions.quote(error))) + (")"));
        (this.servlet_impl).onServletError(url, error);
    }
    public void onServletEnd(String url) {
        ((this).log).debug(((((this).id) + (".onServletEnd(")) + (Functions.quote(url))) + (")"));
        (this.servlet_impl).onServletEnd(url);
    }
    public String _getClass() {
        return "quark.spi_api_tracing.ServletProxy";
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
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            return (this).servlet_impl;
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            return (this).real_runtime;
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
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            (this).servlet_impl = (quark.Servlet) (value);
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            (this).real_runtime = (RuntimeProxy) (value);
        }
    }
}
