
void test_Map_float_Any__381() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_tmp = false;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    float value_ktmp1 = 3.14;
    int value_vtmp1_tmp = 2147483648;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<float,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_tmp = false;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_tmp = 2147483648;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<float,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Any> other = {};
    assert(value == copy, "equals Map<float,Any>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}");
    assert(!(value == other), "different Map<float,Any>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Any__382() {
    
    Map<float,Any> value = {};
    
    Map<float,Any> copy = {};
    float other_ktmp0 = 0.0;
    float other_vtmp0_tmp = -0.0;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<float,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Any>: {}");
    assert(!(value == other), "different Map<float,Any>: {} {0.0: unsafe(-0.0)}");
    assertEqual(true, true);
}
        
void test_Map_float_Any__383() {
    float value_ktmp0 = 0.0;
    float value_vtmp0_tmp = -0.0;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<float,Any> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    float copy_vtmp0_tmp = -0.0;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<float,Any> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0_tmp = "asdf\n";
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    float other_ktmp1 = 3.14;
    int other_vtmp1_tmp = -2;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<float,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Any>: {0.0: unsafe(-0.0)}");
    assert(!(value == other), "different Map<float,Any>: {0.0: unsafe(-0.0)} {-0.0: unsafe(\"asdf\n\"), 3.14: unsafe(-2)}");
    assertEqual(true, true);
}
        
void test_Map_float_Any__384() {
    float value_ktmp0 = -0.0;
    String value_vtmp0_tmp = "asdf\n";
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    float value_ktmp1 = 3.14;
    int value_vtmp1_tmp = -2;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<float,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0_tmp = "asdf\n";
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_tmp = -2;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<float,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Any> other = {};
    assert(value == copy, "equals Map<float,Any>: {-0.0: unsafe(\"asdf\n\"), 3.14: unsafe(-2)}");
    assert(!(value == other), "different Map<float,Any>: {-0.0: unsafe(\"asdf\n\"), 3.14: unsafe(-2)} {}");
    assertEqual(true, true);
}
        
void test_Map_String_bool__385() {
    
    Map<String,bool> value = {};
    
    Map<String,bool> copy = {};
    String other_ktmp0 = "\n";
    bool other_vtmp0 = false;
    Map<String,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,bool>: {}");
    assert(!(value == other), "different Map<String,bool>: {} {\"\n\": false}");
    assertEqual(true, true);
}
        
void test_Map_String_bool__386() {
    String value_ktmp0 = "\n";
    bool value_vtmp0 = false;
    Map<String,bool> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "\n";
    bool copy_vtmp0 = false;
    Map<String,bool> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "asdf\n";
    bool other_vtmp0 = true;
    String other_ktmp1 = "";
    bool other_vtmp1 = false;
    Map<String,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,bool>: {\"\n\": false}");
    assert(!(value == other), "different Map<String,bool>: {\"\n\": false} {\"asdf\n\": true, \"\": false}");
    assertEqual(true, true);
}
        
void test_Map_String_bool__387() {
    String value_ktmp0 = "asdf\n";
    bool value_vtmp0 = true;
    String value_ktmp1 = "";
    bool value_vtmp1 = false;
    Map<String,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "asdf\n";
    bool copy_vtmp0 = true;
    String copy_ktmp1 = "";
    bool copy_vtmp1 = false;
    Map<String,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,bool> other = {};
    assert(value == copy, "equals Map<String,bool>: {\"asdf\n\": true, \"\": false}");
    assert(!(value == other), "different Map<String,bool>: {\"asdf\n\": true, \"\": false} {}");
    assertEqual(true, true);
}
        
void test_Map_String_bool__388() {
    
    Map<String,bool> value = {};
    
    Map<String,bool> copy = {};
    String other_ktmp0 = "asdf\n";
    bool other_vtmp0 = false;
    Map<String,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,bool>: {}");
    assert(!(value == other), "different Map<String,bool>: {} {\"asdf\n\": false}");
    assertEqual(true, true);
}
        
void test_Map_String_bool__389() {
    String value_ktmp0 = "asdf\n";
    bool value_vtmp0 = false;
    Map<String,bool> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "asdf\n";
    bool copy_vtmp0 = false;
    Map<String,bool> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "";
    bool other_vtmp0 = true;
    String other_ktmp1 = "Hello World!";
    bool other_vtmp1 = false;
    Map<String,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,bool>: {\"asdf\n\": false}");
    assert(!(value == other), "different Map<String,bool>: {\"asdf\n\": false} {\"\": true, \"Hello World!\": false}");
    assertEqual(true, true);
}
        
void test_Map_String_bool__390() {
    String value_ktmp0 = "";
    bool value_vtmp0 = true;
    String value_ktmp1 = "Hello World!";
    bool value_vtmp1 = false;
    Map<String,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "";
    bool copy_vtmp0 = true;
    String copy_ktmp1 = "Hello World!";
    bool copy_vtmp1 = false;
    Map<String,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,bool> other = {};
    assert(value == copy, "equals Map<String,bool>: {\"\": true, \"Hello World!\": false}");
    assert(!(value == other), "different Map<String,bool>: {\"\": true, \"Hello World!\": false} {}");
    assertEqual(true, true);
}
        