
void test_Any_121() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    float other_tmp_vtmp0 = -0.0;
    bool other_tmp_ktmp1 = false;
    float other_tmp_vtmp1 = 3.14;
    Map<bool,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe({true: -0.0, false: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_122() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_123() {
    int value_tmp = 4294967298;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967298;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    String other_tmp_vtmp0 = "pie";
    Map<bool,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967298)");
    assert(!(value == other), "different Any: unsafe(4294967298) unsafe({true: \"pie\"})");
    assertEqual(true, true);
}
        
void test_Any_124() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    String other_tmp_vtmp0 = " ";
    bool other_tmp_ktmp1 = true;
    String other_tmp_vtmp1 = "\n";
    Map<bool,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe({false: \" \", true: \"\n\"})");
    assertEqual(true, true);
}
        
void test_Any_125() {
    String value_tmp = "\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "\n";
    Any copy = unsafe(copy_tmp);
    
    Map<bool,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\n\")");
    assert(!(value == other), "different Any: unsafe(\"\n\") unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_126() {
    String value_tmp = "pi";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pi";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    Scalar other_tmp_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pi\")");
    assert(!(value == other), "different Any: unsafe(\"pi\") unsafe({false: <__main__.Scalar object at 0x7f9dce0f0510>})");
    assertEqual(true, true);
}
        
void test_Any_127() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    Scalar other_tmp_vtmp0 = unsafe(1).asScalar();
    bool other_tmp_ktmp1 = false;
    Scalar other_tmp_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe({true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>})");
    assertEqual(true, true);
}
        
void test_Any_128() {
    int value_tmp = 4294967299;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967299;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967299)");
    assert(!(value == other), "different Any: unsafe(4294967299) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_129() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    String other_tmp_vtmp0_tmp = "Hello World!";
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<bool,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe({true: unsafe(\"Hello World!\")})");
    assertEqual(true, true);
}
        
void test_Any_130() {
    String value_tmp = "asdf\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "asdf\n";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    bool other_tmp_vtmp0_tmp = true;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    bool other_tmp_ktmp1 = true;
    bool other_tmp_vtmp1_tmp = true;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<bool,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"asdf\n\")");
    assert(!(value == other), "different Any: unsafe(\"asdf\n\") unsafe({false: unsafe(true), true: unsafe(true)})");
    assertEqual(true, true);
}
        