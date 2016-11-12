class ListTest<Value,TestData> {
    void haha() {
        List<Value> l = new List<Value>();
        TestData data = new TestData(); // XXX: this produces a compile error: unresolved type: test_class.ListTest.TestData.TestData
        l.append(data.item0()); // XXX: this crashes the compiler
    }
}

class ListTestDataInt {
    int item0() { return 11; }
}

class ListTestDataString {
    String item0() { return "11"; }
}

void boot() {
    ListTest<int, ListTestDataInt> x_int;
    ListTest<String, ListTestDataString> x_string;
}
