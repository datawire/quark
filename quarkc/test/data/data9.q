
void test_Any_81() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967297;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe(4294967297)");
    assertEqual(true, true);
}
        
void test_Any_82() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_83() {
    int value_tmp = 2147483649;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483649;
    Any copy = unsafe(copy_tmp);
    String other_tmp = " ";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483649)");
    assert(!(value == other), "different Any: unsafe(2147483649) unsafe(\" \")");
    assertEqual(true, true);
}
        
void test_Any_84() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_85() {
    String value_tmp = " ";
    Any value = unsafe(value_tmp);
    String copy_tmp = " ";
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967298;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\" \")");
    assert(!(value == other), "different Any: unsafe(\" \") unsafe(4294967298)");
    assertEqual(true, true);
}
        
void test_Any_86() {
    String value_tmp = "";
    Any value = unsafe(value_tmp);
    String copy_tmp = "";
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\")");
    assert(!(value == other), "different Any: unsafe(\"\") unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_87() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "\n";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe(\"\n\")");
    assertEqual(true, true);
}
        
void test_Any_88() {
    int value_tmp = 2147483650;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483650;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pi";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483650)");
    assert(!(value == other), "different Any: unsafe(2147483650) unsafe(\"pi\")");
    assertEqual(true, true);
}
        
void test_Any_89() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_90() {
    String value_tmp = "\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "\n";
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967299;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\n\")");
    assert(!(value == other), "different Any: unsafe(\"\n\") unsafe(4294967299)");
    assertEqual(true, true);
}
        