
void test_Any_191() {
    float value_tmp_ktmp0 = 0.0;
    int value_tmp_vtmp0 = 3;
    Map<float,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    int copy_tmp_vtmp0 = 3;
    Map<float,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: 3})");
    assert(!(value == other), "different Any: unsafe({0.0: 3}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_192() {
    float value_tmp_ktmp0 = -0.0;
    int value_tmp_vtmp0 = 2147483645;
    float value_tmp_ktmp1 = 3.14;
    int value_tmp_vtmp1 = 2147483646;
    Map<float,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    int copy_tmp_vtmp0 = 2147483645;
    float copy_tmp_ktmp1 = 3.14;
    int copy_tmp_vtmp1 = 2147483646;
    Map<float,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(-3).asScalar();
    float other_tmp_vtmp0 = 0.0;
    Map<Scalar,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: 2147483645, 3.14: 2147483646})");
    assert(!(value == other), "different Any: unsafe({-0.0: 2147483645, 3.14: 2147483646}) unsafe({<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0})");
    assertEqual(true, true);
}
        
void test_Any_193() {
    
    Map<float,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(0.0).asScalar();
    float other_tmp_vtmp0 = -0.0;
    Scalar other_tmp_ktmp1 = unsafe("").asScalar();
    float other_tmp_vtmp1 = 3.14;
    Map<Scalar,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_194() {
    float value_tmp_ktmp0 = 0.0;
    float value_tmp_vtmp0 = -0.0;
    Map<float,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    float copy_tmp_vtmp0 = -0.0;
    Map<float,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: -0.0})");
    assert(!(value == other), "different Any: unsafe({0.0: -0.0}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_195() {
    float value_tmp_ktmp0 = 3.14;
    float value_tmp_vtmp0 = -0.0;
    float value_tmp_ktmp1 = 0.0;
    float value_tmp_vtmp1 = 3.14;
    Map<float,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 3.14;
    float copy_tmp_vtmp0 = -0.0;
    float copy_tmp_ktmp1 = 0.0;
    float copy_tmp_vtmp1 = 3.14;
    Map<float,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(false).asScalar();
    String other_tmp_vtmp0 = "\n";
    Map<Scalar,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({3.14: -0.0, 0.0: 3.14})");
    assert(!(value == other), "different Any: unsafe({3.14: -0.0, 0.0: 3.14}) unsafe({<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"})");
    assertEqual(true, true);
}
        
void test_Any_196() {
    
    Map<float,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(-2).asScalar();
    String other_tmp_vtmp0 = "asdf\n";
    Scalar other_tmp_ktmp1 = unsafe(-0.0).asScalar();
    String other_tmp_vtmp1 = "";
    Map<Scalar,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"})");
    assertEqual(true, true);
}
        
void test_Any_197() {
    float value_tmp_ktmp0 = 0.0;
    String value_tmp_vtmp0 = "pi";
    Map<float,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    String copy_tmp_vtmp0 = "pi";
    Map<float,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: \"pi\"})");
    assert(!(value == other), "different Any: unsafe({0.0: \"pi\"}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_198() {
    float value_tmp_ktmp0 = -0.0;
    String value_tmp_vtmp0 = "pie";
    float value_tmp_ktmp1 = 3.14;
    String value_tmp_vtmp1 = " ";
    Map<float,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    String copy_tmp_vtmp0 = "pie";
    float copy_tmp_ktmp1 = 3.14;
    String copy_tmp_vtmp1 = " ";
    Map<float,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_tmp_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: \"pie\", 3.14: \" \"})");
    assert(!(value == other), "different Any: unsafe({-0.0: \"pie\", 3.14: \" \"}) unsafe({<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>})");
    assertEqual(true, true);
}
        
void test_Any_199() {
    
    Map<float,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(-1).asScalar();
    Scalar other_tmp_vtmp0 = unsafe("pi").asScalar();
    Scalar other_tmp_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_tmp_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>})");
    assertEqual(true, true);
}
        
void test_Any_200() {
    float value_tmp_ktmp0 = 0.0;
    Scalar value_tmp_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    Scalar copy_tmp_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: <__main__.Scalar object at 0x7f9dce0f0690>})");
    assert(!(value == other), "different Any: unsafe({0.0: <__main__.Scalar object at 0x7f9dce0f0690>}) unsafe({})");
    assertEqual(true, true);
}
        