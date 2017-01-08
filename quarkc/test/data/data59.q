
void test_Map_bool_List_Any___581() {
    bool value_ktmp0 = true;
    
    List<Any> value_vtmp0 = [];
    Map<bool,List<Any>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    List<Any> copy_vtmp0 = [];
    Map<bool,List<Any>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    bool other_vtmp0_tmp0_tmp = false;
    Any other_vtmp0_tmp0 = unsafe(other_vtmp0_tmp0_tmp);
    List<Any> other_vtmp0 = [other_vtmp0_tmp0];
    bool other_ktmp1 = true;
    int other_vtmp1_tmp0_tmp = 2147483646;
    Any other_vtmp1_tmp0 = unsafe(other_vtmp1_tmp0_tmp);
    float other_vtmp1_tmp1_tmp = 3.14;
    Any other_vtmp1_tmp1 = unsafe(other_vtmp1_tmp1_tmp);
    List<Any> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<bool,List<Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,List<Any>>: {true: []}");
    assert(!(value == other), "different Map<bool,List<Any>>: {true: []} {false: [unsafe(false)], true: [unsafe(2147483646), unsafe(3.14)]}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_Any___582() {
    bool value_ktmp0 = false;
    bool value_vtmp0_tmp0_tmp = false;
    Any value_vtmp0_tmp0 = unsafe(value_vtmp0_tmp0_tmp);
    List<Any> value_vtmp0 = [value_vtmp0_tmp0];
    bool value_ktmp1 = true;
    int value_vtmp1_tmp0_tmp = 2147483646;
    Any value_vtmp1_tmp0 = unsafe(value_vtmp1_tmp0_tmp);
    float value_vtmp1_tmp1_tmp = 3.14;
    Any value_vtmp1_tmp1 = unsafe(value_vtmp1_tmp1_tmp);
    List<Any> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<bool,List<Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    bool copy_vtmp0_tmp0_tmp = false;
    Any copy_vtmp0_tmp0 = unsafe(copy_vtmp0_tmp0_tmp);
    List<Any> copy_vtmp0 = [copy_vtmp0_tmp0];
    bool copy_ktmp1 = true;
    int copy_vtmp1_tmp0_tmp = 2147483646;
    Any copy_vtmp1_tmp0 = unsafe(copy_vtmp1_tmp0_tmp);
    float copy_vtmp1_tmp1_tmp = 3.14;
    Any copy_vtmp1_tmp1 = unsafe(copy_vtmp1_tmp1_tmp);
    List<Any> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<bool,List<Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,List<Any>> other = {};
    assert(value == copy, "equals Map<bool,List<Any>>: {false: [unsafe(false)], true: [unsafe(2147483646), unsafe(3.14)]}");
    assert(!(value == other), "different Map<bool,List<Any>>: {false: [unsafe(false)], true: [unsafe(2147483646), unsafe(3.14)]} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_bool___583() {
    
    Map<bool,Map<bool,bool>> value = {};
    
    Map<bool,Map<bool,bool>> copy = {};
    bool other_ktmp0 = false;
    
    Map<bool,bool> other_vtmp0 = {};
    Map<bool,Map<bool,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<bool,bool>>: {}");
    assert(!(value == other), "different Map<bool,Map<bool,bool>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_bool___584() {
    bool value_ktmp0 = false;
    
    Map<bool,bool> value_vtmp0 = {};
    Map<bool,Map<bool,bool>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<bool,bool> copy_vtmp0 = {};
    Map<bool,Map<bool,bool>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    bool other_vtmp0_ktmp0 = true;
    bool other_vtmp0_vtmp0 = false;
    Map<bool,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    bool other_vtmp1_ktmp0 = true;
    bool other_vtmp1_vtmp0 = true;
    bool other_vtmp1_ktmp1 = false;
    bool other_vtmp1_vtmp1 = false;
    Map<bool,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<bool,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<bool,bool>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<bool,bool>>: {false: {}} {true: {true: false}, false: {true: true, false: false}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_bool___585() {
    bool value_ktmp0 = true;
    bool value_vtmp0_ktmp0 = true;
    bool value_vtmp0_vtmp0 = false;
    Map<bool,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    bool value_vtmp1_ktmp0 = true;
    bool value_vtmp1_vtmp0 = true;
    bool value_vtmp1_ktmp1 = false;
    bool value_vtmp1_vtmp1 = false;
    Map<bool,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<bool,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    bool copy_vtmp0_ktmp0 = true;
    bool copy_vtmp0_vtmp0 = false;
    Map<bool,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    bool copy_vtmp1_ktmp0 = true;
    bool copy_vtmp1_vtmp0 = true;
    bool copy_vtmp1_ktmp1 = false;
    bool copy_vtmp1_vtmp1 = false;
    Map<bool,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<bool,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<bool,bool>> other = {};
    assert(value == copy, "equals Map<bool,Map<bool,bool>>: {true: {true: false}, false: {true: true, false: false}}");
    assert(!(value == other), "different Map<bool,Map<bool,bool>>: {true: {true: false}, false: {true: true, false: false}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_int___586() {
    
    Map<bool,Map<bool,int>> value = {};
    
    Map<bool,Map<bool,int>> copy = {};
    bool other_ktmp0 = true;
    
    Map<bool,int> other_vtmp0 = {};
    Map<bool,Map<bool,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<bool,int>>: {}");
    assert(!(value == other), "different Map<bool,Map<bool,int>>: {} {true: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_int___587() {
    bool value_ktmp0 = true;
    
    Map<bool,int> value_vtmp0 = {};
    Map<bool,Map<bool,int>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<bool,int> copy_vtmp0 = {};
    Map<bool,Map<bool,int>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    bool other_vtmp0_ktmp0 = true;
    int other_vtmp0_vtmp0 = 0;
    Map<bool,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    bool other_vtmp1_ktmp0 = false;
    int other_vtmp1_vtmp0 = 1;
    bool other_vtmp1_ktmp1 = true;
    int other_vtmp1_vtmp1 = 2;
    Map<bool,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<bool,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<bool,int>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<bool,int>>: {true: {}} {false: {true: 0}, true: {false: 1, true: 2}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_int___588() {
    bool value_ktmp0 = false;
    bool value_vtmp0_ktmp0 = true;
    int value_vtmp0_vtmp0 = 0;
    Map<bool,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    bool value_vtmp1_ktmp0 = false;
    int value_vtmp1_vtmp0 = 1;
    bool value_vtmp1_ktmp1 = true;
    int value_vtmp1_vtmp1 = 2;
    Map<bool,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<bool,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    bool copy_vtmp0_ktmp0 = true;
    int copy_vtmp0_vtmp0 = 0;
    Map<bool,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    bool copy_vtmp1_ktmp0 = false;
    int copy_vtmp1_vtmp0 = 1;
    bool copy_vtmp1_ktmp1 = true;
    int copy_vtmp1_vtmp1 = 2;
    Map<bool,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<bool,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<bool,int>> other = {};
    assert(value == copy, "equals Map<bool,Map<bool,int>>: {false: {true: 0}, true: {false: 1, true: 2}}");
    assert(!(value == other), "different Map<bool,Map<bool,int>>: {false: {true: 0}, true: {false: 1, true: 2}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_float___589() {
    
    Map<bool,Map<bool,float>> value = {};
    
    Map<bool,Map<bool,float>> copy = {};
    bool other_ktmp0 = false;
    
    Map<bool,float> other_vtmp0 = {};
    Map<bool,Map<bool,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<bool,float>>: {}");
    assert(!(value == other), "different Map<bool,Map<bool,float>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_bool_float___590() {
    bool value_ktmp0 = false;
    
    Map<bool,float> value_vtmp0 = {};
    Map<bool,Map<bool,float>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<bool,float> copy_vtmp0 = {};
    Map<bool,Map<bool,float>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    bool other_vtmp0_ktmp0 = false;
    float other_vtmp0_vtmp0 = 0.0;
    Map<bool,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    bool other_vtmp1_ktmp0 = true;
    float other_vtmp1_vtmp0 = -0.0;
    bool other_vtmp1_ktmp1 = false;
    float other_vtmp1_vtmp1 = 3.14;
    Map<bool,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<bool,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<bool,float>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<bool,float>>: {false: {}} {true: {false: 0.0}, false: {true: -0.0, false: 3.14}}");
    assertEqual(true, true);
}
        