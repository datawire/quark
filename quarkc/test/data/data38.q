
void test_Map_float_String__371() {
    float value_ktmp0 = 0.0;
    String value_vtmp0 = "pie";
    Map<float,String> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    String copy_vtmp0 = "pie";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0 = " ";
    float other_ktmp1 = 3.14;
    String other_vtmp1 = "\n";
    Map<float,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,String>: {0.0: \"pie\"}");
    assert(!(value == other), "different Map<float,String>: {0.0: \"pie\"} {-0.0: \" \", 3.14: \"\n\"}");
    assertEqual(true, true);
}
        
void test_Map_float_String__372() {
    float value_ktmp0 = -0.0;
    String value_vtmp0 = " ";
    float value_ktmp1 = 3.14;
    String value_vtmp1 = "\n";
    Map<float,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0 = " ";
    float copy_ktmp1 = 3.14;
    String copy_vtmp1 = "\n";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,String> other = {};
    assert(value == copy, "equals Map<float,String>: {-0.0: \" \", 3.14: \"\n\"}");
    assert(!(value == other), "different Map<float,String>: {-0.0: \" \", 3.14: \"\n\"} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__373() {
    
    Map<float,Scalar> value = {};
    
    Map<float,Scalar> copy = {};
    float other_ktmp0 = 0.0;
    Scalar other_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Scalar>: {}");
    assert(!(value == other), "different Map<float,Scalar>: {} {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__374() {
    float value_ktmp0 = 0.0;
    Scalar value_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    Scalar copy_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0 = unsafe("\n").asScalar();
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}");
    assert(!(value == other), "different Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>} {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__375() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0 = unsafe("\n").asScalar();
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0 = unsafe("\n").asScalar();
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Scalar> other = {};
    assert(value == copy, "equals Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}");
    assert(!(value == other), "different Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__376() {
    
    Map<float,Scalar> value = {};
    
    Map<float,Scalar> copy = {};
    float other_ktmp0 = 0.0;
    Scalar other_vtmp0 = unsafe(3).asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Scalar>: {}");
    assert(!(value == other), "different Map<float,Scalar>: {} {0.0: <__main__.Scalar object at 0x7f9dce0f0750>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__377() {
    float value_ktmp0 = 0.0;
    Scalar value_vtmp0 = unsafe(3).asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    Scalar copy_vtmp0 = unsafe(3).asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0 = unsafe(0.0).asScalar();
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1 = unsafe("asdf\n").asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f9dce0f0750>}");
    assert(!(value == other), "different Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f9dce0f0750>} {-0.0: <__main__.Scalar object at 0x7f9dce0f0790>, 3.14: <__main__.Scalar object at 0x7f9dce0f07d0>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__378() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0 = unsafe(0.0).asScalar();
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1 = unsafe("asdf\n").asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0 = unsafe(0.0).asScalar();
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1 = unsafe("asdf\n").asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Scalar> other = {};
    assert(value == copy, "equals Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f9dce0f0790>, 3.14: <__main__.Scalar object at 0x7f9dce0f07d0>}");
    assert(!(value == other), "different Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f9dce0f0790>, 3.14: <__main__.Scalar object at 0x7f9dce0f07d0>} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Any__379() {
    
    Map<float,Any> value = {};
    
    Map<float,Any> copy = {};
    float other_ktmp0 = 0.0;
    int other_vtmp0_tmp = -3;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<float,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Any>: {}");
    assert(!(value == other), "different Map<float,Any>: {} {0.0: unsafe(-3)}");
    assertEqual(true, true);
}
        
void test_Map_float_Any__380() {
    float value_ktmp0 = 0.0;
    int value_vtmp0_tmp = -3;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<float,Any> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    int copy_vtmp0_tmp = -3;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<float,Any> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_tmp = false;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    float other_ktmp1 = 3.14;
    int other_vtmp1_tmp = 2147483648;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<float,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Any>: {0.0: unsafe(-3)}");
    assert(!(value == other), "different Map<float,Any>: {0.0: unsafe(-3)} {-0.0: unsafe(false), 3.14: unsafe(2147483648)}");
    assertEqual(true, true);
}
        