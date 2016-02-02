package builtin;

public class Functions {
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
    public static Object fromJSON(Object result, io.datawire.quark.runtime.JSONObject json) {
        if (((json)==(null) || ((json) != null && (json).equals(null))) || ((json).isNull())) {
            return null;
        }
        Integer idx = 0;
        builtin.reflect.Class cls = builtin.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(result));
        if (((cls).name)==("builtin.List") || (((cls).name) != null && ((cls).name).equals("builtin.List"))) {
            java.util.ArrayList<Object> list = (java.util.ArrayList<Object>) (result);
            while ((idx) < ((json).size())) {
                (list).add(Functions.fromJSON((((cls).parameters).get(0)).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))), (json).getListItem(idx)));
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
            if ((((f).getType()).name)==("builtin.String") || ((((f).getType()).name) != null && (((f).getType()).name).equals("builtin.String"))) {
                String s = ((json).getObjectItem((f).name)).getString();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, s);
                continue;
            }
            if ((((f).getType()).name)==("builtin.float") || ((((f).getType()).name) != null && (((f).getType()).name).equals("builtin.float"))) {
                Double flt = ((json).getObjectItem((f).name)).getNumber();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, flt);
                continue;
            }
            if ((((f).getType()).name)==("builtin.int") || ((((f).getType()).name) != null && (((f).getType()).name).equals("builtin.int"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Integer i = ((int) Math.round(((json).getObjectItem((f).name)).getNumber()));
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, i);
                }
                continue;
            }
            if ((((f).getType()).name)==("builtin.bool") || ((((f).getType()).name) != null && (((f).getType()).name).equals("builtin.bool"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Boolean b = ((json).getObjectItem((f).name)).getBool();
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, b);
                }
                continue;
            }
            ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, Functions.fromJSON(((f).getType()).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))), (json).getObjectItem((f).name)));
        }
        return result;
    }
}
