
void test_Any_201() {
    float value_tmp_ktmp0 = -0.0;
    Scalar value_tmp_vtmp0 = unsafe("\n").asScalar();
    float value_tmp_ktmp1 = 3.14;
    Scalar value_tmp_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    Scalar copy_tmp_vtmp0 = unsafe("\n").asScalar();
    float copy_tmp_ktmp1 = 3.14;
    Scalar copy_tmp_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(0).asScalar();
    bool other_tmp_vtmp0_tmp = true;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<Scalar,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>})");
    assert(!(value == other), "different Any: unsafe({-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}) unsafe({<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)})");
    assertEqual(true, true);
}
        
void test_Any_202() {
    
    Map<float,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(0.0).asScalar();
    int other_tmp_vtmp0_tmp = 2147483649;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Scalar other_tmp_ktmp1 = unsafe("pie").asScalar();
    float other_tmp_vtmp1_tmp = 3.14;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<Scalar,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)})");
    assertEqual(true, true);
}
        
void test_Any_203() {
    float value_tmp_ktmp0 = 0.0;
    int value_tmp_vtmp0_tmp = -3;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<float,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    int copy_tmp_vtmp0_tmp = -3;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<float,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: unsafe(-3)})");
    assert(!(value == other), "different Any: unsafe({0.0: unsafe(-3)}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_204() {
    float value_tmp_ktmp0 = -0.0;
    bool value_tmp_vtmp0_tmp = false;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    float value_tmp_ktmp1 = 3.14;
    int value_tmp_vtmp1_tmp = 2147483648;
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<float,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    bool copy_tmp_vtmp0_tmp = false;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    float copy_tmp_ktmp1 = 3.14;
    int copy_tmp_vtmp1_tmp = 2147483648;
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<float,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483646;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: unsafe(false), 3.14: unsafe(2147483648)})");
    assert(!(value == other), "different Any: unsafe({-0.0: unsafe(false), 3.14: unsafe(2147483648)}) unsafe(2147483646)");
    assertEqual(true, true);
}
        
void test_Any_205() {
    
    Map<String,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_206() {
    String value_tmp_ktmp0 = "\n";
    bool value_tmp_vtmp0 = false;
    Map<String,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "\n";
    bool copy_tmp_vtmp0 = false;
    Map<String,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "Hello World!";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\n\": false})");
    assert(!(value == other), "different Any: unsafe({\"\n\": false}) unsafe(\"Hello World!\")");
    assertEqual(true, true);
}
        
void test_Any_207() {
    String value_tmp_ktmp0 = "asdf\n";
    bool value_tmp_vtmp0 = true;
    String value_tmp_ktmp1 = "";
    bool value_tmp_vtmp1 = false;
    Map<String,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "asdf\n";
    bool copy_tmp_vtmp0 = true;
    String copy_tmp_ktmp1 = "";
    bool copy_tmp_vtmp1 = false;
    Map<String,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"asdf\n\": true, \"\": false})");
    assert(!(value == other), "different Any: unsafe({\"asdf\n\": true, \"\": false}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_208() {
    
    Map<String,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_209() {
    String value_tmp_ktmp0 = "Hello World!";
    int value_tmp_vtmp0 = 2147483647;
    Map<String,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "Hello World!";
    int copy_tmp_vtmp0 = 2147483647;
    Map<String,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483647;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"Hello World!\": 2147483647})");
    assert(!(value == other), "different Any: unsafe({\"Hello World!\": 2147483647}) unsafe(2147483647)");
    assertEqual(true, true);
}
        
void test_Any_210() {
    String value_tmp_ktmp0 = "pi";
    int value_tmp_vtmp0 = 2147483648;
    String value_tmp_ktmp1 = "pie";
    int value_tmp_vtmp1 = 2147483649;
    Map<String,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "pi";
    int copy_tmp_vtmp0 = 2147483648;
    String copy_tmp_ktmp1 = "pie";
    int copy_tmp_vtmp1 = 2147483649;
    Map<String,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"pi\": 2147483648, \"pie\": 2147483649})");
    assert(!(value == other), "different Any: unsafe({\"pi\": 2147483648, \"pie\": 2147483649}) unsafe(0.0)");
    assertEqual(true, true);
}
        