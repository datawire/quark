
void test_Map_int_int__321() {
    int value_ktmp0 = 2147483649;
    int value_vtmp0 = 2147483651;
    int value_ktmp1 = 2147483650;
    int value_vtmp1 = 4294967293;
    Map<int,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483649;
    int copy_vtmp0 = 2147483651;
    int copy_ktmp1 = 2147483650;
    int copy_vtmp1 = 4294967293;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,int> other = {};
    assert(value == copy, "equals Map<int,int>: {2147483649: 2147483651, 2147483650: 4294967293}");
    assert(!(value == other), "different Map<int,int>: {2147483649: 2147483651, 2147483650: 4294967293} {}");
    assertEqual(true, true);
}
        
void test_Map_int_int__322() {
    
    Map<int,int> value = {};
    
    Map<int,int> copy = {};
    int other_ktmp0 = 0;
    int other_vtmp0 = 1;
    Map<int,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,int>: {}");
    assert(!(value == other), "different Map<int,int>: {} {0: 1}");
    assertEqual(true, true);
}
        
void test_Map_int_int__323() {
    int value_ktmp0 = 0;
    int value_vtmp0 = 1;
    Map<int,int> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 0;
    int copy_vtmp0 = 1;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2;
    int other_vtmp0 = 2147483645;
    int other_ktmp1 = 3;
    int other_vtmp1 = 2147483646;
    Map<int,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,int>: {0: 1}");
    assert(!(value == other), "different Map<int,int>: {0: 1} {2: 2147483645, 3: 2147483646}");
    assertEqual(true, true);
}
        
void test_Map_int_int__324() {
    int value_ktmp0 = 2;
    int value_vtmp0 = 2147483645;
    int value_ktmp1 = 3;
    int value_vtmp1 = 2147483646;
    Map<int,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2;
    int copy_vtmp0 = 2147483645;
    int copy_ktmp1 = 3;
    int copy_vtmp1 = 2147483646;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,int> other = {};
    assert(value == copy, "equals Map<int,int>: {2: 2147483645, 3: 2147483646}");
    assert(!(value == other), "different Map<int,int>: {2: 2147483645, 3: 2147483646} {}");
    assertEqual(true, true);
}
        
void test_Map_int_float__325() {
    
    Map<int,float> value = {};
    
    Map<int,float> copy = {};
    int other_ktmp0 = 4294967294;
    float other_vtmp0 = 0.0;
    Map<int,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,float>: {}");
    assert(!(value == other), "different Map<int,float>: {} {4294967294: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_int_float__326() {
    int value_ktmp0 = 4294967294;
    float value_vtmp0 = 0.0;
    Map<int,float> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967294;
    float copy_vtmp0 = 0.0;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967295;
    float other_vtmp0 = -0.0;
    int other_ktmp1 = 4294967296;
    float other_vtmp1 = 3.14;
    Map<int,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,float>: {4294967294: 0.0}");
    assert(!(value == other), "different Map<int,float>: {4294967294: 0.0} {4294967295: -0.0, 4294967296: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_int_float__327() {
    int value_ktmp0 = 4294967295;
    float value_vtmp0 = -0.0;
    int value_ktmp1 = 4294967296;
    float value_vtmp1 = 3.14;
    Map<int,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967295;
    float copy_vtmp0 = -0.0;
    int copy_ktmp1 = 4294967296;
    float copy_vtmp1 = 3.14;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,float> other = {};
    assert(value == copy, "equals Map<int,float>: {4294967295: -0.0, 4294967296: 3.14}");
    assert(!(value == other), "different Map<int,float>: {4294967295: -0.0, 4294967296: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_int_float__328() {
    
    Map<int,float> value = {};
    
    Map<int,float> copy = {};
    int other_ktmp0 = 2147483647;
    float other_vtmp0 = 0.0;
    Map<int,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,float>: {}");
    assert(!(value == other), "different Map<int,float>: {} {2147483647: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_int_float__329() {
    int value_ktmp0 = 2147483647;
    float value_vtmp0 = 0.0;
    Map<int,float> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483647;
    float copy_vtmp0 = 0.0;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483648;
    float other_vtmp0 = -0.0;
    int other_ktmp1 = 2147483649;
    float other_vtmp1 = 3.14;
    Map<int,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,float>: {2147483647: 0.0}");
    assert(!(value == other), "different Map<int,float>: {2147483647: 0.0} {2147483648: -0.0, 2147483649: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_int_float__330() {
    int value_ktmp0 = 2147483648;
    float value_vtmp0 = -0.0;
    int value_ktmp1 = 2147483649;
    float value_vtmp1 = 3.14;
    Map<int,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483648;
    float copy_vtmp0 = -0.0;
    int copy_ktmp1 = 2147483649;
    float copy_vtmp1 = 3.14;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,float> other = {};
    assert(value == copy, "equals Map<int,float>: {2147483648: -0.0, 2147483649: 3.14}");
    assert(!(value == other), "different Map<int,float>: {2147483648: -0.0, 2147483649: 3.14} {}");
    assertEqual(true, true);
}
        