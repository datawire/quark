package m;

public class Inner implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class m_Inner_ref = marshalling_md.Root.m_Inner_md;
    public static quark.reflect.Class quark_List_quark_String__ref = marshalling_md.Root.quark_List_quark_String__md;
    public Integer inner_int;
    public String inner_string;
    public Double inner_float;
    public java.util.ArrayList<String> inner_string_list;
    public Inner() {}
    public Inner setup(Integer i) {
        Double f = Double.valueOf(i);
        (this).inner_int = i;
        (this).inner_string = ("str of ") + (Integer.toString(i));
        (this).inner_float = (300.14) + (f);
        (this).inner_string_list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"i"}));
        return this;
    }
    public String _getClass() {
        return "m.Inner";
    }
    public Object _getField(String name) {
        if ((name)==("inner_int") || ((Object)(name) != null && ((Object) (name)).equals("inner_int"))) {
            return (this).inner_int;
        }
        if ((name)==("inner_string") || ((Object)(name) != null && ((Object) (name)).equals("inner_string"))) {
            return (this).inner_string;
        }
        if ((name)==("inner_float") || ((Object)(name) != null && ((Object) (name)).equals("inner_float"))) {
            return (this).inner_float;
        }
        if ((name)==("inner_string_list") || ((Object)(name) != null && ((Object) (name)).equals("inner_string_list"))) {
            return (this).inner_string_list;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("inner_int") || ((Object)(name) != null && ((Object) (name)).equals("inner_int"))) {
            (this).inner_int = (Integer) (value);
        }
        if ((name)==("inner_string") || ((Object)(name) != null && ((Object) (name)).equals("inner_string"))) {
            (this).inner_string = (String) (value);
        }
        if ((name)==("inner_float") || ((Object)(name) != null && ((Object) (name)).equals("inner_float"))) {
            (this).inner_float = (Double) (value);
        }
        if ((name)==("inner_string_list") || ((Object)(name) != null && ((Object) (name)).equals("inner_string_list"))) {
            (this).inner_string_list = (java.util.ArrayList<String>) (value);
        }
    }
}
