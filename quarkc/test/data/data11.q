
void test_Any_101() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    
    List<float> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_102() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    float other_tmp_tmp0 = 0.0;
    List<float> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe([0.0])");
    assertEqual(true, true);
}
        
void test_Any_103() {
    int value_tmp = 4294967294;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967294;
    Any copy = unsafe(copy_tmp);
    float other_tmp_tmp0 = -0.0;
    float other_tmp_tmp1 = 3.14;
    List<float> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967294)");
    assert(!(value == other), "different Any: unsafe(4294967294) unsafe([-0.0, 3.14])");
    assertEqual(true, true);
}
        
void test_Any_104() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    
    List<String> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_105() {
    String value_tmp = "Hello World!";
    Any value = unsafe(value_tmp);
    String copy_tmp = "Hello World!";
    Any copy = unsafe(copy_tmp);
    String other_tmp_tmp0 = "";
    List<String> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"Hello World!\")");
    assert(!(value == other), "different Any: unsafe(\"Hello World!\") unsafe([\"\"])");
    assertEqual(true, true);
}
        
void test_Any_106() {
    String value_tmp = "Hello World!";
    Any value = unsafe(value_tmp);
    String copy_tmp = "Hello World!";
    Any copy = unsafe(copy_tmp);
    String other_tmp_tmp0 = "Hello World!";
    String other_tmp_tmp1 = "pi";
    List<String> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"Hello World!\")");
    assert(!(value == other), "different Any: unsafe(\"Hello World!\") unsafe([\"Hello World!\", \"pi\"])");
    assertEqual(true, true);
}
        
void test_Any_107() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    
    List<Scalar> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_108() {
    int value_tmp = 4294967295;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967295;
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967295)");
    assert(!(value == other), "different Any: unsafe(4294967295) unsafe([unsafe(0).asScalar()])");
    assertEqual(true, true);
}
        
void test_Any_109() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_tmp0 = unsafe(0.0).asScalar();
    Scalar other_tmp_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe([unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()])");
    assertEqual(true, true);
}
        
void test_Any_110() {
    String value_tmp = "pi";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pi";
    Any copy = unsafe(copy_tmp);
    
    List<Any> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pi\")");
    assert(!(value == other), "different Any: unsafe(\"pi\") unsafe([])");
    assertEqual(true, true);
}
        