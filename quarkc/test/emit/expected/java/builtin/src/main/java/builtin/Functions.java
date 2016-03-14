package builtin;

public class Functions {

    static builtin_md.Root root = new builtin_md.Root();


    /**
     * Serializes object tree into JSON. skips over fields starting with underscore
     */
    public static io.datawire.quark.runtime.JSONObject toJSON(Object obj, builtin.reflect.Class cls) {
        io.datawire.quark.runtime.JSONObject result = new io.datawire.quark.runtime.JSONObject();
        if ((obj)==(null) || ((obj) != null && (obj).equals(null))) {
            (result).setNull();
            return result;
        }
        if ((cls)==(null) || ((cls) != null && (cls).equals(null))) {
            cls = builtin.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(obj));
        }
        Integer idx = 0;
        if (((cls).name)==("builtin.String") || (((cls).name) != null && ((cls).name).equals("builtin.String"))) {
            (result).setString((String) (obj));
            return result;
        }
        if (((((((cls).name)==("builtin.byte") || (((cls).name) != null && ((cls).name).equals("builtin.byte"))) || (((cls).name)==("builtin.short") || (((cls).name) != null && ((cls).name).equals("builtin.short")))) || (((cls).name)==("builtin.int") || (((cls).name) != null && ((cls).name).equals("builtin.int")))) || (((cls).name)==("builtin.long") || (((cls).name) != null && ((cls).name).equals("builtin.long")))) || (((cls).name)==("builtin.float") || (((cls).name) != null && ((cls).name).equals("builtin.float")))) {
            (result).setNumber(obj);
            return result;
        }
        if (((cls).name)==("builtin.List") || (((cls).name) != null && ((cls).name).equals("builtin.List"))) {
            (result).setList();
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) (obj);
            while ((idx) < ((list).size())) {
                (result).setListItem(idx, Functions.toJSON((list).get(idx), null));
                idx = (idx) + (1);
            }
            return result;
        }
        if (((cls).name)==("builtin.Map") || (((cls).name) != null && ((cls).name).equals("builtin.Map"))) {
            (result).setObject();
            java.util.HashMap<String,Object> map = (java.util.HashMap<String,Object>) (obj);
            return result;
        }
        (result).setObjectItem(("$class"), ((new io.datawire.quark.runtime.JSONObject()).setString((cls).id)));
        java.util.ArrayList<builtin.reflect.Field> fields = (cls).getFields();
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
    public static Object fromJSON(builtin.reflect.Class cls, Object result, io.datawire.quark.runtime.JSONObject json) {
        if (((json)==(null) || ((json) != null && (json).equals(null))) || ((json).isNull())) {
            return null;
        }
        Integer idx = 0;
        if ((result)==(null) || ((result) != null && (result).equals(null))) {
            if (((cls).name)==("builtin.String") || (((cls).name) != null && ((cls).name).equals("builtin.String"))) {
                String s = (json).getString();
                return s;
            }
            if (((cls).name)==("builtin.float") || (((cls).name) != null && ((cls).name).equals("builtin.float"))) {
                Double flt = (json).getNumber();
                return flt;
            }
            if (((cls).name)==("builtin.int") || (((cls).name) != null && ((cls).name).equals("builtin.int"))) {
                Integer i = ((int) Math.round((json).getNumber()));
                return i;
            }
            if (((cls).name)==("builtin.bool") || (((cls).name) != null && ((cls).name).equals("builtin.bool"))) {
                Boolean b = (json).getBool();
                return b;
            }
            result = (cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        }
        if (((cls).name)==("builtin.List") || (((cls).name) != null && ((cls).name).equals("builtin.List"))) {
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) (result);
            while ((idx) < ((json).size())) {
                (list).add(Functions.fromJSON(((cls).getParameters()).get(0), null, (json).getListItem(idx)));
                idx = (idx) + (1);
            }
            return list;
        }
        java.util.ArrayList<builtin.reflect.Field> fields = (cls).getFields();
        while ((idx) < ((fields).size())) {
            builtin.reflect.Field f = (fields).get(idx);
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
