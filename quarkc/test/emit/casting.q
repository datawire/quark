quark *;
class Box<T> {
    T contents;

    Box(T contents) {
        self.contents = contents;
    }
}

class Crate<T> {
    Box<T> box;

    Crate(Box<T> box) {
        self.box = box;
    }
}

void main(List<String> args) {
    Object three = 3;
    Box<int> box = new Box<int>(?three);
    Object obox = box;
    Crate<int> crate = new Crate<int>(?obox);
}
