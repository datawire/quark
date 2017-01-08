
void test_Map_float_bool__351() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0 = false;
    float value_ktmp1 = 3.14;
    bool value_vtmp1 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0 = false;
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,bool> other = {};
    assert(value == copy, "equals Map<float,bool>: {-0.0: false, 3.14: true}");
    assert(!(value == other), "different Map<float,bool>: {-0.0: false, 3.14: true} {}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__352() {
    
    Map<float,bool> value = {};
    
    Map<float,bool> copy = {};
    float other_ktmp0 = 0.0;
    bool other_vtmp0 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,bool>: {}");
    assert(!(value == other), "different Map<float,bool>: {} {0.0: true}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__353() {
    float value_ktmp0 = 0.0;
    bool value_vtmp0 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    bool copy_vtmp0 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0 = false;
    float other_ktmp1 = 3.14;
    bool other_vtmp1 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,bool>: {0.0: true}");
    assert(!(value == other), "different Map<float,bool>: {0.0: true} {-0.0: false, 3.14: true}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__354() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0 = false;
    float value_ktmp1 = 3.14;
    bool value_vtmp1 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0 = false;
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,bool> other = {};
    assert(value == copy, "equals Map<float,bool>: {-0.0: false, 3.14: true}");
    assert(!(value == other), "different Map<float,bool>: {-0.0: false, 3.14: true} {}");
    assertEqual(true, true);
}
        
void test_Map_float_int__355() {
    
    Map<float,int> value = {};
    
    Map<float,int> copy = {};
    float other_ktmp0 = 0.0;
    int other_vtmp0 = 3;
    Map<float,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,int>: {}");
    assert(!(value == other), "different Map<float,int>: {} {0.0: 3}");
    assertEqual(true, true);
}
        
void test_Map_float_int__356() {
    float value_ktmp0 = 0.0;
    int value_vtmp0 = 3;
    Map<float,int> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    int copy_vtmp0 = 3;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0 = 2147483645;
    float other_ktmp1 = 3.14;
    int other_vtmp1 = 2147483646;
    Map<float,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,int>: {0.0: 3}");
    assert(!(value == other), "different Map<float,int>: {0.0: 3} {-0.0: 2147483645, 3.14: 2147483646}");
    assertEqual(true, true);
}
        
void test_Map_float_int__357() {
    float value_ktmp0 = -0.0;
    int value_vtmp0 = 2147483645;
    float value_ktmp1 = 3.14;
    int value_vtmp1 = 2147483646;
    Map<float,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0 = 2147483645;
    float copy_ktmp1 = 3.14;
    int copy_vtmp1 = 2147483646;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,int> other = {};
    assert(value == copy, "equals Map<float,int>: {-0.0: 2147483645, 3.14: 2147483646}");
    assert(!(value == other), "different Map<float,int>: {-0.0: 2147483645, 3.14: 2147483646} {}");
    assertEqual(true, true);
}
        
void test_Map_float_int__358() {
    
    Map<float,int> value = {};
    
    Map<float,int> copy = {};
    float other_ktmp0 = 0.0;
    int other_vtmp0 = 0;
    Map<float,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,int>: {}");
    assert(!(value == other), "different Map<float,int>: {} {0.0: 0}");
    assertEqual(true, true);
}
        
void test_Map_float_int__359() {
    float value_ktmp0 = 0.0;
    int value_vtmp0 = 0;
    Map<float,int> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    int copy_vtmp0 = 0;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0 = 1;
    float other_ktmp1 = 3.14;
    int other_vtmp1 = 2;
    Map<float,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,int>: {0.0: 0}");
    assert(!(value == other), "different Map<float,int>: {0.0: 0} {-0.0: 1, 3.14: 2}");
    assertEqual(true, true);
}
        
void test_Map_float_int__360() {
    float value_ktmp0 = -0.0;
    int value_vtmp0 = 1;
    float value_ktmp1 = 3.14;
    int value_vtmp1 = 2;
    Map<float,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0 = 1;
    float copy_ktmp1 = 3.14;
    int copy_vtmp1 = 2;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,int> other = {};
    assert(value == copy, "equals Map<float,int>: {-0.0: 1, 3.14: 2}");
    assert(!(value == other), "different Map<float,int>: {-0.0: 1, 3.14: 2} {}");
    assertEqual(true, true);
}
        