
void test_Any_71() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967295;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(4294967295)");
    assertEqual(true, true);
}
        
void test_Any_72() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_73() {
    int value_tmp = 2147483647;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483647;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pi";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483647)");
    assert(!(value == other), "different Any: unsafe(2147483647) unsafe(\"pi\")");
    assertEqual(true, true);
}
        
void test_Any_74() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_75() {
    String value_tmp = "pi";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pi";
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pi\")");
    assert(!(value == other), "different Any: unsafe(\"pi\") unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_76() {
    int value_tmp = -3;
    Any value = unsafe(value_tmp);
    int copy_tmp = -3;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967296;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-3)");
    assert(!(value == other), "different Any: unsafe(-3) unsafe(4294967296)");
    assertEqual(true, true);
}
        
void test_Any_77() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_78() {
    int value_tmp = 2147483648;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483648;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pie";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483648)");
    assert(!(value == other), "different Any: unsafe(2147483648) unsafe(\"pie\")");
    assertEqual(true, true);
}
        
void test_Any_79() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    int other_tmp = -1;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe(-1)");
    assertEqual(true, true);
}
        
void test_Any_80() {
    String value_tmp = "pie";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pie";
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pie\")");
    assert(!(value == other), "different Any: unsafe(\"pie\") unsafe(false)");
    assertEqual(true, true);
}
        