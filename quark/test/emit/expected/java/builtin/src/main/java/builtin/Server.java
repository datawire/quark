package builtin;

public class Server<T> implements io.datawire.quark.runtime.HTTPServlet, io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_Server_Object__ref = builtin_md.Root.builtin_Server_Object__md;
    public T impl;
    public Server(T impl) {
        (this).impl = impl;
    }
    public void onHTTPRequest(io.datawire.quark.runtime.HTTPRequest request, io.datawire.quark.runtime.HTTPResponse response) {
        String body = (request).getBody();
        io.datawire.quark.runtime.JSONObject envelope = io.datawire.quark.runtime.JSONObject.parse(body);
        if (((((envelope).getObjectItem("$method"))==((envelope).undefined()) || (((envelope).getObjectItem("$method")) != null && ((envelope).getObjectItem("$method")).equals((envelope).undefined()))) || (((envelope).getObjectItem("rpc"))==((envelope).undefined()) || (((envelope).getObjectItem("rpc")) != null && ((envelope).getObjectItem("rpc")).equals((envelope).undefined())))) || ((((envelope).getObjectItem("rpc")).getObjectItem("$class"))==(((envelope).getObjectItem("rpc")).undefined()) || ((((envelope).getObjectItem("rpc")).getObjectItem("$class")) != null && (((envelope).getObjectItem("rpc")).getObjectItem("$class")).equals(((envelope).getObjectItem("rpc")).undefined())))) {
            (response).setBody((("Failed to understand request.\n\n") + (body)) + ("\n"));
            (response).setCode(400);
            (builtin.concurrent.Context.runtime()).respond(request, response);
        } else {
            String methodName = ((envelope).getObjectItem("$method")).getString();
            io.datawire.quark.runtime.JSONObject json = (envelope).getObjectItem("rpc");
            builtin.reflect.Method method = (((builtin.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(this))).getField("impl")).getType()).getMethod(methodName);
            builtin.reflect.Class argType = builtin.reflect.Class.get(((method).parameters).get(0));
            Object arg = (argType).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
            Object argument = Functions.fromJSON(arg, json);
            builtin.concurrent.Future result = (builtin.concurrent.Future) ((method).invoke(this.impl, new java.util.ArrayList(java.util.Arrays.asList(new Object[]{argument}))));
            (result).onFinished(new ServerResponder(request, response));
        }
    }
    public void onServletError(String url, String message) {
        (builtin.concurrent.Context.runtime()).fail(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message));
    }
    public String _getClass() {
        return "builtin.Server<Object>";
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
        (builtin.concurrent.Context.runtime()).serveHTTP(url, this);
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
