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
    Box<T> box = new Box<T>();
    Box<int> ibox = new Box<int>();
    void set(T stuff) {
        self.box.set(stuff);
    }
    T get() {
        return self.box.get();
    }
}

class Sack {
    Box<int> ints = new Box<int>();
}

void test1() {
    Box<int> ibox = new Box<int>();
    ibox.set(3);
    int three = ibox.get();
    print(three);
    ibox.contents = 4;
    print(ibox.contents);
}

void test2() {
    Box<String> sbox = new Box<String>();
    sbox.set("hello");
    String hello = sbox.get();
    print(hello);
    sbox.contents = "world";
    print(sbox.contents);
}

void test3() {
    Crate<int> icrate = new Crate<int>();
    icrate.set(3);
    print(icrate.get());
    icrate.set(4);
    print(icrate.box.contents);
}

void test4() {
    Sack s = Sack();
    print(s.ints.get());
    print(s.ints.contents);
    s.ints.set(3);
    print(s.ints.get());
    print(s.ints.contents);
    s.ints.contents = 4;
    print(s.ints.get());
    print(s.ints.contents);
}

void test5() {
   Crate<String> scrate = new Crate<String>();
   print(scrate.get());
   print(scrate.box.contents);
   scrate.set("hello");
   print(scrate.get());
   print(scrate.box.contents);
   scrate.ibox.contents = 3;
   print(scrate.ibox.contents);
}

void test6() {
   Box<Box<int>> box = new Box<Box<int>>();
   box.set(new Box<int>());
   box.get().set(3);
   print(box.get().get());
   print(box.contents.contents);
}

void main() {
    print("test1:\n--");
    test1();
    print("");

    print("test2:\n--");
    test2();
    print("");

    print("test3:\n--");
    test3();
    print("");

    print("test4:\n--");
    test4();
    print("");

    print("test5:\n--");
    test5();
    print("");

    print("test6:\n--");
    test6();
}
