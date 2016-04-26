package generics;

public class Matrix<T> implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class generics_Matrix_quark_Object__ref = quark_ffi_signatures_md.Root.generics_Matrix_quark_Object__md;
    public static quark.reflect.Class quark_List_quark_List_quark_Object___ref = quark_ffi_signatures_md.Root.quark_List_quark_List_quark_Object___md;
    public static quark.reflect.Class quark_List_quark_Object__ref = quark_ffi_signatures_md.Root.quark_List_quark_Object__md;
    public Integer width;
    public Integer height;
    public java.util.ArrayList<java.util.ArrayList<T>> columns;
    public Matrix(Integer width, Integer height) {}
    public T __get__(Integer i, Integer j) {
        return (T) (null);
    }
    public void __set__(Integer i, Integer j, T value) {}
    public String _getClass() {
        return "generics.Matrix<quark.Object>";
    }
    public Object _getField(String name) {
        if ((name)==("width") || ((Object)(name) != null && ((Object) (name)).equals("width"))) {
            return (this).width;
        }
        if ((name)==("height") || ((Object)(name) != null && ((Object) (name)).equals("height"))) {
            return (this).height;
        }
        if ((name)==("columns") || ((Object)(name) != null && ((Object) (name)).equals("columns"))) {
            return (this).columns;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("width") || ((Object)(name) != null && ((Object) (name)).equals("width"))) {
            (this).width = (Integer) (value);
        }
        if ((name)==("height") || ((Object)(name) != null && ((Object) (name)).equals("height"))) {
            (this).height = (Integer) (value);
        }
        if ((name)==("columns") || ((Object)(name) != null && ((Object) (name)).equals("columns"))) {
            (this).columns = (java.util.ArrayList<java.util.ArrayList<T>>) (value);
        }
    }
}
