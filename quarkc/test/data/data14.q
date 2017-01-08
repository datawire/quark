
void test_Any_131() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    
    Map<int,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_132() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 3;
    bool other_tmp_vtmp0 = false;
    Map<int,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe({3: false})");
    assertEqual(true, true);
}
        
void test_Any_133() {
    
    List<bool> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<bool> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 2147483645;
    bool other_tmp_vtmp0 = true;
    int other_tmp_ktmp1 = 2147483646;
    bool other_tmp_vtmp1 = false;
    Map<int,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({2147483645: true, 2147483646: false})");
    assertEqual(true, true);
}
        
void test_Any_134() {
    bool value_tmp_tmp0 = false;
    List<bool> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    bool copy_tmp_tmp0 = false;
    List<bool> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([false])");
    assert(!(value == other), "different Any: unsafe([false]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_135() {
    bool value_tmp_tmp0 = true;
    bool value_tmp_tmp1 = false;
    List<bool> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    bool copy_tmp_tmp0 = true;
    bool copy_tmp_tmp1 = false;
    List<bool> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 2147483647;
    int other_tmp_vtmp0 = 2147483648;
    Map<int,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([true, false])");
    assert(!(value == other), "different Any: unsafe([true, false]) unsafe({2147483647: 2147483648})");
    assertEqual(true, true);
}
        
void test_Any_136() {
    
    List<int> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<int> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 2147483649;
    int other_tmp_vtmp0 = 2147483651;
    int other_tmp_ktmp1 = 2147483650;
    int other_tmp_vtmp1 = 4294967293;
    Map<int,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({2147483649: 2147483651, 2147483650: 4294967293})");
    assertEqual(true, true);
}
        
void test_Any_137() {
    int value_tmp_tmp0 = -3;
    List<int> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    int copy_tmp_tmp0 = -3;
    List<int> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([-3])");
    assert(!(value == other), "different Any: unsafe([-3]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_138() {
    int value_tmp_tmp0 = -2;
    int value_tmp_tmp1 = -1;
    List<int> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    int copy_tmp_tmp0 = -2;
    int copy_tmp_tmp1 = -1;
    List<int> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967294;
    float other_tmp_vtmp0 = 0.0;
    Map<int,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([-2, -1])");
    assert(!(value == other), "different Any: unsafe([-2, -1]) unsafe({4294967294: 0.0})");
    assertEqual(true, true);
}
        
void test_Any_139() {
    
    List<float> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<float> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967295;
    float other_tmp_vtmp0 = -0.0;
    int other_tmp_ktmp1 = 4294967296;
    float other_tmp_vtmp1 = 3.14;
    Map<int,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({4294967295: -0.0, 4294967296: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_140() {
    float value_tmp_tmp0 = 0.0;
    List<float> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    float copy_tmp_tmp0 = 0.0;
    List<float> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([0.0])");
    assert(!(value == other), "different Any: unsafe([0.0]) unsafe({})");
    assertEqual(true, true);
}
        