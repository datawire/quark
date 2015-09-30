public class Matrix<T> {
    Integer width;
    Integer height;
    java.util.ArrayList<java.util.ArrayList<T>> columns;
    public Matrix(Integer width, Integer height) {
        (this).width = width;
        (this).height = height;
        columns = (java.util.ArrayList<java.util.ArrayList<T>>) (new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        while (((columns).size()) < (width)) {
            java.util.ArrayList<T> column = (java.util.ArrayList<T>) (new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
            while (((column).size()) < (height)) {
                (column).add(null);
            }
            (columns).add(column);
        }
    }
    public T __get__(Integer i, Integer j) {
        return ((columns).get(i)).get(j);
    }
    public void __set__(Integer i, Integer j, T value) {
        ((columns).get(i)).set((j), (value));
    }
}