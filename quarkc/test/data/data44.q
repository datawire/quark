
void test_Map_Scalar_int__431() {
    Scalar value_ktmp0 = unsafe(-3).asScalar();
    int value_vtmp0 = 2147483647;
    Map<Scalar,int> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(-3).asScalar();
    int copy_vtmp0 = 2147483647;
    Map<Scalar,int> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp0 = 2147483648;
    Scalar other_ktmp1 = unsafe("").asScalar();
    int other_vtmp1 = 2147483649;
    Map<Scalar,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0e44d0>: 2147483647}");
    assert(!(value == other), "different Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0e44d0>: 2147483647} {<__main__.Scalar object at 0x7f9dce0f0110>: 2147483648, <__main__.Scalar object at 0x7f9dce0f0090>: 2147483649}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_int__432() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp0 = 2147483648;
    Scalar value_ktmp1 = unsafe("").asScalar();
    int value_vtmp1 = 2147483649;
    Map<Scalar,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp0 = 2147483648;
    Scalar copy_ktmp1 = unsafe("").asScalar();
    int copy_vtmp1 = 2147483649;
    Map<Scalar,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,int> other = {};
    assert(value == copy, "equals Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0f0110>: 2147483648, <__main__.Scalar object at 0x7f9dce0f0090>: 2147483649}");
    assert(!(value == other), "different Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0f0110>: 2147483648, <__main__.Scalar object at 0x7f9dce0f0090>: 2147483649} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_float__433() {
    
    Map<Scalar,float> value = {};
    
    Map<Scalar,float> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    float other_vtmp0 = 0.0;
    Map<Scalar,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,float>: {}");
    assert(!(value == other), "different Map<Scalar,float>: {} {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_float__434() {
    Scalar value_ktmp0 = unsafe(-3).asScalar();
    float value_vtmp0 = 0.0;
    Map<Scalar,float> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(-3).asScalar();
    float copy_vtmp0 = 0.0;
    Map<Scalar,float> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp0 = -0.0;
    Scalar other_ktmp1 = unsafe("").asScalar();
    float other_vtmp1 = 3.14;
    Map<Scalar,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}");
    assert(!(value == other), "different Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0} {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_float__435() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp0 = -0.0;
    Scalar value_ktmp1 = unsafe("").asScalar();
    float value_vtmp1 = 3.14;
    Map<Scalar,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp0 = -0.0;
    Scalar copy_ktmp1 = unsafe("").asScalar();
    float copy_vtmp1 = 3.14;
    Map<Scalar,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,float> other = {};
    assert(value == copy, "equals Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}");
    assert(!(value == other), "different Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_float__436() {
    
    Map<Scalar,float> value = {};
    
    Map<Scalar,float> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    float other_vtmp0 = 0.0;
    Map<Scalar,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,float>: {}");
    assert(!(value == other), "different Map<Scalar,float>: {} {<__main__.Scalar object at 0x7f9dce0f01d0>: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_float__437() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    float value_vtmp0 = 0.0;
    Map<Scalar,float> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    float copy_vtmp0 = 0.0;
    Map<Scalar,float> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-2).asScalar();
    float other_vtmp0 = -0.0;
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    float other_vtmp1 = 3.14;
    Map<Scalar,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0f01d0>: 0.0}");
    assert(!(value == other), "different Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0f01d0>: 0.0} {<__main__.Scalar object at 0x7f9dce0f0210>: -0.0, <__main__.Scalar object at 0x7f9dce0f0290>: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_float__438() {
    Scalar value_ktmp0 = unsafe(-2).asScalar();
    float value_vtmp0 = -0.0;
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    float value_vtmp1 = 3.14;
    Map<Scalar,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-2).asScalar();
    float copy_vtmp0 = -0.0;
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    float copy_vtmp1 = 3.14;
    Map<Scalar,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,float> other = {};
    assert(value == copy, "equals Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0f0210>: -0.0, <__main__.Scalar object at 0x7f9dce0f0290>: 3.14}");
    assert(!(value == other), "different Map<Scalar,float>: {<__main__.Scalar object at 0x7f9dce0f0210>: -0.0, <__main__.Scalar object at 0x7f9dce0f0290>: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_String__439() {
    
    Map<Scalar,String> value = {};
    
    Map<Scalar,String> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    String other_vtmp0 = "\n";
    Map<Scalar,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,String>: {}");
    assert(!(value == other), "different Map<Scalar,String>: {} {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_String__440() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    String value_vtmp0 = "\n";
    Map<Scalar,String> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    String copy_vtmp0 = "\n";
    Map<Scalar,String> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp0 = "asdf\n";
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1 = "";
    Map<Scalar,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}");
    assert(!(value == other), "different Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"} {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}");
    assertEqual(true, true);
}
        