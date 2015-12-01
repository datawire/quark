public class Box<T> {
    public T contents;
    public Box() {}
    public T get() {
        return this.contents;
    }
    public void set(T contents) {
        (this).contents = contents;
    }
}
