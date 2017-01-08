
void test_List_Map_Scalar_Scalar___561() {
    Scalar value_tmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_tmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    Scalar value_tmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar value_tmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar value_tmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_tmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<Scalar,Scalar>> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_tmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    Scalar copy_tmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_tmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_tmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_tmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<Scalar,Scalar>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<Scalar,Scalar>> other = [];
    assert(value == copy, "equals List<Map<Scalar,Scalar>>: [{<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}]");
    assert(!(value == other), "different List<Map<Scalar,Scalar>>: [{<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}] []");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_Any___562() {
    
    List<Map<Scalar,Any>> value = [];
    
    List<Map<Scalar,Any>> copy = [];
    
    Map<Scalar,Any> other_tmp0 = {};
    List<Map<Scalar,Any>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<Scalar,Any>>: []");
    assert(!(value == other), "different List<Map<Scalar,Any>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_Any___563() {
    
    Map<Scalar,Any> value_tmp0 = {};
    List<Map<Scalar,Any>> value = [value_tmp0];
    
    Map<Scalar,Any> copy_tmp0 = {};
    List<Map<Scalar,Any>> copy = [copy_tmp0];
    Scalar other_tmp0_ktmp0 = unsafe(0).asScalar();
    bool other_tmp0_vtmp0_tmp = true;
    Any other_tmp0_vtmp0 = unsafe(other_tmp0_vtmp0_tmp);
    Map<Scalar,Any> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    Scalar other_tmp1_ktmp0 = unsafe(0.0).asScalar();
    int other_tmp1_vtmp0_tmp = 2147483649;
    Any other_tmp1_vtmp0 = unsafe(other_tmp1_vtmp0_tmp);
    Scalar other_tmp1_ktmp1 = unsafe("pie").asScalar();
    float other_tmp1_vtmp1_tmp = 3.14;
    Any other_tmp1_vtmp1 = unsafe(other_tmp1_vtmp1_tmp);
    Map<Scalar,Any> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<Scalar,Any>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<Scalar,Any>>: [{}]");
    assert(!(value == other), "different List<Map<Scalar,Any>>: [{}] [{<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_Any___564() {
    Scalar value_tmp0_ktmp0 = unsafe(0).asScalar();
    bool value_tmp0_vtmp0_tmp = true;
    Any value_tmp0_vtmp0 = unsafe(value_tmp0_vtmp0_tmp);
    Map<Scalar,Any> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    Scalar value_tmp1_ktmp0 = unsafe(0.0).asScalar();
    int value_tmp1_vtmp0_tmp = 2147483649;
    Any value_tmp1_vtmp0 = unsafe(value_tmp1_vtmp0_tmp);
    Scalar value_tmp1_ktmp1 = unsafe("pie").asScalar();
    float value_tmp1_vtmp1_tmp = 3.14;
    Any value_tmp1_vtmp1 = unsafe(value_tmp1_vtmp1_tmp);
    Map<Scalar,Any> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<Scalar,Any>> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0_ktmp0 = unsafe(0).asScalar();
    bool copy_tmp0_vtmp0_tmp = true;
    Any copy_tmp0_vtmp0 = unsafe(copy_tmp0_vtmp0_tmp);
    Map<Scalar,Any> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    Scalar copy_tmp1_ktmp0 = unsafe(0.0).asScalar();
    int copy_tmp1_vtmp0_tmp = 2147483649;
    Any copy_tmp1_vtmp0 = unsafe(copy_tmp1_vtmp0_tmp);
    Scalar copy_tmp1_ktmp1 = unsafe("pie").asScalar();
    float copy_tmp1_vtmp1_tmp = 3.14;
    Any copy_tmp1_vtmp1 = unsafe(copy_tmp1_vtmp1_tmp);
    Map<Scalar,Any> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<Scalar,Any>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<Scalar,Any>> other = [];
    assert(value == copy, "equals List<Map<Scalar,Any>>: [{<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}]");
    assert(!(value == other), "different List<Map<Scalar,Any>>: [{<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}] []");
    assertEqual(true, true);
}
        
void test_Map_bool_List_bool___565() {
    
    Map<bool,List<bool>> value = {};
    
    Map<bool,List<bool>> copy = {};
    bool other_ktmp0 = false;
    
    List<bool> other_vtmp0 = [];
    Map<bool,List<bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,List<bool>>: {}");
    assert(!(value == other), "different Map<bool,List<bool>>: {} {false: []}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_bool___566() {
    bool value_ktmp0 = false;
    
    List<bool> value_vtmp0 = [];
    Map<bool,List<bool>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    List<bool> copy_vtmp0 = [];
    Map<bool,List<bool>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    bool other_vtmp0_tmp0 = false;
    List<bool> other_vtmp0 = [other_vtmp0_tmp0];
    bool other_ktmp1 = false;
    bool other_vtmp1_tmp0 = true;
    bool other_vtmp1_tmp1 = false;
    List<bool> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<bool,List<bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,List<bool>>: {false: []}");
    assert(!(value == other), "different Map<bool,List<bool>>: {false: []} {true: [false], false: [true, false]}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_bool___567() {
    bool value_ktmp0 = true;
    bool value_vtmp0_tmp0 = false;
    List<bool> value_vtmp0 = [value_vtmp0_tmp0];
    bool value_ktmp1 = false;
    bool value_vtmp1_tmp0 = true;
    bool value_vtmp1_tmp1 = false;
    List<bool> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<bool,List<bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    bool copy_vtmp0_tmp0 = false;
    List<bool> copy_vtmp0 = [copy_vtmp0_tmp0];
    bool copy_ktmp1 = false;
    bool copy_vtmp1_tmp0 = true;
    bool copy_vtmp1_tmp1 = false;
    List<bool> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<bool,List<bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,List<bool>> other = {};
    assert(value == copy, "equals Map<bool,List<bool>>: {true: [false], false: [true, false]}");
    assert(!(value == other), "different Map<bool,List<bool>>: {true: [false], false: [true, false]} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_int___568() {
    
    Map<bool,List<int>> value = {};
    
    Map<bool,List<int>> copy = {};
    bool other_ktmp0 = true;
    
    List<int> other_vtmp0 = [];
    Map<bool,List<int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,List<int>>: {}");
    assert(!(value == other), "different Map<bool,List<int>>: {} {true: []}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_int___569() {
    bool value_ktmp0 = true;
    
    List<int> value_vtmp0 = [];
    Map<bool,List<int>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    List<int> copy_vtmp0 = [];
    Map<bool,List<int>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    int other_vtmp0_tmp0 = -3;
    List<int> other_vtmp0 = [other_vtmp0_tmp0];
    bool other_ktmp1 = true;
    int other_vtmp1_tmp0 = -2;
    int other_vtmp1_tmp1 = -1;
    List<int> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<bool,List<int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,List<int>>: {true: []}");
    assert(!(value == other), "different Map<bool,List<int>>: {true: []} {false: [-3], true: [-2, -1]}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_int___570() {
    bool value_ktmp0 = false;
    int value_vtmp0_tmp0 = -3;
    List<int> value_vtmp0 = [value_vtmp0_tmp0];
    bool value_ktmp1 = true;
    int value_vtmp1_tmp0 = -2;
    int value_vtmp1_tmp1 = -1;
    List<int> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<bool,List<int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    int copy_vtmp0_tmp0 = -3;
    List<int> copy_vtmp0 = [copy_vtmp0_tmp0];
    bool copy_ktmp1 = true;
    int copy_vtmp1_tmp0 = -2;
    int copy_vtmp1_tmp1 = -1;
    List<int> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<bool,List<int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,List<int>> other = {};
    assert(value == copy, "equals Map<bool,List<int>>: {false: [-3], true: [-2, -1]}");
    assert(!(value == other), "different Map<bool,List<int>>: {false: [-3], true: [-2, -1]} {}");
    assertEqual(true, true);
}
        