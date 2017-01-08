
void test_List_List_Scalar___471() {
    Scalar value_tmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> value_tmp0 = [value_tmp0_tmp0];
    Scalar value_tmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar value_tmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value_tmp1 = [value_tmp1_tmp0, value_tmp1_tmp1];
    List<List<Scalar>> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy_tmp0 = [copy_tmp0_tmp0];
    Scalar copy_tmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_tmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy_tmp1 = [copy_tmp1_tmp0, copy_tmp1_tmp1];
    List<List<Scalar>> copy = [copy_tmp0, copy_tmp1];
    
    List<List<Scalar>> other = [];
    assert(value == copy, "equals List<List<Scalar>>: [[unsafe(0).asScalar()], [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]]");
    assert(!(value == other), "different List<List<Scalar>>: [[unsafe(0).asScalar()], [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]] []");
    assertEqual(true, true);
}
        
void test_List_List_Any___472() {
    
    List<List<Any>> value = [];
    
    List<List<Any>> copy = [];
    
    List<Any> other_tmp0 = [];
    List<List<Any>> other = [other_tmp0];
    assert(value == copy, "equals List<List<Any>>: []");
    assert(!(value == other), "different List<List<Any>>: [] [[]]");
    assertEqual(true, true);
}
        
void test_List_List_Any___473() {
    
    List<Any> value_tmp0 = [];
    List<List<Any>> value = [value_tmp0];
    
    List<Any> copy_tmp0 = [];
    List<List<Any>> copy = [copy_tmp0];
    bool other_tmp0_tmp0_tmp = false;
    Any other_tmp0_tmp0 = unsafe(other_tmp0_tmp0_tmp);
    List<Any> other_tmp0 = [other_tmp0_tmp0];
    int other_tmp1_tmp0_tmp = 2147483646;
    Any other_tmp1_tmp0 = unsafe(other_tmp1_tmp0_tmp);
    float other_tmp1_tmp1_tmp = 3.14;
    Any other_tmp1_tmp1 = unsafe(other_tmp1_tmp1_tmp);
    List<Any> other_tmp1 = [other_tmp1_tmp0, other_tmp1_tmp1];
    List<List<Any>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<List<Any>>: [[]]");
    assert(!(value == other), "different List<List<Any>>: [[]] [[unsafe(false)], [unsafe(2147483646), unsafe(3.14)]]");
    assertEqual(true, true);
}
        
void test_List_List_Any___474() {
    bool value_tmp0_tmp0_tmp = false;
    Any value_tmp0_tmp0 = unsafe(value_tmp0_tmp0_tmp);
    List<Any> value_tmp0 = [value_tmp0_tmp0];
    int value_tmp1_tmp0_tmp = 2147483646;
    Any value_tmp1_tmp0 = unsafe(value_tmp1_tmp0_tmp);
    float value_tmp1_tmp1_tmp = 3.14;
    Any value_tmp1_tmp1 = unsafe(value_tmp1_tmp1_tmp);
    List<Any> value_tmp1 = [value_tmp1_tmp0, value_tmp1_tmp1];
    List<List<Any>> value = [value_tmp0, value_tmp1];
    bool copy_tmp0_tmp0_tmp = false;
    Any copy_tmp0_tmp0 = unsafe(copy_tmp0_tmp0_tmp);
    List<Any> copy_tmp0 = [copy_tmp0_tmp0];
    int copy_tmp1_tmp0_tmp = 2147483646;
    Any copy_tmp1_tmp0 = unsafe(copy_tmp1_tmp0_tmp);
    float copy_tmp1_tmp1_tmp = 3.14;
    Any copy_tmp1_tmp1 = unsafe(copy_tmp1_tmp1_tmp);
    List<Any> copy_tmp1 = [copy_tmp1_tmp0, copy_tmp1_tmp1];
    List<List<Any>> copy = [copy_tmp0, copy_tmp1];
    
    List<List<Any>> other = [];
    assert(value == copy, "equals List<List<Any>>: [[unsafe(false)], [unsafe(2147483646), unsafe(3.14)]]");
    assert(!(value == other), "different List<List<Any>>: [[unsafe(false)], [unsafe(2147483646), unsafe(3.14)]] []");
    assertEqual(true, true);
}
        
void test_List_Map_bool_bool___475() {
    
    List<Map<bool,bool>> value = [];
    
    List<Map<bool,bool>> copy = [];
    
    Map<bool,bool> other_tmp0 = {};
    List<Map<bool,bool>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<bool,bool>>: []");
    assert(!(value == other), "different List<Map<bool,bool>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_bool_bool___476() {
    
    Map<bool,bool> value_tmp0 = {};
    List<Map<bool,bool>> value = [value_tmp0];
    
    Map<bool,bool> copy_tmp0 = {};
    List<Map<bool,bool>> copy = [copy_tmp0];
    bool other_tmp0_ktmp0 = true;
    bool other_tmp0_vtmp0 = false;
    Map<bool,bool> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    bool other_tmp1_ktmp0 = true;
    bool other_tmp1_vtmp0 = true;
    bool other_tmp1_ktmp1 = false;
    bool other_tmp1_vtmp1 = false;
    Map<bool,bool> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<bool,bool>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<bool,bool>>: [{}]");
    assert(!(value == other), "different List<Map<bool,bool>>: [{}] [{true: false}, {true: true, false: false}]");
    assertEqual(true, true);
}
        
void test_List_Map_bool_bool___477() {
    bool value_tmp0_ktmp0 = true;
    bool value_tmp0_vtmp0 = false;
    Map<bool,bool> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    bool value_tmp1_ktmp0 = true;
    bool value_tmp1_vtmp0 = true;
    bool value_tmp1_ktmp1 = false;
    bool value_tmp1_vtmp1 = false;
    Map<bool,bool> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<bool,bool>> value = [value_tmp0, value_tmp1];
    bool copy_tmp0_ktmp0 = true;
    bool copy_tmp0_vtmp0 = false;
    Map<bool,bool> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    bool copy_tmp1_ktmp0 = true;
    bool copy_tmp1_vtmp0 = true;
    bool copy_tmp1_ktmp1 = false;
    bool copy_tmp1_vtmp1 = false;
    Map<bool,bool> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<bool,bool>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<bool,bool>> other = [];
    assert(value == copy, "equals List<Map<bool,bool>>: [{true: false}, {true: true, false: false}]");
    assert(!(value == other), "different List<Map<bool,bool>>: [{true: false}, {true: true, false: false}] []");
    assertEqual(true, true);
}
        
void test_List_Map_bool_int___478() {
    
    List<Map<bool,int>> value = [];
    
    List<Map<bool,int>> copy = [];
    
    Map<bool,int> other_tmp0 = {};
    List<Map<bool,int>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<bool,int>>: []");
    assert(!(value == other), "different List<Map<bool,int>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_bool_int___479() {
    
    Map<bool,int> value_tmp0 = {};
    List<Map<bool,int>> value = [value_tmp0];
    
    Map<bool,int> copy_tmp0 = {};
    List<Map<bool,int>> copy = [copy_tmp0];
    bool other_tmp0_ktmp0 = true;
    int other_tmp0_vtmp0 = 0;
    Map<bool,int> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    bool other_tmp1_ktmp0 = false;
    int other_tmp1_vtmp0 = 1;
    bool other_tmp1_ktmp1 = true;
    int other_tmp1_vtmp1 = 2;
    Map<bool,int> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<bool,int>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<bool,int>>: [{}]");
    assert(!(value == other), "different List<Map<bool,int>>: [{}] [{true: 0}, {false: 1, true: 2}]");
    assertEqual(true, true);
}
        
void test_List_Map_bool_int___480() {
    bool value_tmp0_ktmp0 = true;
    int value_tmp0_vtmp0 = 0;
    Map<bool,int> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    bool value_tmp1_ktmp0 = false;
    int value_tmp1_vtmp0 = 1;
    bool value_tmp1_ktmp1 = true;
    int value_tmp1_vtmp1 = 2;
    Map<bool,int> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<bool,int>> value = [value_tmp0, value_tmp1];
    bool copy_tmp0_ktmp0 = true;
    int copy_tmp0_vtmp0 = 0;
    Map<bool,int> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    bool copy_tmp1_ktmp0 = false;
    int copy_tmp1_vtmp0 = 1;
    bool copy_tmp1_ktmp1 = true;
    int copy_tmp1_vtmp1 = 2;
    Map<bool,int> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<bool,int>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<bool,int>> other = [];
    assert(value == copy, "equals List<Map<bool,int>>: [{true: 0}, {false: 1, true: 2}]");
    assert(!(value == other), "different List<Map<bool,int>>: [{true: 0}, {false: 1, true: 2}] []");
    assertEqual(true, true);
}
        