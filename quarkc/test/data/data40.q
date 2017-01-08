
void test_Map_String_int__391() {
    
    Map<String,int> value = {};
    
    Map<String,int> copy = {};
    String other_ktmp0 = "Hello World!";
    int other_vtmp0 = 2147483647;
    Map<String,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,int>: {}");
    assert(!(value == other), "different Map<String,int>: {} {\"Hello World!\": 2147483647}");
    assertEqual(true, true);
}
        
void test_Map_String_int__392() {
    String value_ktmp0 = "Hello World!";
    int value_vtmp0 = 2147483647;
    Map<String,int> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "Hello World!";
    int copy_vtmp0 = 2147483647;
    Map<String,int> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "pi";
    int other_vtmp0 = 2147483648;
    String other_ktmp1 = "pie";
    int other_vtmp1 = 2147483649;
    Map<String,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,int>: {\"Hello World!\": 2147483647}");
    assert(!(value == other), "different Map<String,int>: {\"Hello World!\": 2147483647} {\"pi\": 2147483648, \"pie\": 2147483649}");
    assertEqual(true, true);
}
        
void test_Map_String_int__393() {
    String value_ktmp0 = "pi";
    int value_vtmp0 = 2147483648;
    String value_ktmp1 = "pie";
    int value_vtmp1 = 2147483649;
    Map<String,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "pi";
    int copy_vtmp0 = 2147483648;
    String copy_ktmp1 = "pie";
    int copy_vtmp1 = 2147483649;
    Map<String,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,int> other = {};
    assert(value == copy, "equals Map<String,int>: {\"pi\": 2147483648, \"pie\": 2147483649}");
    assert(!(value == other), "different Map<String,int>: {\"pi\": 2147483648, \"pie\": 2147483649} {}");
    assertEqual(true, true);
}
        
void test_Map_String_int__394() {
    
    Map<String,int> value = {};
    
    Map<String,int> copy = {};
    String other_ktmp0 = "pi";
    int other_vtmp0 = 3;
    Map<String,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,int>: {}");
    assert(!(value == other), "different Map<String,int>: {} {\"pi\": 3}");
    assertEqual(true, true);
}
        
void test_Map_String_int__395() {
    String value_ktmp0 = "pi";
    int value_vtmp0 = 3;
    Map<String,int> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "pi";
    int copy_vtmp0 = 3;
    Map<String,int> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "pie";
    int other_vtmp0 = 2147483645;
    String other_ktmp1 = " ";
    int other_vtmp1 = 2147483646;
    Map<String,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,int>: {\"pi\": 3}");
    assert(!(value == other), "different Map<String,int>: {\"pi\": 3} {\"pie\": 2147483645, \" \": 2147483646}");
    assertEqual(true, true);
}
        
void test_Map_String_int__396() {
    String value_ktmp0 = "pie";
    int value_vtmp0 = 2147483645;
    String value_ktmp1 = " ";
    int value_vtmp1 = 2147483646;
    Map<String,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "pie";
    int copy_vtmp0 = 2147483645;
    String copy_ktmp1 = " ";
    int copy_vtmp1 = 2147483646;
    Map<String,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,int> other = {};
    assert(value == copy, "equals Map<String,int>: {\"pie\": 2147483645, \" \": 2147483646}");
    assert(!(value == other), "different Map<String,int>: {\"pie\": 2147483645, \" \": 2147483646} {}");
    assertEqual(true, true);
}
        
void test_Map_String_float__397() {
    
    Map<String,float> value = {};
    
    Map<String,float> copy = {};
    String other_ktmp0 = " ";
    float other_vtmp0 = 0.0;
    Map<String,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,float>: {}");
    assert(!(value == other), "different Map<String,float>: {} {\" \": 0.0}");
    assertEqual(true, true);
}
        
void test_Map_String_float__398() {
    String value_ktmp0 = " ";
    float value_vtmp0 = 0.0;
    Map<String,float> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = " ";
    float copy_vtmp0 = 0.0;
    Map<String,float> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "\n";
    float other_vtmp0 = -0.0;
    String other_ktmp1 = "asdf\n";
    float other_vtmp1 = 3.14;
    Map<String,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,float>: {\" \": 0.0}");
    assert(!(value == other), "different Map<String,float>: {\" \": 0.0} {\"\n\": -0.0, \"asdf\n\": 3.14}");
    assertEqual(true, true);
}
        
void test_Map_String_float__399() {
    String value_ktmp0 = "\n";
    float value_vtmp0 = -0.0;
    String value_ktmp1 = "asdf\n";
    float value_vtmp1 = 3.14;
    Map<String,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "\n";
    float copy_vtmp0 = -0.0;
    String copy_ktmp1 = "asdf\n";
    float copy_vtmp1 = 3.14;
    Map<String,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,float> other = {};
    assert(value == copy, "equals Map<String,float>: {\"\n\": -0.0, \"asdf\n\": 3.14}");
    assert(!(value == other), "different Map<String,float>: {\"\n\": -0.0, \"asdf\n\": 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_String_float__400() {
    
    Map<String,float> value = {};
    
    Map<String,float> copy = {};
    String other_ktmp0 = "\n";
    float other_vtmp0 = 0.0;
    Map<String,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,float>: {}");
    assert(!(value == other), "different Map<String,float>: {} {\"\n\": 0.0}");
    assertEqual(true, true);
}
        