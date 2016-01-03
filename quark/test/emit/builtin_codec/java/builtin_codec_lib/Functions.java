package builtin_codec_lib;

public class Functions {/* BEGIN_BUILTIN */


    public static io.datawire.quark.runtime.JSONObject toJSON(Object obj) {
        io.datawire.quark.runtime.JSONObject result = new io.datawire.quark.runtime.JSONObject();
        if ((obj)==(null) || ((obj) != null && (obj).equals(null))) {
            (result).setNull();
            return result;
        }
        reflect.Class cls = reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(obj));
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
        java.util.ArrayList<reflect.Field> fields = (cls).getFields();
        while ((idx) < ((fields).size())) {
            (result).setObjectItem((((fields).get(idx)).name), (Functions.toJSON(((io.datawire.quark.runtime.QObject) (obj))._getField(((fields).get(idx)).name))));
            idx = (idx) + (1);
        }
        return result;
    }

/* END_BUILTIN */

/* BEGIN_BUILTIN */


    public static Object fromJSON(reflect.Class cls, io.datawire.quark.runtime.JSONObject json) {
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
        java.util.ArrayList<reflect.Field> fields = (cls).getFields();
        Object result = (cls).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        while ((idx) < ((fields).size())) {
            reflect.Field f = (fields).get(idx);
            idx = (idx) + (1);
            if ((((f).getType()).name)==("String") || ((((f).getType()).name) != null && (((f).getType()).name).equals("String"))) {
                String s = ((json).getObjectItem((f).name)).getString();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, s);
                continue;
            }
            if ((((f).getType()).name)==("float") || ((((f).getType()).name) != null && (((f).getType()).name).equals("float"))) {
                Double flt = ((json).getObjectItem((f).name)).getNumber();
                ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, flt);
                continue;
            }
            if ((((f).getType()).name)==("int") || ((((f).getType()).name) != null && (((f).getType()).name).equals("int"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Integer i = ((int) Math.round(((json).getObjectItem((f).name)).getNumber()));
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, i);
                }
                continue;
            }
            if ((((f).getType()).name)==("bool") || ((((f).getType()).name) != null && (((f).getType()).name).equals("bool"))) {
                if (!(((json).getObjectItem((f).name)).isNull())) {
                    Boolean b = ((json).getObjectItem((f).name)).getBool();
                    ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, b);
                }
                continue;
            }
            ((io.datawire.quark.runtime.QObject) (result))._setField((f).name, Functions.fromJSON((f).getType(), (json).getObjectItem((f).name)));
        }
        return result;
    }

/* END_BUILTIN */


    public static String hexb(Byte v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(1);
        (b).putByte(0, v);
        return (c).toHexdump(b, 0, 1, 10);
    }


    public static String hexs(Short v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(2);
        (b).putShort(0, v);
        return (c).toHexdump(b, 0, 2, 10);
    }


    public static String hexi(Integer v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(4);
        (b).putInt(0, v);
        return (c).toHexdump(b, 0, 4, 10);
    }


    public static String hexl(Long v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(8);
        (b).putLong(0, v);
        return (c).toHexdump(b, 0, 8, 10);
    }


    public static String hexf(Double v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(8);
        (b).putFloat(0, v);
        return (c).toHexdump(b, 0, 8, 10);
    }


    public static void main() {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        String hello = "hello world!";
        io.datawire.quark.runtime.Buffer b = (c).buffer(500);
        do{System.out.println(Integer.toString((b).putStringUTF8(0, hello)));System.out.flush();}while(false);
        do{System.out.println((c).toHexdump(b, 0, (hello).length(), 2));System.out.flush();}while(false);
        do{System.out.println((c).toBase64(b, 0, (hello).length()));System.out.flush();}while(false);
        io.datawire.quark.runtime.Buffer d = (c).fromHexdump("0x0000000102 0304 0506");
        do{System.out.println((c).toHexdump(d, 0, (d).capacity(), 1));System.out.flush();}while(false);
        Integer i = 0;
        Integer e = (d).capacity();
        while ((i) < (e)) {
            if (((i) + (1)) < ((e) + (1))) {
                Byte vb = (d).getByte(i);
                do{System.out.println(((((("B[") + (Integer.toString(i))) + ("]=")) + (Byte.toString(vb))) + ("   ")) + (Functions.hexb(vb)));System.out.flush();}while(false);
            }
            if (((i) + (2)) < ((e) + (1))) {
                Short vs = (d).getShort(i);
                do{System.out.println(((((("S[") + (Integer.toString(i))) + ("]=")) + (Short.toString(vs))) + ("   ")) + (Functions.hexs(vs)));System.out.flush();}while(false);
            }
            if (((i) + (4)) < ((e) + (1))) {
                Integer vi = (d).getInt(i);
                do{System.out.println(((((("I[") + (Integer.toString(i))) + ("]=")) + (Integer.toString(vi))) + ("   ")) + (Functions.hexi(vi)));System.out.flush();}while(false);
            }
            if (((i) + (8)) < ((e) + (1))) {
                Long vl = (d).getLong(i);
                do{System.out.println(((((("L[") + (Integer.toString(i))) + ("]=")) + (Long.toString(vl))) + ("   ")) + (Functions.hexl(vl)));System.out.flush();}while(false);
            }
            i = (i) + (1);
        }
        io.datawire.quark.runtime.Buffer f = (c).fromBase64("eWF5");
        do{System.out.println((f).getStringUTF8(0, 3));System.out.flush();}while(false);
        io.datawire.quark.runtime.Buffer g = (c).fromHexdump("3f d5 55 55 55 55 84 3f");
        do{System.out.println(("float BE ") + ((c).toHexdump(g, 0, 8, 1)));System.out.flush();}while(false);
        do{System.out.println(("float ") + (Double.toString((g).getFloat(0))));System.out.flush();}while(false);
        io.datawire.quark.runtime.Buffer h = ((c).buffer(8)).littleEndian();
        (h).putFloat(0, (g).getFloat(0));
        do{System.out.println(("float LE ") + ((c).toHexdump(h, 0, 8, 1)));System.out.flush();}while(false);
    }
}
