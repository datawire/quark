package m;

public class Outer implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class m_Outer_ref = marshalling_md.Root.m_Outer_md;
    public static quark.reflect.Class quark_List_m_Inner__ref = marshalling_md.Root.quark_List_m_Inner__md;
    public Integer outer_int;
    public String outer_string;
    public Double outer_float;
    public java.util.ArrayList<Inner> outer_inner_list;
    public Outer() {}
    public Outer setup(Integer i) {
        Double f = Double.valueOf(i);
        (this).outer_int = (i) * (10);
        (this).outer_string = ("str of ") + (Integer.toString(i));
        (this).outer_float = (314000.15) + (f);
        (this).outer_inner_list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{(new Inner()).setup(i), (new Inner()).setup((i) + (42)), (new Inner()).setup((i) * (42))}));
        return this;
    }
    public String _getClass() {
        return "m.Outer";
    }
    public Object _getField(String name) {
        if ((name)==("outer_int") || ((Object)(name) != null && ((Object) (name)).equals("outer_int"))) {
            return (this).outer_int;
        }
        if ((name)==("outer_string") || ((Object)(name) != null && ((Object) (name)).equals("outer_string"))) {
            return (this).outer_string;
        }
        if ((name)==("outer_float") || ((Object)(name) != null && ((Object) (name)).equals("outer_float"))) {
            return (this).outer_float;
        }
        if ((name)==("outer_inner_list") || ((Object)(name) != null && ((Object) (name)).equals("outer_inner_list"))) {
            return (this).outer_inner_list;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("outer_int") || ((Object)(name) != null && ((Object) (name)).equals("outer_int"))) {
            (this).outer_int = (Integer) (value);
        }
        if ((name)==("outer_string") || ((Object)(name) != null && ((Object) (name)).equals("outer_string"))) {
            (this).outer_string = (String) (value);
        }
        if ((name)==("outer_float") || ((Object)(name) != null && ((Object) (name)).equals("outer_float"))) {
            (this).outer_float = (Double) (value);
        }
        if ((name)==("outer_inner_list") || ((Object)(name) != null && ((Object) (name)).equals("outer_inner_list"))) {
            (this).outer_inner_list = (java.util.ArrayList<Inner>) (value);
        }
    }
}
