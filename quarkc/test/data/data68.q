
void test_Map_bool_Map_Scalar_Any___671() {
    bool value_ktmp0 = true;
    
    Map<Scalar,Any> value_vtmp0 = {};
    Map<bool,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<Scalar,Any> copy_vtmp0 = {};
    Map<bool,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    Scalar other_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool other_vtmp0_vtmp0_tmp = true;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp1_vtmp0_tmp = 2147483649;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    Scalar other_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_vtmp1_tmp = 3.14;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<Scalar,Any>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,Any>>: {true: {}} {false: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, true: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_Any___672() {
    bool value_ktmp0 = false;
    Scalar value_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool value_vtmp0_vtmp0_tmp = true;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp1_vtmp0_tmp = 2147483649;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    Scalar value_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_vtmp1_tmp = 3.14;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    Scalar copy_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool copy_vtmp0_vtmp0_tmp = true;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp1_vtmp0_tmp = 2147483649;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    Scalar copy_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_vtmp1_tmp = 3.14;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<Scalar,Any>> other = {};
    assert(value == copy, "equals Map<bool,Map<Scalar,Any>>: {false: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, true: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,Any>>: {false: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, true: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}} {}");
    assertEqual(true, true);
}
        
void test_Map_int_List_bool___673() {
    
    Map<int,List<bool>> value = {};
    
    Map<int,List<bool>> copy = {};
    int other_ktmp0 = -3;
    
    List<bool> other_vtmp0 = [];
    Map<int,List<bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,List<bool>>: {}");
    assert(!(value == other), "different Map<int,List<bool>>: {} {-3: []}");
    assertEqual(true, true);
}
        
void test_Map_int_List_bool___674() {
    int value_ktmp0 = -3;
    
    List<bool> value_vtmp0 = [];
    Map<int,List<bool>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = -3;
    
    List<bool> copy_vtmp0 = [];
    Map<int,List<bool>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = -2;
    bool other_vtmp0_tmp0 = false;
    List<bool> other_vtmp0 = [other_vtmp0_tmp0];
    int other_ktmp1 = -1;
    bool other_vtmp1_tmp0 = true;
    bool other_vtmp1_tmp1 = false;
    List<bool> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<int,List<bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,List<bool>>: {-3: []}");
    assert(!(value == other), "different Map<int,List<bool>>: {-3: []} {-2: [false], -1: [true, false]}");
    assertEqual(true, true);
}
        
void test_Map_int_List_bool___675() {
    int value_ktmp0 = -2;
    bool value_vtmp0_tmp0 = false;
    List<bool> value_vtmp0 = [value_vtmp0_tmp0];
    int value_ktmp1 = -1;
    bool value_vtmp1_tmp0 = true;
    bool value_vtmp1_tmp1 = false;
    List<bool> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<int,List<bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = -2;
    bool copy_vtmp0_tmp0 = false;
    List<bool> copy_vtmp0 = [copy_vtmp0_tmp0];
    int copy_ktmp1 = -1;
    bool copy_vtmp1_tmp0 = true;
    bool copy_vtmp1_tmp1 = false;
    List<bool> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<int,List<bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,List<bool>> other = {};
    assert(value == copy, "equals Map<int,List<bool>>: {-2: [false], -1: [true, false]}");
    assert(!(value == other), "different Map<int,List<bool>>: {-2: [false], -1: [true, false]} {}");
    assertEqual(true, true);
}
        
void test_Map_int_List_int___676() {
    
    Map<int,List<int>> value = {};
    
    Map<int,List<int>> copy = {};
    int other_ktmp0 = 0;
    
    List<int> other_vtmp0 = [];
    Map<int,List<int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,List<int>>: {}");
    assert(!(value == other), "different Map<int,List<int>>: {} {0: []}");
    assertEqual(true, true);
}
        
void test_Map_int_List_int___677() {
    int value_ktmp0 = 0;
    
    List<int> value_vtmp0 = [];
    Map<int,List<int>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 0;
    
    List<int> copy_vtmp0 = [];
    Map<int,List<int>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 1;
    int other_vtmp0_tmp0 = -3;
    List<int> other_vtmp0 = [other_vtmp0_tmp0];
    int other_ktmp1 = 2;
    int other_vtmp1_tmp0 = -2;
    int other_vtmp1_tmp1 = -1;
    List<int> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<int,List<int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,List<int>>: {0: []}");
    assert(!(value == other), "different Map<int,List<int>>: {0: []} {1: [-3], 2: [-2, -1]}");
    assertEqual(true, true);
}
        
void test_Map_int_List_int___678() {
    int value_ktmp0 = 1;
    int value_vtmp0_tmp0 = -3;
    List<int> value_vtmp0 = [value_vtmp0_tmp0];
    int value_ktmp1 = 2;
    int value_vtmp1_tmp0 = -2;
    int value_vtmp1_tmp1 = -1;
    List<int> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<int,List<int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 1;
    int copy_vtmp0_tmp0 = -3;
    List<int> copy_vtmp0 = [copy_vtmp0_tmp0];
    int copy_ktmp1 = 2;
    int copy_vtmp1_tmp0 = -2;
    int copy_vtmp1_tmp1 = -1;
    List<int> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<int,List<int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,List<int>> other = {};
    assert(value == copy, "equals Map<int,List<int>>: {1: [-3], 2: [-2, -1]}");
    assert(!(value == other), "different Map<int,List<int>>: {1: [-3], 2: [-2, -1]} {}");
    assertEqual(true, true);
}
        
void test_Map_int_List_float___679() {
    
    Map<int,List<float>> value = {};
    
    Map<int,List<float>> copy = {};
    int other_ktmp0 = 3;
    
    List<float> other_vtmp0 = [];
    Map<int,List<float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,List<float>>: {}");
    assert(!(value == other), "different Map<int,List<float>>: {} {3: []}");
    assertEqual(true, true);
}
        
void test_Map_int_List_float___680() {
    int value_ktmp0 = 3;
    
    List<float> value_vtmp0 = [];
    Map<int,List<float>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 3;
    
    List<float> copy_vtmp0 = [];
    Map<int,List<float>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483645;
    float other_vtmp0_tmp0 = 0.0;
    List<float> other_vtmp0 = [other_vtmp0_tmp0];
    int other_ktmp1 = 2147483646;
    float other_vtmp1_tmp0 = -0.0;
    float other_vtmp1_tmp1 = 3.14;
    List<float> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<int,List<float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,List<float>>: {3: []}");
    assert(!(value == other), "different Map<int,List<float>>: {3: []} {2147483645: [0.0], 2147483646: [-0.0, 3.14]}");
    assertEqual(true, true);
}
        