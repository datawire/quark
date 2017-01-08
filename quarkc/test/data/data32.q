
void test_Map_bool_Any__311() {
    bool value_ktmp0 = true;
    int value_vtmp0_tmp = 2147483650;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    int copy_vtmp0_tmp = 2147483650;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    float other_vtmp0_tmp = 0.0;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    bool other_ktmp1 = true;
    String other_vtmp1_tmp = "\n";
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Any>: {true: unsafe(2147483650)}");
    assert(!(value == other), "different Map<bool,Any>: {true: unsafe(2147483650)} {false: unsafe(0.0), true: unsafe(\"\n\")}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__312() {
    bool value_ktmp0 = false;
    float value_vtmp0_tmp = 0.0;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    bool value_ktmp1 = true;
    String value_vtmp1_tmp = "\n";
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    float copy_vtmp0_tmp = 0.0;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    bool copy_ktmp1 = true;
    String copy_vtmp1_tmp = "\n";
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Any> other = {};
    assert(value == copy, "equals Map<bool,Any>: {false: unsafe(0.0), true: unsafe(\"\n\")}");
    assert(!(value == other), "different Map<bool,Any>: {false: unsafe(0.0), true: unsafe(\"\n\")} {}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__313() {
    
    Map<int,bool> value = {};
    
    Map<int,bool> copy = {};
    int other_ktmp0 = 3;
    bool other_vtmp0 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,bool>: {}");
    assert(!(value == other), "different Map<int,bool>: {} {3: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__314() {
    int value_ktmp0 = 3;
    bool value_vtmp0 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 3;
    bool copy_vtmp0 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483645;
    bool other_vtmp0 = true;
    int other_ktmp1 = 2147483646;
    bool other_vtmp1 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,bool>: {3: false}");
    assert(!(value == other), "different Map<int,bool>: {3: false} {2147483645: true, 2147483646: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__315() {
    int value_ktmp0 = 2147483645;
    bool value_vtmp0 = true;
    int value_ktmp1 = 2147483646;
    bool value_vtmp1 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483645;
    bool copy_vtmp0 = true;
    int copy_ktmp1 = 2147483646;
    bool copy_vtmp1 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,bool> other = {};
    assert(value == copy, "equals Map<int,bool>: {2147483645: true, 2147483646: false}");
    assert(!(value == other), "different Map<int,bool>: {2147483645: true, 2147483646: false} {}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__316() {
    
    Map<int,bool> value = {};
    
    Map<int,bool> copy = {};
    int other_ktmp0 = -3;
    bool other_vtmp0 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,bool>: {}");
    assert(!(value == other), "different Map<int,bool>: {} {-3: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__317() {
    int value_ktmp0 = -3;
    bool value_vtmp0 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = -3;
    bool copy_vtmp0 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = -2;
    bool other_vtmp0 = true;
    int other_ktmp1 = -1;
    bool other_vtmp1 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,bool>: {-3: false}");
    assert(!(value == other), "different Map<int,bool>: {-3: false} {-2: true, -1: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__318() {
    int value_ktmp0 = -2;
    bool value_vtmp0 = true;
    int value_ktmp1 = -1;
    bool value_vtmp1 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = -2;
    bool copy_vtmp0 = true;
    int copy_ktmp1 = -1;
    bool copy_vtmp1 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,bool> other = {};
    assert(value == copy, "equals Map<int,bool>: {-2: true, -1: false}");
    assert(!(value == other), "different Map<int,bool>: {-2: true, -1: false} {}");
    assertEqual(true, true);
}
        
void test_Map_int_int__319() {
    
    Map<int,int> value = {};
    
    Map<int,int> copy = {};
    int other_ktmp0 = 2147483647;
    int other_vtmp0 = 2147483648;
    Map<int,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,int>: {}");
    assert(!(value == other), "different Map<int,int>: {} {2147483647: 2147483648}");
    assertEqual(true, true);
}
        
void test_Map_int_int__320() {
    int value_ktmp0 = 2147483647;
    int value_vtmp0 = 2147483648;
    Map<int,int> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483647;
    int copy_vtmp0 = 2147483648;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483649;
    int other_vtmp0 = 2147483651;
    int other_ktmp1 = 2147483650;
    int other_vtmp1 = 4294967293;
    Map<int,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,int>: {2147483647: 2147483648}");
    assert(!(value == other), "different Map<int,int>: {2147483647: 2147483648} {2147483649: 2147483651, 2147483650: 4294967293}");
    assertEqual(true, true);
}
        