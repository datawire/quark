package Overload_lib;

public class Overload implements io.datawire.quark.runtime.QObject {
    public String name;
    public Overload(String name) {
        (this).name = name;
    }
    public Overload __add__(Overload o) {
        return o;
    }
    public Overload __mul__(Overload o) {
        return this;
    }
    public void test() {
        Overload o1 = new Overload("one");
        Overload o2 = new Overload("two");
        Overload o3 = (o1).__add__(o2);
        do{System.out.println((o3).name);System.out.flush();}while(false);
        o3 = (o1).__mul__(o2);
        do{System.out.println((o3).name);System.out.flush();}while(false);
        if ((o3)==(o1) || ((o3) != null && (o3).equals(o1))) {
            do{System.out.println("YAY!");System.out.flush();}while(false);
        }
    }
    public String _getClass() {
        return "Overload";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((name) != null && (name).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
