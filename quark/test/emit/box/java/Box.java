public class Box<T> {
    T contents;
    public void set(T contents) {
        (this).contents = contents;
    }
    public T get() {
        return (this).contents;
    }
}