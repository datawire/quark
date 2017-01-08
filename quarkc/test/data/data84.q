
void test_Map_float_Map_int_Scalar___831() {
    float value_ktmp0 = -0.0;
    int value_vtmp0_ktmp0 = -3;
    Scalar value_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    int value_vtmp1_ktmp0 = -2;
    Scalar value_vtmp1_vtmp0 = unsafe(false).asScalar();
    int value_vtmp1_ktmp1 = -1;
    Scalar value_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<int,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0_ktmp0 = -3;
    Scalar copy_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_ktmp0 = -2;
    Scalar copy_vtmp1_vtmp0 = unsafe(false).asScalar();
    int copy_vtmp1_ktmp1 = -1;
    Scalar copy_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<int,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<int,Scalar>> other = {};
    assert(value == copy, "equals Map<float,Map<int,Scalar>>: {-0.0: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}, 3.14: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}}");
    assert(!(value == other), "different Map<float,Map<int,Scalar>>: {-0.0: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}, 3.14: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_Any___832() {
    
    Map<float,Map<int,Any>> value = {};
    
    Map<float,Map<int,Any>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<int,Any> other_vtmp0 = {};
    Map<float,Map<int,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<int,Any>>: {}");
    assert(!(value == other), "different Map<float,Map<int,Any>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_Any___833() {
    float value_ktmp0 = 0.0;
    
    Map<int,Any> value_vtmp0 = {};
    Map<float,Map<int,Any>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<int,Any> copy_vtmp0 = {};
    Map<float,Map<int,Any>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0_ktmp0 = 0;
    int other_vtmp0_vtmp0_tmp = 2147483647;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<int,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    int other_vtmp1_ktmp0 = 1;
    float other_vtmp1_vtmp0_tmp = 0.0;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    int other_vtmp1_ktmp1 = 2;
    String other_vtmp1_vtmp1_tmp = "pi";
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<int,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<int,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<int,Any>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<int,Any>>: {0.0: {}} {-0.0: {0: unsafe(2147483647)}, 3.14: {1: unsafe(0.0), 2: unsafe(\"pi\")}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_Any___834() {
    float value_ktmp0 = -0.0;
    int value_vtmp0_ktmp0 = 0;
    int value_vtmp0_vtmp0_tmp = 2147483647;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<int,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    int value_vtmp1_ktmp0 = 1;
    float value_vtmp1_vtmp0_tmp = 0.0;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    int value_vtmp1_ktmp1 = 2;
    String value_vtmp1_vtmp1_tmp = "pi";
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<int,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<int,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0_ktmp0 = 0;
    int copy_vtmp0_vtmp0_tmp = 2147483647;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<int,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_ktmp0 = 1;
    float copy_vtmp1_vtmp0_tmp = 0.0;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    int copy_vtmp1_ktmp1 = 2;
    String copy_vtmp1_vtmp1_tmp = "pi";
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<int,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<int,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<int,Any>> other = {};
    assert(value == copy, "equals Map<float,Map<int,Any>>: {-0.0: {0: unsafe(2147483647)}, 3.14: {1: unsafe(0.0), 2: unsafe(\"pi\")}}");
    assert(!(value == other), "different Map<float,Map<int,Any>>: {-0.0: {0: unsafe(2147483647)}, 3.14: {1: unsafe(0.0), 2: unsafe(\"pi\")}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_bool___835() {
    
    Map<float,Map<float,bool>> value = {};
    
    Map<float,Map<float,bool>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<float,bool> other_vtmp0 = {};
    Map<float,Map<float,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<float,bool>>: {}");
    assert(!(value == other), "different Map<float,Map<float,bool>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_bool___836() {
    float value_ktmp0 = 0.0;
    
    Map<float,bool> value_vtmp0 = {};
    Map<float,Map<float,bool>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<float,bool> copy_vtmp0 = {};
    Map<float,Map<float,bool>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    float other_vtmp0_ktmp0 = 0.0;
    bool other_vtmp0_vtmp0 = true;
    Map<float,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    float other_vtmp1_ktmp0 = -0.0;
    bool other_vtmp1_vtmp0 = false;
    float other_vtmp1_ktmp1 = 3.14;
    bool other_vtmp1_vtmp1 = true;
    Map<float,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<float,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<float,bool>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<float,bool>>: {0.0: {}} {-0.0: {0.0: true}, 3.14: {-0.0: false, 3.14: true}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_bool___837() {
    float value_ktmp0 = -0.0;
    float value_vtmp0_ktmp0 = 0.0;
    bool value_vtmp0_vtmp0 = true;
    Map<float,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    float value_vtmp1_ktmp0 = -0.0;
    bool value_vtmp1_vtmp0 = false;
    float value_vtmp1_ktmp1 = 3.14;
    bool value_vtmp1_vtmp1 = true;
    Map<float,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<float,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    float copy_vtmp0_ktmp0 = 0.0;
    bool copy_vtmp0_vtmp0 = true;
    Map<float,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    float copy_vtmp1_ktmp0 = -0.0;
    bool copy_vtmp1_vtmp0 = false;
    float copy_vtmp1_ktmp1 = 3.14;
    bool copy_vtmp1_vtmp1 = true;
    Map<float,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<float,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<float,bool>> other = {};
    assert(value == copy, "equals Map<float,Map<float,bool>>: {-0.0: {0.0: true}, 3.14: {-0.0: false, 3.14: true}}");
    assert(!(value == other), "different Map<float,Map<float,bool>>: {-0.0: {0.0: true}, 3.14: {-0.0: false, 3.14: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_int___838() {
    
    Map<float,Map<float,int>> value = {};
    
    Map<float,Map<float,int>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<float,int> other_vtmp0 = {};
    Map<float,Map<float,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<float,int>>: {}");
    assert(!(value == other), "different Map<float,Map<float,int>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_int___839() {
    float value_ktmp0 = 0.0;
    
    Map<float,int> value_vtmp0 = {};
    Map<float,Map<float,int>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<float,int> copy_vtmp0 = {};
    Map<float,Map<float,int>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    float other_vtmp0_ktmp0 = 0.0;
    int other_vtmp0_vtmp0 = 3;
    Map<float,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    float other_vtmp1_ktmp0 = -0.0;
    int other_vtmp1_vtmp0 = 2147483645;
    float other_vtmp1_ktmp1 = 3.14;
    int other_vtmp1_vtmp1 = 2147483646;
    Map<float,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<float,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<float,int>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<float,int>>: {0.0: {}} {-0.0: {0.0: 3}, 3.14: {-0.0: 2147483645, 3.14: 2147483646}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_int___840() {
    float value_ktmp0 = -0.0;
    float value_vtmp0_ktmp0 = 0.0;
    int value_vtmp0_vtmp0 = 3;
    Map<float,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    float value_vtmp1_ktmp0 = -0.0;
    int value_vtmp1_vtmp0 = 2147483645;
    float value_vtmp1_ktmp1 = 3.14;
    int value_vtmp1_vtmp1 = 2147483646;
    Map<float,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<float,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    float copy_vtmp0_ktmp0 = 0.0;
    int copy_vtmp0_vtmp0 = 3;
    Map<float,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    float copy_vtmp1_ktmp0 = -0.0;
    int copy_vtmp1_vtmp0 = 2147483645;
    float copy_vtmp1_ktmp1 = 3.14;
    int copy_vtmp1_vtmp1 = 2147483646;
    Map<float,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<float,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<float,int>> other = {};
    assert(value == copy, "equals Map<float,Map<float,int>>: {-0.0: {0.0: 3}, 3.14: {-0.0: 2147483645, 3.14: 2147483646}}");
    assert(!(value == other), "different Map<float,Map<float,int>>: {-0.0: {0.0: 3}, 3.14: {-0.0: 2147483645, 3.14: 2147483646}} {}");
    assertEqual(true, true);
}
        