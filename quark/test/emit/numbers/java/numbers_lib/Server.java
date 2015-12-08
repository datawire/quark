package numbers_lib;

/* BEGIN_BUILTIN */

public class Server<T> implements io.datawire.quark.runtime.HTTPServlet, io.datawire.quark.runtime.QObject {
    public io.datawire.quark.runtime.Runtime runtime;
    public T impl;
    public Server(io.datawire.quark.runtime.Runtime runtime, T impl) {
        (this).runtime = runtime;
        (this).impl = impl;
    }
    public io.datawire.quark.runtime.Runtime getRuntime() {
        return (this).runtime;
    }
    public void onHTTPRequest(io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {}
    public String _getClass() {
        return "Server<Object>";
    }
    public Object _getField(String name) {
        if ((name)==("runtime") || ((name) != null && (name).equals("runtime"))) {
            return (this).runtime;
        }
        if ((name)==("impl") || ((name) != null && (name).equals("impl"))) {
            return (this).impl;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("runtime") || ((name) != null && (name).equals("runtime"))) {
            (this).runtime = (io.datawire.quark.runtime.Runtime) (value);
        }
        if ((name)==("impl") || ((name) != null && (name).equals("impl"))) {
            (this).impl = (T) (value);
        }
    }
    /**
     * called after the servlet is successfully installed. The url will be the actual url used, important especially if ephemeral port was requested
     */
    public void onServletInit(String url, io.datawire.quark.runtime.Runtime runtime) {}
    /**
     * called if the servlet could not be installed
     */
    public void onServletError(String url, String error) {}
    /**
     * called when the servlet is removed
     */
    public void onServletEnd(String url) {}
}
/* END_BUILTIN */
