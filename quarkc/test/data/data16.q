
void test_Any_151() {
    
    Map<bool,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    bool other_tmp_vtmp0 = false;
    float other_tmp_ktmp1 = 3.14;
    bool other_tmp_vtmp1 = true;
    Map<float,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: false, 3.14: true})");
    assertEqual(true, true);
}
        
void test_Any_152() {
    bool value_tmp_ktmp0 = true;
    bool value_tmp_vtmp0 = false;
    Map<bool,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    bool copy_tmp_vtmp0 = false;
    Map<bool,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: false})");
    assert(!(value == other), "different Any: unsafe({true: false}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_153() {
    bool value_tmp_ktmp0 = true;
    bool value_tmp_vtmp0 = true;
    bool value_tmp_ktmp1 = false;
    bool value_tmp_vtmp1 = false;
    Map<bool,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    bool copy_tmp_vtmp0 = true;
    bool copy_tmp_ktmp1 = false;
    bool copy_tmp_vtmp1 = false;
    Map<bool,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    int other_tmp_vtmp0 = 3;
    Map<float,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: true, false: false})");
    assert(!(value == other), "different Any: unsafe({true: true, false: false}) unsafe({0.0: 3})");
    assertEqual(true, true);
}
        
void test_Any_154() {
    
    Map<bool,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    int other_tmp_vtmp0 = 2147483645;
    float other_tmp_ktmp1 = 3.14;
    int other_tmp_vtmp1 = 2147483646;
    Map<float,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: 2147483645, 3.14: 2147483646})");
    assertEqual(true, true);
}
        
void test_Any_155() {
    bool value_tmp_ktmp0 = true;
    int value_tmp_vtmp0 = 0;
    Map<bool,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    int copy_tmp_vtmp0 = 0;
    Map<bool,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: 0})");
    assert(!(value == other), "different Any: unsafe({true: 0}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_156() {
    bool value_tmp_ktmp0 = false;
    int value_tmp_vtmp0 = 1;
    bool value_tmp_ktmp1 = true;
    int value_tmp_vtmp1 = 2;
    Map<bool,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    int copy_tmp_vtmp0 = 1;
    bool copy_tmp_ktmp1 = true;
    int copy_tmp_vtmp1 = 2;
    Map<bool,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    float other_tmp_vtmp0 = -0.0;
    Map<float,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: 1, true: 2})");
    assert(!(value == other), "different Any: unsafe({false: 1, true: 2}) unsafe({0.0: -0.0})");
    assertEqual(true, true);
}
        
void test_Any_157() {
    
    Map<bool,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 3.14;
    float other_tmp_vtmp0 = -0.0;
    float other_tmp_ktmp1 = 0.0;
    float other_tmp_vtmp1 = 3.14;
    Map<float,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({3.14: -0.0, 0.0: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_158() {
    bool value_tmp_ktmp0 = false;
    float value_tmp_vtmp0 = 0.0;
    Map<bool,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    float copy_tmp_vtmp0 = 0.0;
    Map<bool,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: 0.0})");
    assert(!(value == other), "different Any: unsafe({false: 0.0}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_159() {
    bool value_tmp_ktmp0 = true;
    float value_tmp_vtmp0 = -0.0;
    bool value_tmp_ktmp1 = false;
    float value_tmp_vtmp1 = 3.14;
    Map<bool,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    float copy_tmp_vtmp0 = -0.0;
    bool copy_tmp_ktmp1 = false;
    float copy_tmp_vtmp1 = 3.14;
    Map<bool,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    String other_tmp_vtmp0 = "pi";
    Map<float,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: -0.0, false: 3.14})");
    assert(!(value == other), "different Any: unsafe({true: -0.0, false: 3.14}) unsafe({0.0: \"pi\"})");
    assertEqual(true, true);
}
        
void test_Any_160() {
    
    Map<bool,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    String other_tmp_vtmp0 = "pie";
    float other_tmp_ktmp1 = 3.14;
    String other_tmp_vtmp1 = " ";
    Map<float,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: \"pie\", 3.14: \" \"})");
    assertEqual(true, true);
}
        