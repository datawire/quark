quark 0.6.100;
class Box<T> {
    T contents;
    void set(T contents) {
        self.contents = contents;
    }
    T get() {
        return self.contents;
    }
}

class Crate<T> {
    Box<T> box;
    Box<int> ibox;
    void set(T stuff) {
        self.box.set(stuff);
    }
    T get() {
        return self.box.get();
    }
}

class Sack {
    Box<int> ints;
}

void test1() {
    Box<int> ibox;
    ibox.set(3);
    int three = ibox.get();
    ibox.contents;
}

void test2() {
    Box<String> sbox;
    sbox.set("hello");
    String hello = sbox.get();
    sbox.contents;
}

void test3() {
    Crate<int> icrate;
    icrate.set(3);
    icrate.get();
    icrate.box.contents;
}

void test4() {
    Sack s;
    s.ints;
    s.ints.contents;
}

void test5() {
   Crate<String> scrate;
   scrate.box.contents;
   scrate.ibox.contents;
}

void test6() {
   Box<Box<int>> box;
   box.contents;
   box.contents.contents;
}
