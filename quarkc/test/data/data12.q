
void test_Any_111() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_tmp0_tmp = false;
    Any other_tmp_tmp0 = unsafe(other_tmp_tmp0_tmp);
    List<Any> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe([unsafe(false)])");
    assertEqual(true, true);
}
        
void test_Any_112() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    int other_tmp_tmp0_tmp = 2147483646;
    Any other_tmp_tmp0 = unsafe(other_tmp_tmp0_tmp);
    float other_tmp_tmp1_tmp = 3.14;
    Any other_tmp_tmp1 = unsafe(other_tmp_tmp1_tmp);
    List<Any> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe([unsafe(2147483646), unsafe(3.14)])");
    assertEqual(true, true);
}
        
void test_Any_113() {
    int value_tmp = 4294967296;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967296;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967296)");
    assert(!(value == other), "different Any: unsafe(4294967296) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_114() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    bool other_tmp_vtmp0 = false;
    Map<bool,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe({true: false})");
    assertEqual(true, true);
}
        
void test_Any_115() {
    String value_tmp = "pie";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pie";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    bool other_tmp_vtmp0 = true;
    bool other_tmp_ktmp1 = false;
    bool other_tmp_vtmp1 = false;
    Map<bool,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pie\")");
    assert(!(value == other), "different Any: unsafe(\"pie\") unsafe({true: true, false: false})");
    assertEqual(true, true);
}
        
void test_Any_116() {
    int value_tmp = -1;
    Any value = unsafe(value_tmp);
    int copy_tmp = -1;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-1)");
    assert(!(value == other), "different Any: unsafe(-1) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_117() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    int other_tmp_vtmp0 = 0;
    Map<bool,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe({true: 0})");
    assertEqual(true, true);
}
        
void test_Any_118() {
    int value_tmp = 4294967297;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967297;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    int other_tmp_vtmp0 = 1;
    bool other_tmp_ktmp1 = true;
    int other_tmp_vtmp1 = 2;
    Map<bool,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967297)");
    assert(!(value == other), "different Any: unsafe(4294967297) unsafe({false: 1, true: 2})");
    assertEqual(true, true);
}
        
void test_Any_119() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_120() {
    String value_tmp = " ";
    Any value = unsafe(value_tmp);
    String copy_tmp = " ";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    float other_tmp_vtmp0 = 0.0;
    Map<bool,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\" \")");
    assert(!(value == other), "different Any: unsafe(\" \") unsafe({false: 0.0})");
    assertEqual(true, true);
}
        