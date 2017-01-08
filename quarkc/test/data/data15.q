
void test_Any_141() {
    float value_tmp_tmp0 = -0.0;
    float value_tmp_tmp1 = 3.14;
    List<float> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    float copy_tmp_tmp0 = -0.0;
    float copy_tmp_tmp1 = 3.14;
    List<float> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967297;
    String other_tmp_vtmp0 = "asdf\n";
    Map<int,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([-0.0, 3.14])");
    assert(!(value == other), "different Any: unsafe([-0.0, 3.14]) unsafe({4294967297: \"asdf\n\"})");
    assertEqual(true, true);
}
        
void test_Any_142() {
    
    List<String> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<String> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967298;
    String other_tmp_vtmp0 = "";
    int other_tmp_ktmp1 = 4294967299;
    String other_tmp_vtmp1 = "Hello World!";
    Map<int,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({4294967298: \"\", 4294967299: \"Hello World!\"})");
    assertEqual(true, true);
}
        
void test_Any_143() {
    String value_tmp_tmp0 = "";
    List<String> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    String copy_tmp_tmp0 = "";
    List<String> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([\"\"])");
    assert(!(value == other), "different Any: unsafe([\"\"]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_144() {
    String value_tmp_tmp0 = "Hello World!";
    String value_tmp_tmp1 = "pi";
    List<String> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    String copy_tmp_tmp0 = "Hello World!";
    String copy_tmp_tmp1 = "pi";
    List<String> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = -3;
    Scalar other_tmp_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([\"Hello World!\", \"pi\"])");
    assert(!(value == other), "different Any: unsafe([\"Hello World!\", \"pi\"]) unsafe({-3: <__main__.Scalar object at 0x7f9dce0f05d0>})");
    assertEqual(true, true);
}
        
void test_Any_145() {
    
    List<Scalar> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<Scalar> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = -2;
    Scalar other_tmp_vtmp0 = unsafe(false).asScalar();
    int other_tmp_ktmp1 = -1;
    Scalar other_tmp_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>})");
    assertEqual(true, true);
}
        
void test_Any_146() {
    Scalar value_tmp_tmp0 = unsafe(0).asScalar();
    List<Scalar> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(0).asScalar()])");
    assert(!(value == other), "different Any: unsafe([unsafe(0).asScalar()]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_147() {
    Scalar value_tmp_tmp0 = unsafe(0.0).asScalar();
    Scalar value_tmp_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_tmp_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 0;
    int other_tmp_vtmp0_tmp = 2147483647;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<int,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()])");
    assert(!(value == other), "different Any: unsafe([unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]) unsafe({0: unsafe(2147483647)})");
    assertEqual(true, true);
}
        
void test_Any_148() {
    
    List<Any> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<Any> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 1;
    float other_tmp_vtmp0_tmp = 0.0;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    int other_tmp_ktmp1 = 2;
    String other_tmp_vtmp1_tmp = "pi";
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<int,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({1: unsafe(0.0), 2: unsafe(\"pi\")})");
    assertEqual(true, true);
}
        
void test_Any_149() {
    bool value_tmp_tmp0_tmp = false;
    Any value_tmp_tmp0 = unsafe(value_tmp_tmp0_tmp);
    List<Any> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    bool copy_tmp_tmp0_tmp = false;
    Any copy_tmp_tmp0 = unsafe(copy_tmp_tmp0_tmp);
    List<Any> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<float,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(false)])");
    assert(!(value == other), "different Any: unsafe([unsafe(false)]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_150() {
    int value_tmp_tmp0_tmp = 2147483646;
    Any value_tmp_tmp0 = unsafe(value_tmp_tmp0_tmp);
    float value_tmp_tmp1_tmp = 3.14;
    Any value_tmp_tmp1 = unsafe(value_tmp_tmp1_tmp);
    List<Any> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    int copy_tmp_tmp0_tmp = 2147483646;
    Any copy_tmp_tmp0 = unsafe(copy_tmp_tmp0_tmp);
    float copy_tmp_tmp1_tmp = 3.14;
    Any copy_tmp_tmp1 = unsafe(copy_tmp_tmp1_tmp);
    List<Any> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    bool other_tmp_vtmp0 = true;
    Map<float,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(2147483646), unsafe(3.14)])");
    assert(!(value == other), "different Any: unsafe([unsafe(2147483646), unsafe(3.14)]) unsafe({0.0: true})");
    assertEqual(true, true);
}
        