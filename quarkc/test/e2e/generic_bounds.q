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
    String name;
    MyStringable() {
        name = "my";
    }
    String stringify() {
        return name;
    }
}

class OtherStringable extends Stringable {
    String title;
    OtherStringable() {
        title = "other";
    }
    String stringify() {
        return title;
    }
}

void test_concrete() {
    Box<MyStringable> box = new Box<MyStringable>();
    box.contents = new MyStringable();
    assertEqual("my", box.contents.name);
    assertEqual("my", box.doit1());
    assertEqual("my", box.doit2());
    box.contents.name = "yay";
    assertEqual("yay", box.contents.name);
    assertEqual("yay", box.doit1());
    assertEqual("yay", box.doit2());
}

void test_interface() {
    Box<Stringable> box = new Box<Stringable>();
    box.contents = new OtherStringable();
    assertEqual("other", box.doit1());
    assertEqual("other", box.doit2());
}
