public class Matrix<T> {
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
}
