
void test_Map_bool_float__291() {
    bool value_ktmp0 = true;
    float value_vtmp0 = -0.0;
    bool value_ktmp1 = false;
    float value_vtmp1 = 3.14;
    Map<bool,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    float copy_vtmp0 = -0.0;
    bool copy_ktmp1 = false;
    float copy_vtmp1 = 3.14;
    Map<bool,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,float> other = {};
    assert(value == copy, "equals Map<bool,float>: {true: -0.0, false: 3.14}");
    assert(!(value == other), "different Map<bool,float>: {true: -0.0, false: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_float__292() {
    
    Map<bool,float> value = {};
    
    Map<bool,float> copy = {};
    bool other_ktmp0 = false;
    float other_vtmp0 = 0.0;
    Map<bool,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,float>: {}");
    assert(!(value == other), "different Map<bool,float>: {} {false: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_bool_float__293() {
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
        
void test_Map_bool_float__294() {
    bool value_ktmp0 = true;
    float value_vtmp0 = -0.0;
    bool value_ktmp1 = false;
    float value_vtmp1 = 3.14;
    Map<bool,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    float copy_vtmp0 = -0.0;
    bool copy_ktmp1 = false;
    float copy_vtmp1 = 3.14;
    Map<bool,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,float> other = {};
    assert(value == copy, "equals Map<bool,float>: {true: -0.0, false: 3.14}");
    assert(!(value == other), "different Map<bool,float>: {true: -0.0, false: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_String__295() {
    
    Map<bool,String> value = {};
    
    Map<bool,String> copy = {};
    bool other_ktmp0 = true;
    String other_vtmp0 = "pie";
    Map<bool,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,String>: {}");
    assert(!(value == other), "different Map<bool,String>: {} {true: \"pie\"}");
    assertEqual(true, true);
}
        
void test_Map_bool_String__296() {
    bool value_ktmp0 = true;
    String value_vtmp0 = "pie";
    Map<bool,String> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    String copy_vtmp0 = "pie";
    Map<bool,String> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    String other_vtmp0 = " ";
    bool other_ktmp1 = true;
    String other_vtmp1 = "\n";
    Map<bool,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,String>: {true: \"pie\"}");
    assert(!(value == other), "different Map<bool,String>: {true: \"pie\"} {false: \" \", true: \"\n\"}");
    assertEqual(true, true);
}
        
void test_Map_bool_String__297() {
    bool value_ktmp0 = false;
    String value_vtmp0 = " ";
    bool value_ktmp1 = true;
    String value_vtmp1 = "\n";
    Map<bool,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    String copy_vtmp0 = " ";
    bool copy_ktmp1 = true;
    String copy_vtmp1 = "\n";
    Map<bool,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,String> other = {};
    assert(value == copy, "equals Map<bool,String>: {false: \" \", true: \"\n\"}");
    assert(!(value == other), "different Map<bool,String>: {false: \" \", true: \"\n\"} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_String__298() {
    
    Map<bool,String> value = {};
    
    Map<bool,String> copy = {};
    bool other_ktmp0 = true;
    String other_vtmp0 = " ";
    Map<bool,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,String>: {}");
    assert(!(value == other), "different Map<bool,String>: {} {true: \" \"}");
    assertEqual(true, true);
}
        
void test_Map_bool_String__299() {
    bool value_ktmp0 = true;
    String value_vtmp0 = " ";
    Map<bool,String> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    String copy_vtmp0 = " ";
    Map<bool,String> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    String other_vtmp0 = "\n";
    bool other_ktmp1 = true;
    String other_vtmp1 = "asdf\n";
    Map<bool,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,String>: {true: \" \"}");
    assert(!(value == other), "different Map<bool,String>: {true: \" \"} {false: \"\n\", true: \"asdf\n\"}");
    assertEqual(true, true);
}
        
void test_Map_bool_String__300() {
    bool value_ktmp0 = false;
    String value_vtmp0 = "\n";
    bool value_ktmp1 = true;
    String value_vtmp1 = "asdf\n";
    Map<bool,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    String copy_vtmp0 = "\n";
    bool copy_ktmp1 = true;
    String copy_vtmp1 = "asdf\n";
    Map<bool,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,String> other = {};
    assert(value == copy, "equals Map<bool,String>: {false: \"\n\", true: \"asdf\n\"}");
    assert(!(value == other), "different Map<bool,String>: {false: \"\n\", true: \"asdf\n\"} {}");
    assertEqual(true, true);
}
        