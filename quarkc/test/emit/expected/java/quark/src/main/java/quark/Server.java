package quark;

public class Server<T> implements io.datawire.quark.runtime.HTTPServlet, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_Server_quark_Object__ref = quark_md.Root.quark_Server_quark_Object__md;
    public T impl;
    public Server(T impl) {
        (this).impl = impl;
    }
    public void onHTTPRequest(io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {
        String body = (request).getBody();
        io.datawire.quark.runtime.JSONObject envelope = io.datawire.quark.runtime.JSONObject.parse(body);
        if ((((envelope).getObjectItem("$method"))==((envelope).undefined()) || (((envelope).getObjectItem("$method")) != null && ((envelope).getObjectItem("$method")).equals((envelope).undefined()))) || (((envelope).getObjectItem("rpc"))==((envelope).undefined()) || (((envelope).getObjectItem("rpc")) != null && ((envelope).getObjectItem("rpc")).equals((envelope).undefined())))) {
            (response).setBody((("Failed to understand request.\n\n") + (body)) + ("\n"));
            (response).setCode(400);
            (quark.concurrent.Context.runtime()).respond(request, response);
        } else {
            String methodName = ((envelope).getObjectItem("$method")).getString();
            io.datawire.quark.runtime.JSONObject json = (envelope).getObjectItem("rpc");
            quark.reflect.Method method = (((quark.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(this))).getField("impl")).getType()).getMethod(methodName);
            java.util.ArrayList<quark.reflect.Class> params = (method).getParameters();
            java.util.ArrayList<Object> args = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            Integer idx = 0;
            while ((idx) < ((params).size())) {
                (args).add(Functions.fromJSON((params).get(idx), null, (json).getListItem(idx)));
                idx = (idx) + (1);
            }
            quark.concurrent.Future result = (quark.concurrent.Future) ((method).invoke(this.impl, args));
            (result).onFinished(new ServerResponder(request, response));
        }
    }
    public void onServletError(String url, String message) {
        (quark.concurrent.Context.runtime()).fail(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message));
    }
    public String _getClass() {
        return "quark.Server<quark.Object>";
    }
    public Object _getField(String name) {
        if ((name)==("impl") || ((name) != null && (name).equals("impl"))) {
            return (this).impl;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("impl") || ((name) != null && (name).equals("impl"))) {
            (this).impl = (T) (value);
        }
    }
    public void serveHTTP(String url) {
        (quark.concurrent.Context.runtime()).serveHTTP(url, this);
    }
    /**
     * called after the servlet is successfully installed. The url will be the actual url used, important especially if ephemeral port was requested
     */
    public void onServletInit(String url, io.datawire.quark.runtime.Runtime runtime) {}
    /**
     * called when the servlet is removed
     */
    public void onServletEnd(String url) {}
}
