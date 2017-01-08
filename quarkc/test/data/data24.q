
void test_Any_231() {
    Scalar value_tmp_ktmp0 = unsafe(0.0).asScalar();
    float value_tmp_vtmp0 = -0.0;
    Scalar value_tmp_ktmp1 = unsafe("").asScalar();
    float value_tmp_vtmp1 = 3.14;
    Map<Scalar,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(0.0).asScalar();
    float copy_tmp_vtmp0 = -0.0;
    Scalar copy_tmp_ktmp1 = unsafe("").asScalar();
    float copy_tmp_vtmp1 = 3.14;
    Map<Scalar,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "asdf\n";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}) unsafe(\"asdf\n\")");
    assertEqual(true, true);
}
        
void test_Any_232() {
    
    Map<Scalar,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    int other_tmp = -2;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(-2)");
    assertEqual(true, true);
}
        
void test_Any_233() {
    Scalar value_tmp_ktmp0 = unsafe(false).asScalar();
    String value_tmp_vtmp0 = "\n";
    Map<Scalar,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(false).asScalar();
    String copy_tmp_vtmp0 = "\n";
    Map<Scalar,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_234() {
    Scalar value_tmp_ktmp0 = unsafe(-2).asScalar();
    String value_tmp_vtmp0 = "asdf\n";
    Scalar value_tmp_ktmp1 = unsafe(-0.0).asScalar();
    String value_tmp_vtmp1 = "";
    Map<Scalar,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(-2).asScalar();
    String copy_tmp_vtmp0 = "asdf\n";
    Scalar copy_tmp_ktmp1 = unsafe(-0.0).asScalar();
    String copy_tmp_vtmp1 = "";
    Map<Scalar,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967293;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}) unsafe(4294967293)");
    assertEqual(true, true);
}
        
void test_Any_235() {
    
    Map<Scalar,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_236() {
    Scalar value_tmp_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_tmp_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_tmp_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}) unsafe(\"\")");
    assertEqual(true, true);
}
        
void test_Any_237() {
    Scalar value_tmp_ktmp0 = unsafe(-1).asScalar();
    Scalar value_tmp_vtmp0 = unsafe("pi").asScalar();
    Scalar value_tmp_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_tmp_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_tmp_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_tmp_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_tmp_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}) unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_238() {
    
    Map<Scalar,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_239() {
    Scalar value_tmp_ktmp0 = unsafe(0).asScalar();
    bool value_tmp_vtmp0_tmp = true;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<Scalar,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(0).asScalar();
    bool copy_tmp_vtmp0_tmp = true;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<Scalar,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967294;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}) unsafe(4294967294)");
    assertEqual(true, true);
}
        
void test_Any_240() {
    Scalar value_tmp_ktmp0 = unsafe(0.0).asScalar();
    int value_tmp_vtmp0_tmp = 2147483649;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Scalar value_tmp_ktmp1 = unsafe("pie").asScalar();
    float value_tmp_vtmp1_tmp = 3.14;
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<Scalar,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(0.0).asScalar();
    int copy_tmp_vtmp0_tmp = 2147483649;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Scalar copy_tmp_ktmp1 = unsafe("pie").asScalar();
    float copy_tmp_vtmp1_tmp = 3.14;
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<Scalar,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}) unsafe(0.0)");
    assertEqual(true, true);
}
        