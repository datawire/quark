package quark;

public class Functions {

    static quark_md.Root root = new quark_md.Root();


    /**
     * Serializes object tree into JSON. skips over fields starting with underscore
     */
    public static io.datawire.quark.runtime.JSONObject toJSON(Object obj, quark.reflect.Class cls) {
        io.datawire.quark.runtime.JSONObject result = new io.datawire.quark.runtime.JSONObject();
        if ((obj)==(null) || ((Object)(obj) != null && ((Object) (obj)).equals(null))) {
            (result).setNull();
            return result;
        }
        if ((cls)==(null) || ((Object)(cls) != null && ((Object) (cls)).equals(null))) {
            cls = quark.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(obj));
        }
        Integer idx = 0;
        if (((cls).name)==("quark.String") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.String"))) {
            (result).setString((String) (obj));
            return result;
        }
        if (((((((cls).name)==("quark.byte") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.byte"))) || (((cls).name)==("quark.short") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.short")))) || (((cls).name)==("quark.int") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.int")))) || (((cls).name)==("quark.long") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.long")))) || (((cls).name)==("quark.float") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.float")))) {
            (result).setNumber(obj);
            return result;
        }
        if (((cls).name)==("quark.List") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.List"))) {
            (result).setList();
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) (obj);
            while ((idx) < ((list).size())) {
                (result).setListItem(idx, Functions.toJSON((list).get(idx), null));
                idx = (idx) + (1);
            }
            return result;
        }
        if (((cls).name)==("quark.Map") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.Map"))) {
            (result).setObject();
            java.util.HashMap<String,Object> map = (java.util.HashMap<String,Object>) (obj);
            return result;
        }
        (result).setObjectItem(("$class"), ((new io.datawire.quark.runtime.JSONObject()).setString((cls).id)));
        java.util.ArrayList<quark.reflect.Field> fields = (cls).getFields();
        while ((idx) < ((fields).size())) {
            String fieldName = ((fields).get(idx)).name;
            if (!(Boolean.valueOf((fieldName).startsWith("_")))) {
                (result).setObjectItem((fieldName), (Functions.toJSON(((io.datawire.quark.runtime.QObject) (obj))._getField(fieldName), ((fields).get(idx)).getType())));
            }
            idx = (idx) + (1);
        }
        return result;
    }


    /**
     * deserialize json into provided result object. Skip over fields starting with underscore
     */
    public static Object fromJSON(quark.reflect.Class cls, Object result, io.datawire.quark.runtime.JSONObject json) {
        if (((json)==(null) || ((Object)(json) != null && ((Object) (json)).equals(null))) || ((json).isNull())) {
            return null;
        }
        Integer idx = 0;
        if ((result)==(null) || ((Object)(result) != null && ((Object) (result)).equals(null))) {
            if (((cls).name)==("quark.String") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.String"))) {
                String s = (json).getString();
                return s;
            }
            if (((cls).name)==("quark.float") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.float"))) {
                Double flt = (json).getNumber();
                return flt;
            }
            if (((cls).name)==("quark.int") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.int"))) {
                Integer i = ((int) Math.round((json).getNumber()));
                return i;
            }
            if (((cls).name)==("quark.bool") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.bool"))) {
                Boolean b = (json).getBool();
                return b;
            }
            result = (cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        }
        if (((cls).name)==("quark.List") || ((Object)((cls).name) != null && ((Object) ((cls).name)).equals("quark.List"))) {
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) (result);
            while ((idx) < ((json).size())) {
                (list).add(Functions.fromJSON(((cls).getParameters()).get(0), null, (json).getListItem(idx)));
                idx = (idx) + (1);
            }
            return list;
        }
        java.util.ArrayList<quark.reflect.Field> fields = (cls).getFields();
        while ((idx) < ((fields).size())) {
            quark.reflect.Field f = (fields).get(idx);
            idx = (idx) + (1);
            if (Boolean.valueOf(((f).name).startsWith("_"))) {
                continue;
            }
            if (!(((json).getObjectItem((f).name)).isNull())) {
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, Functions.fromJSON((f).getType(), null, (json).getObjectItem((f).name)));
            }
        }
        return result;
    }
}
