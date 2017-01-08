
void test_Map_float_Map_bool_Scalar___811() {
    
    Map<float,Map<bool,Scalar>> value = {};
    
    Map<float,Map<bool,Scalar>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<bool,Scalar> other_vtmp0 = {};
    Map<float,Map<bool,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<bool,Scalar>>: {}");
    assert(!(value == other), "different Map<float,Map<bool,Scalar>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_Scalar___812() {
    float value_ktmp0 = 0.0;
    
    Map<bool,Scalar> value_vtmp0 = {};
    Map<float,Map<bool,Scalar>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<bool,Scalar> copy_vtmp0 = {};
    Map<float,Map<bool,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_ktmp0 = false;
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    bool other_vtmp1_ktmp0 = true;
    Scalar other_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool other_vtmp1_ktmp1 = false;
    Scalar other_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<bool,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<bool,Scalar>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<bool,Scalar>>: {0.0: {}} {-0.0: {false: <__main__.Scalar object at 0x7f9dce0f0510>}, 3.14: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_Scalar___813() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_ktmp0 = false;
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    bool value_vtmp1_ktmp0 = true;
    Scalar value_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool value_vtmp1_ktmp1 = false;
    Scalar value_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<bool,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_ktmp0 = false;
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1_ktmp0 = true;
    Scalar copy_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool copy_vtmp1_ktmp1 = false;
    Scalar copy_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<bool,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<bool,Scalar>> other = {};
    assert(value == copy, "equals Map<float,Map<bool,Scalar>>: {-0.0: {false: <__main__.Scalar object at 0x7f9dce0f0510>}, 3.14: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}}");
    assert(!(value == other), "different Map<float,Map<bool,Scalar>>: {-0.0: {false: <__main__.Scalar object at 0x7f9dce0f0510>}, 3.14: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_Any___814() {
    
    Map<float,Map<bool,Any>> value = {};
    
    Map<float,Map<bool,Any>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<bool,Any> other_vtmp0 = {};
    Map<float,Map<bool,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<bool,Any>>: {}");
    assert(!(value == other), "different Map<float,Map<bool,Any>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_Any___815() {
    float value_ktmp0 = 0.0;
    
    Map<bool,Any> value_vtmp0 = {};
    Map<float,Map<bool,Any>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<bool,Any> copy_vtmp0 = {};
    Map<float,Map<bool,Any>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_ktmp0 = true;
    String other_vtmp0_vtmp0_tmp = "Hello World!";
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<bool,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    bool other_vtmp1_ktmp0 = false;
    bool other_vtmp1_vtmp0_tmp = true;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    bool other_vtmp1_ktmp1 = true;
    bool other_vtmp1_vtmp1_tmp = true;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<bool,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<bool,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<bool,Any>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<bool,Any>>: {0.0: {}} {-0.0: {true: unsafe(\"Hello World!\")}, 3.14: {false: unsafe(true), true: unsafe(true)}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_Any___816() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_ktmp0 = true;
    String value_vtmp0_vtmp0_tmp = "Hello World!";
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<bool,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    bool value_vtmp1_ktmp0 = false;
    bool value_vtmp1_vtmp0_tmp = true;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    bool value_vtmp1_ktmp1 = true;
    bool value_vtmp1_vtmp1_tmp = true;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<bool,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<bool,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_ktmp0 = true;
    String copy_vtmp0_vtmp0_tmp = "Hello World!";
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<bool,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1_ktmp0 = false;
    bool copy_vtmp1_vtmp0_tmp = true;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    bool copy_vtmp1_ktmp1 = true;
    bool copy_vtmp1_vtmp1_tmp = true;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<bool,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<bool,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<bool,Any>> other = {};
    assert(value == copy, "equals Map<float,Map<bool,Any>>: {-0.0: {true: unsafe(\"Hello World!\")}, 3.14: {false: unsafe(true), true: unsafe(true)}}");
    assert(!(value == other), "different Map<float,Map<bool,Any>>: {-0.0: {true: unsafe(\"Hello World!\")}, 3.14: {false: unsafe(true), true: unsafe(true)}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_bool___817() {
    
    Map<float,Map<int,bool>> value = {};
    
    Map<float,Map<int,bool>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<int,bool> other_vtmp0 = {};
    Map<float,Map<int,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<int,bool>>: {}");
    assert(!(value == other), "different Map<float,Map<int,bool>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_bool___818() {
    float value_ktmp0 = 0.0;
    
    Map<int,bool> value_vtmp0 = {};
    Map<float,Map<int,bool>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<int,bool> copy_vtmp0 = {};
    Map<float,Map<int,bool>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0_ktmp0 = 3;
    bool other_vtmp0_vtmp0 = false;
    Map<int,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    int other_vtmp1_ktmp0 = 2147483645;
    bool other_vtmp1_vtmp0 = true;
    int other_vtmp1_ktmp1 = 2147483646;
    bool other_vtmp1_vtmp1 = false;
    Map<int,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<int,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<int,bool>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<int,bool>>: {0.0: {}} {-0.0: {3: false}, 3.14: {2147483645: true, 2147483646: false}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_bool___819() {
    float value_ktmp0 = -0.0;
    int value_vtmp0_ktmp0 = 3;
    bool value_vtmp0_vtmp0 = false;
    Map<int,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    int value_vtmp1_ktmp0 = 2147483645;
    bool value_vtmp1_vtmp0 = true;
    int value_vtmp1_ktmp1 = 2147483646;
    bool value_vtmp1_vtmp1 = false;
    Map<int,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<int,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0_ktmp0 = 3;
    bool copy_vtmp0_vtmp0 = false;
    Map<int,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_ktmp0 = 2147483645;
    bool copy_vtmp1_vtmp0 = true;
    int copy_vtmp1_ktmp1 = 2147483646;
    bool copy_vtmp1_vtmp1 = false;
    Map<int,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<int,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<int,bool>> other = {};
    assert(value == copy, "equals Map<float,Map<int,bool>>: {-0.0: {3: false}, 3.14: {2147483645: true, 2147483646: false}}");
    assert(!(value == other), "different Map<float,Map<int,bool>>: {-0.0: {3: false}, 3.14: {2147483645: true, 2147483646: false}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_int___820() {
    
    Map<float,Map<int,int>> value = {};
    
    Map<float,Map<int,int>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<int,int> other_vtmp0 = {};
    Map<float,Map<int,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<int,int>>: {}");
    assert(!(value == other), "different Map<float,Map<int,int>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        