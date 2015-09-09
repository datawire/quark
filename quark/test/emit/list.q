void test1() {
    List<int> list = new List<int>();
    list.add(1);
    list.add(2);
    list.add(3);
    print(list.get(0));
    print(list.get(1));
    print(list.get(2));
}

void test2() {
    List<String> list = new List<String>();
    list.add("one");
    list.add("two");
    list.add("three");
    print(list.get(0));
    print(list.get(1));
    print(list.get(2));
}

void main() {
    test1();
    test2();
}
