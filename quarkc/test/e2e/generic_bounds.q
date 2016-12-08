interface Stringable {
    String stringify();
}

class Box<T extends Stringable> {
    T contents;

    String doit1() {
        Stringable s = contents;
        return s.stringify();
    }

    String doit2() {
        return contents.stringify();
    }
}

class MyStringable extends Stringable {
    String stringify() {
        return "yay";
    }
}

void testify() {
    Box<MyStringable> box = new Box<MyStringable>();
    box.contents = new MyStringable();
    assertEqual("yay", box.doit1());
    assertEqual("yay", box.doit2());
}
