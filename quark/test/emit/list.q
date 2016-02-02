void test1() {
    List<int> list = new List<int>();
    list.add(1);
    list.add(2);
    list.add(3);
    print(list[0]);
    print(list[1]);
    print(list[2]);
}

void test2() {
    List<String> list = new List<String>();
    list.add("one");
    list.add("two");
    list.add("three");
    print(list[0]);
    print(list[1]);
    print(list[2]);
}

void test3() {
    List<int> list = [];
    print(list);
    list = [1];
    print(list);
    list = [1, 2, 3];
    print(list);
}

void test4() {
    List<String> list = [];
    print(list);
    list = ["one"];
    print(list);
    list = ["one", "two", "three"];
    print(list);
}

class Box<T> {
    T contents;
    T get() { return contents; }
    void set(T contents) { self.contents = contents; }
}

void test5() {
    List<Box<int>> boxes = [];
    boxes.add(new Box<int>());
    boxes[0].set(3);
    print(boxes[0].get());
    boxes = [new Box<int>()];
    print(boxes[0].get());
}

void test6() {
    List<List<int>> matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
    print(matrix);
}

void sorter() {
    List<String> stuff = ["Richard", "Rafi", "Abhay", "Bozzo", "Phil", "Austin", "Janice", "Flynn", "Vladimir"];
    stuff.sort();
    print(stuff);
}

void main() {
    test1();
    test2();
    test3();
    test4();
    test5();
    test6();
    sorter();
}
