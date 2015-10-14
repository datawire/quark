void test1() {
    Map<String,int> map = new Map<String,int>();
    map["pi"] = 3;
    print(map["pi"]);  // It's interesting that this works w/o calling toString()
    print(map["not_there"]);
    print("^--- should be null");
}

void test_update() {
    Map<String, String> first = new Map<String, String>();
    Map<String, String> second = new Map<String, String>();
    first["a"] = "first_a";
    first["b"] = "first_b";
    second["b"] = "second_b";
    second["c"] = "second_c";
    first.update(second);
    print(first["a"]);
    print(first["b"]);
    print(first["c"]);
}

void main() {
    test1();
    test_update();
}
