
void test_Map_int_Scalar__341() {
    int value_ktmp0 = 4294967294;
    Scalar value_vtmp0 = unsafe(3.14).asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967294;
    Scalar copy_vtmp0 = unsafe(3.14).asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967295;
    Scalar other_vtmp0 = unsafe("\n").asScalar();
    int other_ktmp1 = 4294967296;
    Scalar other_vtmp1 = unsafe(true).asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Scalar>: {4294967294: <__main__.Scalar object at 0x7f9dce0f0690>}");
    assert(!(value == other), "different Map<int,Scalar>: {4294967294: <__main__.Scalar object at 0x7f9dce0f0690>} {4294967295: <__main__.Scalar object at 0x7f9dce0f06d0>, 4294967296: <__main__.Scalar object at 0x7f9dce0f0710>}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__342() {
    int value_ktmp0 = 4294967295;
    Scalar value_vtmp0 = unsafe("\n").asScalar();
    int value_ktmp1 = 4294967296;
    Scalar value_vtmp1 = unsafe(true).asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967295;
    Scalar copy_vtmp0 = unsafe("\n").asScalar();
    int copy_ktmp1 = 4294967296;
    Scalar copy_vtmp1 = unsafe(true).asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Scalar> other = {};
    assert(value == copy, "equals Map<int,Scalar>: {4294967295: <__main__.Scalar object at 0x7f9dce0f06d0>, 4294967296: <__main__.Scalar object at 0x7f9dce0f0710>}");
    assert(!(value == other), "different Map<int,Scalar>: {4294967295: <__main__.Scalar object at 0x7f9dce0f06d0>, 4294967296: <__main__.Scalar object at 0x7f9dce0f0710>} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__343() {
    
    Map<int,Any> value = {};
    
    Map<int,Any> copy = {};
    int other_ktmp0 = 0;
    int other_vtmp0_tmp = 2147483647;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Any>: {}");
    assert(!(value == other), "different Map<int,Any>: {} {0: unsafe(2147483647)}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__344() {
    int value_ktmp0 = 0;
    int value_vtmp0_tmp = 2147483647;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 0;
    int copy_vtmp0_tmp = 2147483647;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 1;
    float other_vtmp0_tmp = 0.0;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    int other_ktmp1 = 2;
    String other_vtmp1_tmp = "pi";
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Any>: {0: unsafe(2147483647)}");
    assert(!(value == other), "different Map<int,Any>: {0: unsafe(2147483647)} {1: unsafe(0.0), 2: unsafe(\"pi\")}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__345() {
    int value_ktmp0 = 1;
    float value_vtmp0_tmp = 0.0;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    int value_ktmp1 = 2;
    String value_vtmp1_tmp = "pi";
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 1;
    float copy_vtmp0_tmp = 0.0;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    int copy_ktmp1 = 2;
    String copy_vtmp1_tmp = "pi";
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Any> other = {};
    assert(value == copy, "equals Map<int,Any>: {1: unsafe(0.0), 2: unsafe(\"pi\")}");
    assert(!(value == other), "different Map<int,Any>: {1: unsafe(0.0), 2: unsafe(\"pi\")} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__346() {
    
    Map<int,Any> value = {};
    
    Map<int,Any> copy = {};
    int other_ktmp0 = 4294967297;
    bool other_vtmp0_tmp = false;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Any>: {}");
    assert(!(value == other), "different Map<int,Any>: {} {4294967297: unsafe(false)}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__347() {
    int value_ktmp0 = 4294967297;
    bool value_vtmp0_tmp = false;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967297;
    bool copy_vtmp0_tmp = false;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967298;
    bool other_vtmp0_tmp = true;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    int other_ktmp1 = 4294967299;
    int other_vtmp1_tmp = 2147483651;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Any>: {4294967297: unsafe(false)}");
    assert(!(value == other), "different Map<int,Any>: {4294967297: unsafe(false)} {4294967298: unsafe(true), 4294967299: unsafe(2147483651)}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__348() {
    int value_ktmp0 = 4294967298;
    bool value_vtmp0_tmp = true;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    int value_ktmp1 = 4294967299;
    int value_vtmp1_tmp = 2147483651;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967298;
    bool copy_vtmp0_tmp = true;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    int copy_ktmp1 = 4294967299;
    int copy_vtmp1_tmp = 2147483651;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Any> other = {};
    assert(value == copy, "equals Map<int,Any>: {4294967298: unsafe(true), 4294967299: unsafe(2147483651)}");
    assert(!(value == other), "different Map<int,Any>: {4294967298: unsafe(true), 4294967299: unsafe(2147483651)} {}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__349() {
    
    Map<float,bool> value = {};
    
    Map<float,bool> copy = {};
    float other_ktmp0 = 0.0;
    bool other_vtmp0 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,bool>: {}");
    assert(!(value == other), "different Map<float,bool>: {} {0.0: true}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__350() {
    float value_ktmp0 = 0.0;
    bool value_vtmp0 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    bool copy_vtmp0 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0 = false;
    float other_ktmp1 = 3.14;
    bool other_vtmp1 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,bool>: {0.0: true}");
    assert(!(value == other), "different Map<float,bool>: {0.0: true} {-0.0: false, 3.14: true}");
    assertEqual(true, true);
}
        