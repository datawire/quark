package quark.spi;

public class ServletProxy implements quark.Servlet, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_ServletProxy_ref = quark_md.Root.quark_spi_ServletProxy_md;
    public quark.Servlet servlet_impl;
    public quark.Runtime real_runtime;
    public ServletProxy(quark.Runtime real_runtime, quark.Servlet servlet_impl) {
        (this).real_runtime = real_runtime;
        (this).servlet_impl = servlet_impl;
    }
    public void onServletInit(String url, quark.Runtime runtime) {
        (this.servlet_impl).onServletInit(url, this.real_runtime);
    }
    public void onServletError(String url, String error) {
        (this.servlet_impl).onServletError(url, error);
    }
    public void onServletEnd(String url) {
        (this.servlet_impl).onServletEnd(url);
    }
    public String _getClass() {
        return "quark.spi.ServletProxy";
    }
    public Object _getField(String name) {
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            return (this).servlet_impl;
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            return (this).real_runtime;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("servlet_impl") || ((Object)(name) != null && ((Object) (name)).equals("servlet_impl"))) {
            (this).servlet_impl = (quark.Servlet) (value);
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            (this).real_runtime = (quark.Runtime) (value);
        }
    }
}
