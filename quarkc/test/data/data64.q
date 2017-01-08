
void test_Map_bool_Map_float_Scalar___631() {
    
    Map<bool,Map<float,Scalar>> value = {};
    
    Map<bool,Map<float,Scalar>> copy = {};
    bool other_ktmp0 = false;
    
    Map<float,Scalar> other_vtmp0 = {};
    Map<bool,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<float,Scalar>>: {}");
    assert(!(value == other), "different Map<bool,Map<float,Scalar>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_float_Scalar___632() {
    bool value_ktmp0 = false;
    
    Map<float,Scalar> value_vtmp0 = {};
    Map<bool,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<float,Scalar> copy_vtmp0 = {};
    Map<bool,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    float other_vtmp0_ktmp0 = 0.0;
    Scalar other_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    float other_vtmp1_ktmp0 = -0.0;
    Scalar other_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float other_vtmp1_ktmp1 = 3.14;
    Scalar other_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<float,Scalar>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<float,Scalar>>: {false: {}} {true: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, false: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_float_Scalar___633() {
    bool value_ktmp0 = true;
    float value_vtmp0_ktmp0 = 0.0;
    Scalar value_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    float value_vtmp1_ktmp0 = -0.0;
    Scalar value_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float value_vtmp1_ktmp1 = 3.14;
    Scalar value_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    float copy_vtmp0_ktmp0 = 0.0;
    Scalar copy_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    float copy_vtmp1_ktmp0 = -0.0;
    Scalar copy_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float copy_vtmp1_ktmp1 = 3.14;
    Scalar copy_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<float,Scalar>> other = {};
    assert(value == copy, "equals Map<bool,Map<float,Scalar>>: {true: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, false: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assert(!(value == other), "different Map<bool,Map<float,Scalar>>: {true: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, false: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_float_Any___634() {
    
    Map<bool,Map<float,Any>> value = {};
    
    Map<bool,Map<float,Any>> copy = {};
    bool other_ktmp0 = true;
    
    Map<float,Any> other_vtmp0 = {};
    Map<bool,Map<float,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<float,Any>>: {}");
    assert(!(value == other), "different Map<bool,Map<float,Any>>: {} {true: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_float_Any___635() {
    bool value_ktmp0 = true;
    
    Map<float,Any> value_vtmp0 = {};
    Map<bool,Map<float,Any>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<float,Any> copy_vtmp0 = {};
    Map<bool,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    float other_vtmp0_ktmp0 = 0.0;
    int other_vtmp0_vtmp0_tmp = -3;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<float,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    float other_vtmp1_ktmp0 = -0.0;
    bool other_vtmp1_vtmp0_tmp = false;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    float other_vtmp1_ktmp1 = 3.14;
    int other_vtmp1_vtmp1_tmp = 2147483648;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<float,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<float,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<float,Any>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<float,Any>>: {true: {}} {false: {0.0: unsafe(-3)}, true: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_float_Any___636() {
    bool value_ktmp0 = false;
    float value_vtmp0_ktmp0 = 0.0;
    int value_vtmp0_vtmp0_tmp = -3;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<float,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    float value_vtmp1_ktmp0 = -0.0;
    bool value_vtmp1_vtmp0_tmp = false;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    float value_vtmp1_ktmp1 = 3.14;
    int value_vtmp1_vtmp1_tmp = 2147483648;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<float,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<float,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    float copy_vtmp0_ktmp0 = 0.0;
    int copy_vtmp0_vtmp0_tmp = -3;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<float,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    float copy_vtmp1_ktmp0 = -0.0;
    bool copy_vtmp1_vtmp0_tmp = false;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    float copy_vtmp1_ktmp1 = 3.14;
    int copy_vtmp1_vtmp1_tmp = 2147483648;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<float,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<float,Any>> other = {};
    assert(value == copy, "equals Map<bool,Map<float,Any>>: {false: {0.0: unsafe(-3)}, true: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assert(!(value == other), "different Map<bool,Map<float,Any>>: {false: {0.0: unsafe(-3)}, true: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_bool___637() {
    
    Map<bool,Map<String,bool>> value = {};
    
    Map<bool,Map<String,bool>> copy = {};
    bool other_ktmp0 = false;
    
    Map<String,bool> other_vtmp0 = {};
    Map<bool,Map<String,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<String,bool>>: {}");
    assert(!(value == other), "different Map<bool,Map<String,bool>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_bool___638() {
    bool value_ktmp0 = false;
    
    Map<String,bool> value_vtmp0 = {};
    Map<bool,Map<String,bool>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<String,bool> copy_vtmp0 = {};
    Map<bool,Map<String,bool>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    String other_vtmp0_ktmp0 = "\n";
    bool other_vtmp0_vtmp0 = false;
    Map<String,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    String other_vtmp1_ktmp0 = "asdf\n";
    bool other_vtmp1_vtmp0 = true;
    String other_vtmp1_ktmp1 = "";
    bool other_vtmp1_vtmp1 = false;
    Map<String,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<String,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<String,bool>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<String,bool>>: {false: {}} {true: {\"\n\": false}, false: {\"asdf\n\": true, \"\": false}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_bool___639() {
    bool value_ktmp0 = true;
    String value_vtmp0_ktmp0 = "\n";
    bool value_vtmp0_vtmp0 = false;
    Map<String,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    String value_vtmp1_ktmp0 = "asdf\n";
    bool value_vtmp1_vtmp0 = true;
    String value_vtmp1_ktmp1 = "";
    bool value_vtmp1_vtmp1 = false;
    Map<String,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<String,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    String copy_vtmp0_ktmp0 = "\n";
    bool copy_vtmp0_vtmp0 = false;
    Map<String,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    String copy_vtmp1_ktmp0 = "asdf\n";
    bool copy_vtmp1_vtmp0 = true;
    String copy_vtmp1_ktmp1 = "";
    bool copy_vtmp1_vtmp1 = false;
    Map<String,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<String,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<String,bool>> other = {};
    assert(value == copy, "equals Map<bool,Map<String,bool>>: {true: {\"\n\": false}, false: {\"asdf\n\": true, \"\": false}}");
    assert(!(value == other), "different Map<bool,Map<String,bool>>: {true: {\"\n\": false}, false: {\"asdf\n\": true, \"\": false}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_int___640() {
    
    Map<bool,Map<String,int>> value = {};
    
    Map<bool,Map<String,int>> copy = {};
    bool other_ktmp0 = true;
    
    Map<String,int> other_vtmp0 = {};
    Map<bool,Map<String,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<String,int>>: {}");
    assert(!(value == other), "different Map<bool,Map<String,int>>: {} {true: {}}");
    assertEqual(true, true);
}
        