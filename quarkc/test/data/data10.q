
void test_Any_91() {
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
        
void test_Any_92() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "asdf\n";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(\"asdf\n\")");
    assertEqual(true, true);
}
        
void test_Any_93() {
    int value_tmp = 2147483651;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483651;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483651)");
    assert(!(value == other), "different Any: unsafe(2147483651) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_94() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_95() {
    String value_tmp = "asdf\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "asdf\n";
    Any copy = unsafe(copy_tmp);
    
    List<bool> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"asdf\n\")");
    assert(!(value == other), "different Any: unsafe(\"asdf\n\") unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_96() {
    int value_tmp = -2;
    Any value = unsafe(value_tmp);
    int copy_tmp = -2;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_tmp0 = false;
    List<bool> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-2)");
    assert(!(value == other), "different Any: unsafe(-2) unsafe([false])");
    assertEqual(true, true);
}
        
void test_Any_97() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_tmp0 = true;
    bool other_tmp_tmp1 = false;
    List<bool> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe([true, false])");
    assertEqual(true, true);
}
        
void test_Any_98() {
    int value_tmp = 4294967293;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967293;
    Any copy = unsafe(copy_tmp);
    
    List<int> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967293)");
    assert(!(value == other), "different Any: unsafe(4294967293) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_99() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    int other_tmp_tmp0 = -3;
    List<int> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe([-3])");
    assertEqual(true, true);
}
        
void test_Any_100() {
    String value_tmp = "";
    Any value = unsafe(value_tmp);
    String copy_tmp = "";
    Any copy = unsafe(copy_tmp);
    int other_tmp_tmp0 = -2;
    int other_tmp_tmp1 = -1;
    List<int> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\")");
    assert(!(value == other), "different Any: unsafe(\"\") unsafe([-2, -1])");
    assertEqual(true, true);
}
        