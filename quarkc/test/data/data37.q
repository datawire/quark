
void test_Map_float_float__361() {
    
    Map<float,float> value = {};
    
    Map<float,float> copy = {};
    float other_ktmp0 = 0.0;
    float other_vtmp0 = -0.0;
    Map<float,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,float>: {}");
    assert(!(value == other), "different Map<float,float>: {} {0.0: -0.0}");
    assertEqual(true, true);
}
        
void test_Map_float_float__362() {
    float value_ktmp0 = 0.0;
    float value_vtmp0 = -0.0;
    Map<float,float> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    float copy_vtmp0 = -0.0;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = 3.14;
    float other_vtmp0 = -0.0;
    float other_ktmp1 = 0.0;
    float other_vtmp1 = 3.14;
    Map<float,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,float>: {0.0: -0.0}");
    assert(!(value == other), "different Map<float,float>: {0.0: -0.0} {3.14: -0.0, 0.0: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_float_float__363() {
    float value_ktmp0 = 3.14;
    float value_vtmp0 = -0.0;
    float value_ktmp1 = 0.0;
    float value_vtmp1 = 3.14;
    Map<float,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = 3.14;
    float copy_vtmp0 = -0.0;
    float copy_ktmp1 = 0.0;
    float copy_vtmp1 = 3.14;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,float> other = {};
    assert(value == copy, "equals Map<float,float>: {3.14: -0.0, 0.0: 3.14}");
    assert(!(value == other), "different Map<float,float>: {3.14: -0.0, 0.0: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_float_float__364() {
    
    Map<float,float> value = {};
    
    Map<float,float> copy = {};
    float other_ktmp0 = 0.0;
    float other_vtmp0 = -0.0;
    Map<float,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,float>: {}");
    assert(!(value == other), "different Map<float,float>: {} {0.0: -0.0}");
    assertEqual(true, true);
}
        
void test_Map_float_float__365() {
    float value_ktmp0 = 0.0;
    float value_vtmp0 = -0.0;
    Map<float,float> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    float copy_vtmp0 = -0.0;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = 3.14;
    float other_vtmp0 = -0.0;
    float other_ktmp1 = 0.0;
    float other_vtmp1 = 3.14;
    Map<float,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,float>: {0.0: -0.0}");
    assert(!(value == other), "different Map<float,float>: {0.0: -0.0} {3.14: -0.0, 0.0: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_float_float__366() {
    float value_ktmp0 = 3.14;
    float value_vtmp0 = -0.0;
    float value_ktmp1 = 0.0;
    float value_vtmp1 = 3.14;
    Map<float,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = 3.14;
    float copy_vtmp0 = -0.0;
    float copy_ktmp1 = 0.0;
    float copy_vtmp1 = 3.14;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,float> other = {};
    assert(value == copy, "equals Map<float,float>: {3.14: -0.0, 0.0: 3.14}");
    assert(!(value == other), "different Map<float,float>: {3.14: -0.0, 0.0: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_float_String__367() {
    
    Map<float,String> value = {};
    
    Map<float,String> copy = {};
    float other_ktmp0 = 0.0;
    String other_vtmp0 = "pi";
    Map<float,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,String>: {}");
    assert(!(value == other), "different Map<float,String>: {} {0.0: \"pi\"}");
    assertEqual(true, true);
}
        
void test_Map_float_String__368() {
    float value_ktmp0 = 0.0;
    String value_vtmp0 = "pi";
    Map<float,String> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    String copy_vtmp0 = "pi";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0 = "pie";
    float other_ktmp1 = 3.14;
    String other_vtmp1 = " ";
    Map<float,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,String>: {0.0: \"pi\"}");
    assert(!(value == other), "different Map<float,String>: {0.0: \"pi\"} {-0.0: \"pie\", 3.14: \" \"}");
    assertEqual(true, true);
}
        
void test_Map_float_String__369() {
    float value_ktmp0 = -0.0;
    String value_vtmp0 = "pie";
    float value_ktmp1 = 3.14;
    String value_vtmp1 = " ";
    Map<float,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0 = "pie";
    float copy_ktmp1 = 3.14;
    String copy_vtmp1 = " ";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,String> other = {};
    assert(value == copy, "equals Map<float,String>: {-0.0: \"pie\", 3.14: \" \"}");
    assert(!(value == other), "different Map<float,String>: {-0.0: \"pie\", 3.14: \" \"} {}");
    assertEqual(true, true);
}
        
void test_Map_float_String__370() {
    
    Map<float,String> value = {};
    
    Map<float,String> copy = {};
    float other_ktmp0 = 0.0;
    String other_vtmp0 = "pie";
    Map<float,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,String>: {}");
    assert(!(value == other), "different Map<float,String>: {} {0.0: \"pie\"}");
    assertEqual(true, true);
}
        