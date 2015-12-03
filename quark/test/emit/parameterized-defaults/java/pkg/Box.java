package pkg;

public class Box<T> {
    public T contents;
    public Box(T contents) {
        (this).contents = contents;
    }
}
