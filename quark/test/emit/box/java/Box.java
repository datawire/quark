public class Box<T> {
    public T contents;
    public Box() {}
    public void set(T contents) {
        (this).contents = contents;
    }
    public T get() {
        return (this).contents;
    }
}
