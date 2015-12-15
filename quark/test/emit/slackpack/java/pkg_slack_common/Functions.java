package pkg_slack_common;

public class Functions {





/* BEGIN_BUILTIN */


    public static io.datawire.quark.runtime.JSONObject toJSON(Object obj) {
        io.datawire.quark.runtime.JSONObject result = new io.datawire.quark.runtime.JSONObject();
        if ((obj)==(null) || ((obj) != null && (obj).equals(null))) {
            (result).setNull();
            return result;
        }
        Class cls = new Class(io.datawire.quark.runtime.Builtins._getClass(obj));
        Integer idx = 0;
        if (((cls).name)==("String") || (((cls).name) != null && ((cls).name).equals("String"))) {
            (result).setString((String) (obj));
            return result;
        }
        if (((((((cls).name)==("byte") || (((cls).name) != null && ((cls).name).equals("byte"))) || (((cls).name)==("short") || (((cls).name) != null && ((cls).name).equals("short")))) || (((cls).name)==("int") || (((cls).name) != null && ((cls).name).equals("int")))) || (((cls).name)==("long") || (((cls).name) != null && ((cls).name).equals("long")))) || (((cls).name)==("float") || (((cls).name) != null && ((cls).name).equals("float")))) {
            (result).setNumber(obj);
            return result;
        }
        if (((cls).name)==("List") || (((cls).name) != null && ((cls).name).equals("List"))) {
            (result).setList();
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) (obj);
            while ((idx) < ((list).size())) {
                (result).setListItem(idx, Functions.toJSON((list).get(idx)));
                idx = (idx) + (1);
            }
            return result;
        }
        if (((cls).name)==("Map") || (((cls).name) != null && ((cls).name).equals("Map"))) {
            (result).setObject();
            java.util.HashMap<String,Object> map = (java.util.HashMap<String,Object>) (obj);
            return result;
        }
        (result).setObjectItem(("$class"), ((new io.datawire.quark.runtime.JSONObject()).setString((cls).id)));
        java.util.ArrayList<Field> fields = (cls).getFields();
        while ((idx) < ((fields).size())) {
            (result).setObjectItem((((fields).get(idx)).name), (Functions.toJSON(((io.datawire.quark.runtime.QObject) (obj))._getField(((fields).get(idx)).name))));
            idx = (idx) + (1);
        }
        return result;
    }

/* END_BUILTIN */

/* BEGIN_BUILTIN */


    public static Object fromJSON(Class cls, io.datawire.quark.runtime.JSONObject json) {
        if (((json)==(null) || ((json) != null && (json).equals(null))) || ((json).isNull())) {
            return null;
        }
        Integer idx = 0;
        if (((cls).name)==("List") || (((cls).name) != null && ((cls).name).equals("List"))) {
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) ((cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))));
            while ((idx) < ((json).size())) {
                (list).add(Functions.fromJSON(((cls).parameters).get(0), (json).getListItem(idx)));
                idx = (idx) + (1);
            }
            return list;
        }
        java.util.ArrayList<Field> fields = (cls).getFields();
        Object result = (cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        while ((idx) < ((fields).size())) {
            Field f = (fields).get(idx);
            idx = (idx) + (1);
            if ((((f).type).name)==("String") || ((((f).type).name) != null && (((f).type).name).equals("String"))) {
                String s = ((json).getObjectItem((f).name)).getString();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, s);
                continue;
            }
            if ((((f).type).name)==("float") || ((((f).type).name) != null && (((f).type).name).equals("float"))) {
                Double flt = ((json).getObjectItem((f).name)).getNumber();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, flt);
                continue;
            }
            if ((((f).type).name)==("int") || ((((f).type).name) != null && (((f).type).name).equals("int"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Integer i = ((int) Math.round(((json).getObjectItem((f).name)).getNumber()));
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, i);
                }
                continue;
            }
            if ((((f).type).name)==("bool") || ((((f).type).name) != null && (((f).type).name).equals("bool"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Boolean b = ((json).getObjectItem((f).name)).getBool();
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, b);
                }
                continue;
            }
            ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, Functions.fromJSON((f).type, (json).getObjectItem((f).name)));
        }
        return result;
    }

/* END_BUILTIN */


    public static void main() {
        slack.Client cli = new slack.Client(null, "fake-token", new pkg.Handler());
        (cli).onWSMessage(null, "{\"type\": \"hello\"}");
        (cli).onWSMessage(null, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");
    }


    public static Object _construct(String className, java.util.ArrayList<Object> args) {
        if ((className)==("Class") || ((className) != null && (className).equals("Class"))) {
            return new Class((String) ((args).get(0)));
        }
        if ((className)==("Field") || ((className) != null && (className).equals("Field"))) {
            return new Field((Class) ((args).get(0)), (String) ((args).get(1)));
        }
        if ((className)==("List<Object>") || ((className) != null && (className).equals("List<Object>"))) {
            return new java.util.ArrayList<Object>();
        }
        if ((className)==("List<Field>") || ((className) != null && (className).equals("List<Field>"))) {
            return new java.util.ArrayList<Field>();
        }
        if ((className)==("List<Class>") || ((className) != null && (className).equals("List<Class>"))) {
            return new java.util.ArrayList<Class>();
        }
        if ((className)==("List<String>") || ((className) != null && (className).equals("List<String>"))) {
            return new java.util.ArrayList<String>();
        }
        if ((className)==("Map<Object,Object>") || ((className) != null && (className).equals("Map<Object,Object>"))) {
            return new java.util.HashMap<Object,Object>();
        }
        if ((className)==("Map<String,Object>") || ((className) != null && (className).equals("Map<String,Object>"))) {
            return new java.util.HashMap<String,Object>();
        }
        if ((className)==("ResponseHolder") || ((className) != null && (className).equals("ResponseHolder"))) {
            return new ResponseHolder();
        }
        if ((className)==("Client") || ((className) != null && (className).equals("Client"))) {
            return new Client((io.datawire.quark.runtime.Runtime) ((args).get(0)), (String) ((args).get(1)));
        }
        if ((className)==("Server<Object>") || ((className) != null && (className).equals("Server<Object>"))) {
            return new Server<Object>((io.datawire.quark.runtime.Runtime) ((args).get(0)), (args).get(1));
        }
        if ((className)==("slack.event.SlackEvent") || ((className) != null && (className).equals("slack.event.SlackEvent"))) {
            return new slack.event.SlackEvent();
        }
        if ((className)==("slack.event.SlackError") || ((className) != null && (className).equals("slack.event.SlackError"))) {
            return new slack.event.SlackError();
        }
        if ((className)==("slack.event.Hello") || ((className) != null && (className).equals("slack.event.Hello"))) {
            return new slack.event.Hello();
        }
        if ((className)==("slack.event.Message") || ((className) != null && (className).equals("slack.event.Message"))) {
            return new slack.event.Message();
        }
        if ((className)==("slack.event.Edited") || ((className) != null && (className).equals("slack.event.Edited"))) {
            return new slack.event.Edited();
        }
        if ((className)==("slack.User") || ((className) != null && (className).equals("slack.User"))) {
            return new slack.User((slack.Client) ((args).get(0)), (String) ((args).get(1)));
        }
        if ((className)==("slack.Channel") || ((className) != null && (className).equals("slack.Channel"))) {
            return new slack.Channel((slack.Client) ((args).get(0)), (String) ((args).get(1)));
        }
        if ((className)==("slack.Client") || ((className) != null && (className).equals("slack.Client"))) {
            return new slack.Client((io.datawire.quark.runtime.Runtime) ((args).get(0)), (String) ((args).get(1)), (slack.SlackHandler) ((args).get(2)));
        }
        if ((className)==("pkg.Handler") || ((className) != null && (className).equals("pkg.Handler"))) {
            return new pkg.Handler();
        }
        return null;
    }


    public static java.util.ArrayList<Field> _fields(String className) {
        if ((className)==("Class") || ((className) != null && (className).equals("Class"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "id"), new Field(new Class("String"), "name"), new Field(new Class("List<Class>"), "parameters")}));
        }
        if ((className)==("Field") || ((className) != null && (className).equals("Field"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Class"), "type"), new Field(new Class("String"), "name")}));
        }
        if ((className)==("List<Object>") || ((className) != null && (className).equals("List<Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<Field>") || ((className) != null && (className).equals("List<Field>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<Class>") || ((className) != null && (className).equals("List<Class>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("List<String>") || ((className) != null && (className).equals("List<String>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("Map<Object,Object>") || ((className) != null && (className).equals("Map<Object,Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("Map<String,Object>") || ((className) != null && (className).equals("Map<String,Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        if ((className)==("ResponseHolder") || ((className) != null && (className).equals("ResponseHolder"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("HTTPResponse"), "response"), new Field(new Class("String"), "failure")}));
        }
        if ((className)==("Client") || ((className) != null && (className).equals("Client"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "url")}));
        }
        if ((className)==("Server<Object>") || ((className) != null && (className).equals("Server<Object>"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Runtime"), "runtime"), new Field(new Class("Object"), "impl")}));
        }
        if ((className)==("slack.event.SlackEvent") || ((className) != null && (className).equals("slack.event.SlackEvent"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp")}));
        }
        if ((className)==("slack.event.SlackError") || ((className) != null && (className).equals("slack.event.SlackError"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp"), new Field(new Class("int"), "code"), new Field(new Class("String"), "text")}));
        }
        if ((className)==("slack.event.Hello") || ((className) != null && (className).equals("slack.event.Hello"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp")}));
        }
        if ((className)==("slack.event.Message") || ((className) != null && (className).equals("slack.event.Message"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("String"), "type"), new Field(new Class("slack.User"), "user"), new Field(new Class("slack.Channel"), "channel"), new Field(new Class("String"), "timestamp"), new Field(new Class("String"), "subtype"), new Field(new Class("bool"), "hidden"), new Field(new Class("String"), "text"), new Field(new Class("slack.event.Edited"), "edited")}));
        }
        if ((className)==("slack.event.Edited") || ((className) != null && (className).equals("slack.event.Edited"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("slack.User"), "user"), new Field(new Class("String"), "timestamp")}));
        }
        if ((className)==("slack.User") || ((className) != null && (className).equals("slack.User"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("slack.Client"), "client"), new Field(new Class("String"), "user")}));
        }
        if ((className)==("slack.Channel") || ((className) != null && (className).equals("slack.Channel"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("slack.Client"), "client"), new Field(new Class("String"), "channel")}));
        }
        if ((className)==("slack.Client") || ((className) != null && (className).equals("slack.Client"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Field(new Class("Runtime"), "runtime"), new Field(new Class("String"), "token"), new Field(new Class("slack.SlackHandler"), "handler"), new Field(new Class("int"), "event_id"), new Field(new Class("WebSocket"), "socket")}));
        }
        if ((className)==("pkg.Handler") || ((className) != null && (className).equals("pkg.Handler"))) {
            return new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        }
        return (java.util.ArrayList<Field>) (null);
    }


    public static void _class(Class cls) {
        if (((cls).id)==("Class") || (((cls).id) != null && ((cls).id).equals("Class"))) {
            (cls).name = "Class";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("Field") || (((cls).id) != null && ((cls).id).equals("Field"))) {
            (cls).name = "Field";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("List<Object>") || (((cls).id) != null && ((cls).id).equals("List<Object>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Object")}));
            return;
        }
        if (((cls).id)==("List<Field>") || (((cls).id) != null && ((cls).id).equals("List<Field>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Field")}));
            return;
        }
        if (((cls).id)==("List<Class>") || (((cls).id) != null && ((cls).id).equals("List<Class>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Class")}));
            return;
        }
        if (((cls).id)==("List<String>") || (((cls).id) != null && ((cls).id).equals("List<String>"))) {
            (cls).name = "List";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("String")}));
            return;
        }
        if (((cls).id)==("Map<Object,Object>") || (((cls).id) != null && ((cls).id).equals("Map<Object,Object>"))) {
            (cls).name = "Map";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Object"), new Class("Object")}));
            return;
        }
        if (((cls).id)==("Map<String,Object>") || (((cls).id) != null && ((cls).id).equals("Map<String,Object>"))) {
            (cls).name = "Map";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("String"), new Class("Object")}));
            return;
        }
        if (((cls).id)==("ResponseHolder") || (((cls).id) != null && ((cls).id).equals("ResponseHolder"))) {
            (cls).name = "ResponseHolder";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("Service") || (((cls).id) != null && ((cls).id).equals("Service"))) {
            (cls).name = "Service";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("Client") || (((cls).id) != null && ((cls).id).equals("Client"))) {
            (cls).name = "Client";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("Server<Object>") || (((cls).id) != null && ((cls).id).equals("Server<Object>"))) {
            (cls).name = "Server";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Class("Object")}));
            return;
        }
        if (((cls).id)==("slack.event.SlackEvent") || (((cls).id) != null && ((cls).id).equals("slack.event.SlackEvent"))) {
            (cls).name = "slack.event.SlackEvent";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.event.SlackError") || (((cls).id) != null && ((cls).id).equals("slack.event.SlackError"))) {
            (cls).name = "slack.event.SlackError";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.event.Hello") || (((cls).id) != null && ((cls).id).equals("slack.event.Hello"))) {
            (cls).name = "slack.event.Hello";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.event.Message") || (((cls).id) != null && ((cls).id).equals("slack.event.Message"))) {
            (cls).name = "slack.event.Message";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.event.Edited") || (((cls).id) != null && ((cls).id).equals("slack.event.Edited"))) {
            (cls).name = "slack.event.Edited";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.SlackHandler") || (((cls).id) != null && ((cls).id).equals("slack.SlackHandler"))) {
            (cls).name = "slack.SlackHandler";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.User") || (((cls).id) != null && ((cls).id).equals("slack.User"))) {
            (cls).name = "slack.User";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.Channel") || (((cls).id) != null && ((cls).id).equals("slack.Channel"))) {
            (cls).name = "slack.Channel";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("slack.Client") || (((cls).id) != null && ((cls).id).equals("slack.Client"))) {
            (cls).name = "slack.Client";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        if (((cls).id)==("pkg.Handler") || (((cls).id) != null && ((cls).id).equals("pkg.Handler"))) {
            (cls).name = "pkg.Handler";
            (cls).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            return;
        }
        (cls).name = (cls).id;
    }


    public static Object _invoke(String className, Object object, String method, java.util.ArrayList<Object> args) {
        if ((className)==("Class") || ((className) != null && (className).equals("Class"))) {
            if ((method)==("getId") || ((method) != null && (method).equals("getId"))) {
                Class tmp_0 = (Class) (object);
                return (tmp_0).getId();
            }
            if ((method)==("getName") || ((method) != null && (method).equals("getName"))) {
                Class tmp_1 = (Class) (object);
                return (tmp_1).getName();
            }
            if ((method)==("getParameters") || ((method) != null && (method).equals("getParameters"))) {
                Class tmp_2 = (Class) (object);
                return (tmp_2).getParameters();
            }
            if ((method)==("construct") || ((method) != null && (method).equals("construct"))) {
                Class tmp_3 = (Class) (object);
                return (tmp_3).construct((java.util.ArrayList<Object>) ((args).get(0)));
            }
            if ((method)==("getFields") || ((method) != null && (method).equals("getFields"))) {
                Class tmp_4 = (Class) (object);
                return (tmp_4).getFields();
            }
            if ((method)==("getField") || ((method) != null && (method).equals("getField"))) {
                Class tmp_5 = (Class) (object);
                return (tmp_5).getField((String) ((args).get(0)));
            }
            if ((method)==("invoke") || ((method) != null && (method).equals("invoke"))) {
                Class tmp_6 = (Class) (object);
                return (tmp_6).invoke((args).get(0), (String) ((args).get(1)), (java.util.ArrayList<Object>) ((args).get(2)));
            }
        }
        if ((className)==("Field") || ((className) != null && (className).equals("Field"))) {}
        if ((className)==("List<Object>") || ((className) != null && (className).equals("List<Object>"))) {}
        if ((className)==("List<Field>") || ((className) != null && (className).equals("List<Field>"))) {}
        if ((className)==("List<Class>") || ((className) != null && (className).equals("List<Class>"))) {}
        if ((className)==("List<String>") || ((className) != null && (className).equals("List<String>"))) {}
        if ((className)==("Map<Object,Object>") || ((className) != null && (className).equals("Map<Object,Object>"))) {}
        if ((className)==("Map<String,Object>") || ((className) != null && (className).equals("Map<String,Object>"))) {}
        if ((className)==("ResponseHolder") || ((className) != null && (className).equals("ResponseHolder"))) {
            if ((method)==("onHTTPResponse") || ((method) != null && (method).equals("onHTTPResponse"))) {
                ResponseHolder tmp_7 = (ResponseHolder) (object);
                (tmp_7).onHTTPResponse((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
                return null;
            }
            if ((method)==("onHTTPError") || ((method) != null && (method).equals("onHTTPError"))) {
                ResponseHolder tmp_8 = (ResponseHolder) (object);
                (tmp_8).onHTTPError((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (String) ((args).get(1)));
                return null;
            }
        }
        if ((className)==("Service") || ((className) != null && (className).equals("Service"))) {
            if ((method)==("getURL") || ((method) != null && (method).equals("getURL"))) {
                Service tmp_9 = (Service) (object);
                return (tmp_9).getURL();
            }
            if ((method)==("getRuntime") || ((method) != null && (method).equals("getRuntime"))) {
                Service tmp_10 = (Service) (object);
                return (tmp_10).getRuntime();
            }
            if ((method)==("rpc") || ((method) != null && (method).equals("rpc"))) {
                Service tmp_11 = (Service) (object);
                return (tmp_11).rpc((String) ((args).get(0)), (args).get(1));
            }
        }
        if ((className)==("Client") || ((className) != null && (className).equals("Client"))) {
            if ((method)==("getRuntime") || ((method) != null && (method).equals("getRuntime"))) {
                Client tmp_12 = (Client) (object);
                return (tmp_12).getRuntime();
            }
            if ((method)==("getURL") || ((method) != null && (method).equals("getURL"))) {
                Client tmp_13 = (Client) (object);
                return (tmp_13).getURL();
            }
        }
        if ((className)==("Server<Object>") || ((className) != null && (className).equals("Server<Object>"))) {
            if ((method)==("getRuntime") || ((method) != null && (method).equals("getRuntime"))) {
                Server<Object> tmp_14 = (Server<Object>) (object);
                return (tmp_14).getRuntime();
            }
            if ((method)==("onHTTPRequest") || ((method) != null && (method).equals("onHTTPRequest"))) {
                Server<Object> tmp_15 = (Server<Object>) (object);
                (tmp_15).onHTTPRequest((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
                return null;
            }
            if ((method)==("onServletError") || ((method) != null && (method).equals("onServletError"))) {
                Server<Object> tmp_16 = (Server<Object>) (object);
                (tmp_16).onServletError((String) ((args).get(0)), (String) ((args).get(1)));
                return null;
            }
        }
        if ((className)==("slack.event.SlackEvent") || ((className) != null && (className).equals("slack.event.SlackEvent"))) {
            if ((method)==("load") || ((method) != null && (method).equals("load"))) {
                slack.event.SlackEvent tmp_17 = (slack.event.SlackEvent) (object);
                (tmp_17).load((slack.Client) ((args).get(0)), (io.datawire.quark.runtime.JSONObject) ((args).get(1)));
                return null;
            }
            if ((method)==("dispatch") || ((method) != null && (method).equals("dispatch"))) {
                slack.event.SlackEvent tmp_18 = (slack.event.SlackEvent) (object);
                (tmp_18).dispatch((slack.SlackHandler) ((args).get(0)));
                return null;
            }
        }
        if ((className)==("slack.event.SlackError") || ((className) != null && (className).equals("slack.event.SlackError"))) {
            if ((method)==("load") || ((method) != null && (method).equals("load"))) {
                slack.event.SlackError tmp_19 = (slack.event.SlackError) (object);
                (tmp_19).load((slack.Client) ((args).get(0)), (io.datawire.quark.runtime.JSONObject) ((args).get(1)));
                return null;
            }
            if ((method)==("dispatch") || ((method) != null && (method).equals("dispatch"))) {
                slack.event.SlackError tmp_20 = (slack.event.SlackError) (object);
                (tmp_20).dispatch((slack.SlackHandler) ((args).get(0)));
                return null;
            }
        }
        if ((className)==("slack.event.Hello") || ((className) != null && (className).equals("slack.event.Hello"))) {
            if ((method)==("dispatch") || ((method) != null && (method).equals("dispatch"))) {
                slack.event.Hello tmp_21 = (slack.event.Hello) (object);
                (tmp_21).dispatch((slack.SlackHandler) ((args).get(0)));
                return null;
            }
            if ((method)==("load") || ((method) != null && (method).equals("load"))) {
                slack.event.Hello tmp_22 = (slack.event.Hello) (object);
                (tmp_22).load((slack.Client) ((args).get(0)), (io.datawire.quark.runtime.JSONObject) ((args).get(1)));
                return null;
            }
        }
        if ((className)==("slack.event.Message") || ((className) != null && (className).equals("slack.event.Message"))) {
            if ((method)==("load") || ((method) != null && (method).equals("load"))) {
                slack.event.Message tmp_23 = (slack.event.Message) (object);
                (tmp_23).load((slack.Client) ((args).get(0)), (io.datawire.quark.runtime.JSONObject) ((args).get(1)));
                return null;
            }
            if ((method)==("dispatch") || ((method) != null && (method).equals("dispatch"))) {
                slack.event.Message tmp_24 = (slack.event.Message) (object);
                (tmp_24).dispatch((slack.SlackHandler) ((args).get(0)));
                return null;
            }
        }
        if ((className)==("slack.event.Edited") || ((className) != null && (className).equals("slack.event.Edited"))) {}
        if ((className)==("slack.SlackHandler") || ((className) != null && (className).equals("slack.SlackHandler"))) {
            if ((method)==("onSlackEvent") || ((method) != null && (method).equals("onSlackEvent"))) {
                slack.SlackHandler tmp_25 = (slack.SlackHandler) (object);
                (tmp_25).onSlackEvent((slack.event.SlackEvent) ((args).get(0)));
                return null;
            }
            if ((method)==("onHello") || ((method) != null && (method).equals("onHello"))) {
                slack.SlackHandler tmp_26 = (slack.SlackHandler) (object);
                (tmp_26).onHello((slack.event.Hello) ((args).get(0)));
                return null;
            }
            if ((method)==("onSlackError") || ((method) != null && (method).equals("onSlackError"))) {
                slack.SlackHandler tmp_27 = (slack.SlackHandler) (object);
                (tmp_27).onSlackError((slack.event.SlackError) ((args).get(0)));
                return null;
            }
            if ((method)==("onMessage") || ((method) != null && (method).equals("onMessage"))) {
                slack.SlackHandler tmp_28 = (slack.SlackHandler) (object);
                (tmp_28).onMessage((slack.event.Message) ((args).get(0)));
                return null;
            }
        }
        if ((className)==("slack.User") || ((className) != null && (className).equals("slack.User"))) {}
        if ((className)==("slack.Channel") || ((className) != null && (className).equals("slack.Channel"))) {
            if ((method)==("send") || ((method) != null && (method).equals("send"))) {
                slack.Channel tmp_29 = (slack.Channel) (object);
                (tmp_29).send((String) ((args).get(0)));
                return null;
            }
        }
        if ((className)==("slack.Client") || ((className) != null && (className).equals("slack.Client"))) {
            if ((method)==("connect") || ((method) != null && (method).equals("connect"))) {
                slack.Client tmp_30 = (slack.Client) (object);
                (tmp_30).connect();
                return null;
            }
            if ((method)==("request") || ((method) != null && (method).equals("request"))) {
                slack.Client tmp_31 = (slack.Client) (object);
                (tmp_31).request((String) ((args).get(0)), (java.util.HashMap<String,Object>) ((args).get(1)), (io.datawire.quark.runtime.HTTPHandler) ((args).get(2)));
                return null;
            }
            if ((method)==("ws_connect") || ((method) != null && (method).equals("ws_connect"))) {
                slack.Client tmp_32 = (slack.Client) (object);
                (tmp_32).ws_connect((String) ((args).get(0)));
                return null;
            }
            if ((method)==("ws_send") || ((method) != null && (method).equals("ws_send"))) {
                slack.Client tmp_33 = (slack.Client) (object);
                (tmp_33).ws_send((String) ((args).get(0)));
                return null;
            }
            if ((method)==("onWSConnected") || ((method) != null && (method).equals("onWSConnected"))) {
                slack.Client tmp_34 = (slack.Client) (object);
                (tmp_34).onWSConnected((io.datawire.quark.runtime.WebSocket) ((args).get(0)));
                return null;
            }
            if ((method)==("onWSClose") || ((method) != null && (method).equals("onWSClose"))) {
                slack.Client tmp_35 = (slack.Client) (object);
                (tmp_35).onWSClose((io.datawire.quark.runtime.WebSocket) ((args).get(0)));
                return null;
            }
            if ((method)==("onWSError") || ((method) != null && (method).equals("onWSError"))) {
                slack.Client tmp_36 = (slack.Client) (object);
                (tmp_36).onWSError((io.datawire.quark.runtime.WebSocket) ((args).get(0)));
                return null;
            }
            if ((method)==("construct") || ((method) != null && (method).equals("construct"))) {
                slack.Client tmp_37 = (slack.Client) (object);
                return (tmp_37).construct((String) ((args).get(0)));
            }
            if ((method)==("onWSMessage") || ((method) != null && (method).equals("onWSMessage"))) {
                slack.Client tmp_38 = (slack.Client) (object);
                (tmp_38).onWSMessage((io.datawire.quark.runtime.WebSocket) ((args).get(0)), (String) ((args).get(1)));
                return null;
            }
            if ((method)==("onHTTPResponse") || ((method) != null && (method).equals("onHTTPResponse"))) {
                slack.Client tmp_39 = (slack.Client) (object);
                (tmp_39).onHTTPResponse((io.datawire.quark.runtime.HTTPRequest) ((args).get(0)), (io.datawire.quark.runtime.HTTPResponse) ((args).get(1)));
                return null;
            }
        }
        if ((className)==("pkg.Handler") || ((className) != null && (className).equals("pkg.Handler"))) {
            if ((method)==("onSlackEvent") || ((method) != null && (method).equals("onSlackEvent"))) {
                pkg.Handler tmp_40 = (pkg.Handler) (object);
                (tmp_40).onSlackEvent((slack.event.SlackEvent) ((args).get(0)));
                return null;
            }
        }
        return null;
    }
}
