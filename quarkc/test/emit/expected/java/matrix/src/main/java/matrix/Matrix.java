package matrix;

public class Matrix<T> implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_List_quark_List_quark_Object___ref = matrix_md.Root.quark_List_quark_List_quark_Object___md;
    public static quark.reflect.Class quark_List_quark_Object__ref = matrix_md.Root.quark_List_quark_Object__md;
    public Integer width;
    public Integer height;
    public java.util.ArrayList<java.util.ArrayList<T>> columns;
    public Matrix(Integer width, Integer height) {
        (this).width = width;
        (this).height = height;
        this.columns = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        while (((this.columns).size()) < (width)) {
            java.util.ArrayList<T> column = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
            while (((column).size()) < (height)) {
                (column).add(null);
            }
            (this.columns).add(column);
        }
    }
    public T __get__(Integer i, Integer j) {
        return ((this.columns).get(i)).get(j);
    }
    public void __set__(Integer i, Integer j, T value) {
        ((this.columns).get(i)).set((j), (value));
    }
    public String _getClass() {
        return "matrix.Matrix<quark.Object>";
    }
    public Object _getField(String name) {
        if ((name)==("width") || ((name) != null && (name).equals("width"))) {
            return (this).width;
        }
        if ((name)==("height") || ((name) != null && (name).equals("height"))) {
            return (this).height;
        }
        if ((name)==("columns") || ((name) != null && (name).equals("columns"))) {
            return (this).columns;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("width") || ((name) != null && (name).equals("width"))) {
            (this).width = (Integer) (value);
        }
        if ((name)==("height") || ((name) != null && (name).equals("height"))) {
            (this).height = (Integer) (value);
        }
        if ((name)==("columns") || ((name) != null && (name).equals("columns"))) {
            (this).columns = (java.util.ArrayList<java.util.ArrayList<T>>) (value);
        }
    }
}
