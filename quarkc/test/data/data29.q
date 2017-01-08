
void test_Map_bool_bool__281() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    bool other_vtmp0 = true;
    bool other_ktmp1 = false;
    bool other_vtmp1 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,bool>: {true: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: false} {true: true, false: false}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__282() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = true;
    bool value_ktmp1 = false;
    bool value_vtmp1 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = true;
    bool copy_ktmp1 = false;
    bool copy_vtmp1 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,bool> other = {};
    assert(value == copy, "equals Map<bool,bool>: {true: true, false: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: true, false: false} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__283() {
    
    Map<bool,int> value = {};
    
    Map<bool,int> copy = {};
    bool other_ktmp0 = true;
    int other_vtmp0 = 0;
    Map<bool,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,int>: {}");
    assert(!(value == other), "different Map<bool,int>: {} {true: 0}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__284() {
    bool value_ktmp0 = true;
    int value_vtmp0 = 0;
    Map<bool,int> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    int copy_vtmp0 = 0;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    int other_vtmp0 = 1;
    bool other_ktmp1 = true;
    int other_vtmp1 = 2;
    Map<bool,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,int>: {true: 0}");
    assert(!(value == other), "different Map<bool,int>: {true: 0} {false: 1, true: 2}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__285() {
    bool value_ktmp0 = false;
    int value_vtmp0 = 1;
    bool value_ktmp1 = true;
    int value_vtmp1 = 2;
    Map<bool,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    int copy_vtmp0 = 1;
    bool copy_ktmp1 = true;
    int copy_vtmp1 = 2;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,int> other = {};
    assert(value == copy, "equals Map<bool,int>: {false: 1, true: 2}");
    assert(!(value == other), "different Map<bool,int>: {false: 1, true: 2} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__286() {
    
    Map<bool,int> value = {};
    
    Map<bool,int> copy = {};
    bool other_ktmp0 = true;
    int other_vtmp0 = 4294967297;
    Map<bool,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,int>: {}");
    assert(!(value == other), "different Map<bool,int>: {} {true: 4294967297}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__287() {
    bool value_ktmp0 = true;
    int value_vtmp0 = 4294967297;
    Map<bool,int> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    int copy_vtmp0 = 4294967297;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    int other_vtmp0 = 4294967298;
    bool other_ktmp1 = true;
    int other_vtmp1 = 4294967299;
    Map<bool,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,int>: {true: 4294967297}");
    assert(!(value == other), "different Map<bool,int>: {true: 4294967297} {false: 4294967298, true: 4294967299}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__288() {
    bool value_ktmp0 = false;
    int value_vtmp0 = 4294967298;
    bool value_ktmp1 = true;
    int value_vtmp1 = 4294967299;
    Map<bool,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    int copy_vtmp0 = 4294967298;
    bool copy_ktmp1 = true;
    int copy_vtmp1 = 4294967299;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,int> other = {};
    assert(value == copy, "equals Map<bool,int>: {false: 4294967298, true: 4294967299}");
    assert(!(value == other), "different Map<bool,int>: {false: 4294967298, true: 4294967299} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_float__289() {
    
    Map<bool,float> value = {};
    
    Map<bool,float> copy = {};
    bool other_ktmp0 = false;
    float other_vtmp0 = 0.0;
    Map<bool,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,float>: {}");
    assert(!(value == other), "different Map<bool,float>: {} {false: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_bool_float__290() {
    bool value_ktmp0 = false;
    float value_vtmp0 = 0.0;
    Map<bool,float> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    float copy_vtmp0 = 0.0;
    Map<bool,float> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    float other_vtmp0 = -0.0;
    bool other_ktmp1 = false;
    float other_vtmp1 = 3.14;
    Map<bool,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,float>: {false: 0.0}");
    assert(!(value == other), "different Map<bool,float>: {false: 0.0} {true: -0.0, false: 3.14}");
    assertEqual(true, true);
}
        