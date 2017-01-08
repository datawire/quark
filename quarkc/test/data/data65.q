
void test_Map_bool_Map_String_int___641() {
    bool value_ktmp0 = true;
    
    Map<String,int> value_vtmp0 = {};
    Map<bool,Map<String,int>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<String,int> copy_vtmp0 = {};
    Map<bool,Map<String,int>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    String other_vtmp0_ktmp0 = "Hello World!";
    int other_vtmp0_vtmp0 = 2147483647;
    Map<String,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    String other_vtmp1_ktmp0 = "pi";
    int other_vtmp1_vtmp0 = 2147483648;
    String other_vtmp1_ktmp1 = "pie";
    int other_vtmp1_vtmp1 = 2147483649;
    Map<String,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<String,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<String,int>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<String,int>>: {true: {}} {false: {\"Hello World!\": 2147483647}, true: {\"pi\": 2147483648, \"pie\": 2147483649}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_int___642() {
    bool value_ktmp0 = false;
    String value_vtmp0_ktmp0 = "Hello World!";
    int value_vtmp0_vtmp0 = 2147483647;
    Map<String,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    String value_vtmp1_ktmp0 = "pi";
    int value_vtmp1_vtmp0 = 2147483648;
    String value_vtmp1_ktmp1 = "pie";
    int value_vtmp1_vtmp1 = 2147483649;
    Map<String,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<String,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    String copy_vtmp0_ktmp0 = "Hello World!";
    int copy_vtmp0_vtmp0 = 2147483647;
    Map<String,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    String copy_vtmp1_ktmp0 = "pi";
    int copy_vtmp1_vtmp0 = 2147483648;
    String copy_vtmp1_ktmp1 = "pie";
    int copy_vtmp1_vtmp1 = 2147483649;
    Map<String,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<String,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<String,int>> other = {};
    assert(value == copy, "equals Map<bool,Map<String,int>>: {false: {\"Hello World!\": 2147483647}, true: {\"pi\": 2147483648, \"pie\": 2147483649}}");
    assert(!(value == other), "different Map<bool,Map<String,int>>: {false: {\"Hello World!\": 2147483647}, true: {\"pi\": 2147483648, \"pie\": 2147483649}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_float___643() {
    
    Map<bool,Map<String,float>> value = {};
    
    Map<bool,Map<String,float>> copy = {};
    bool other_ktmp0 = false;
    
    Map<String,float> other_vtmp0 = {};
    Map<bool,Map<String,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<String,float>>: {}");
    assert(!(value == other), "different Map<bool,Map<String,float>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_float___644() {
    bool value_ktmp0 = false;
    
    Map<String,float> value_vtmp0 = {};
    Map<bool,Map<String,float>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<String,float> copy_vtmp0 = {};
    Map<bool,Map<String,float>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    String other_vtmp0_ktmp0 = " ";
    float other_vtmp0_vtmp0 = 0.0;
    Map<String,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    String other_vtmp1_ktmp0 = "\n";
    float other_vtmp1_vtmp0 = -0.0;
    String other_vtmp1_ktmp1 = "asdf\n";
    float other_vtmp1_vtmp1 = 3.14;
    Map<String,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<String,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<String,float>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<String,float>>: {false: {}} {true: {\" \": 0.0}, false: {\"\n\": -0.0, \"asdf\n\": 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_float___645() {
    bool value_ktmp0 = true;
    String value_vtmp0_ktmp0 = " ";
    float value_vtmp0_vtmp0 = 0.0;
    Map<String,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    String value_vtmp1_ktmp0 = "\n";
    float value_vtmp1_vtmp0 = -0.0;
    String value_vtmp1_ktmp1 = "asdf\n";
    float value_vtmp1_vtmp1 = 3.14;
    Map<String,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<String,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    String copy_vtmp0_ktmp0 = " ";
    float copy_vtmp0_vtmp0 = 0.0;
    Map<String,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    String copy_vtmp1_ktmp0 = "\n";
    float copy_vtmp1_vtmp0 = -0.0;
    String copy_vtmp1_ktmp1 = "asdf\n";
    float copy_vtmp1_vtmp1 = 3.14;
    Map<String,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<String,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<String,float>> other = {};
    assert(value == copy, "equals Map<bool,Map<String,float>>: {true: {\" \": 0.0}, false: {\"\n\": -0.0, \"asdf\n\": 3.14}}");
    assert(!(value == other), "different Map<bool,Map<String,float>>: {true: {\" \": 0.0}, false: {\"\n\": -0.0, \"asdf\n\": 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_String___646() {
    
    Map<bool,Map<String,String>> value = {};
    
    Map<bool,Map<String,String>> copy = {};
    bool other_ktmp0 = true;
    
    Map<String,String> other_vtmp0 = {};
    Map<bool,Map<String,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<String,String>>: {}");
    assert(!(value == other), "different Map<bool,Map<String,String>>: {} {true: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_String___647() {
    bool value_ktmp0 = true;
    
    Map<String,String> value_vtmp0 = {};
    Map<bool,Map<String,String>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<String,String> copy_vtmp0 = {};
    Map<bool,Map<String,String>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    String other_vtmp0_ktmp0 = "";
    String other_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    String other_vtmp1_ktmp0 = "pi";
    String other_vtmp1_vtmp0 = " ";
    String other_vtmp1_ktmp1 = "pie";
    String other_vtmp1_vtmp1 = "\n";
    Map<String,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<String,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<String,String>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<String,String>>: {true: {}} {false: {\"\": \"Hello World!\"}, true: {\"pi\": \" \", \"pie\": \"\n\"}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_String___648() {
    bool value_ktmp0 = false;
    String value_vtmp0_ktmp0 = "";
    String value_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    String value_vtmp1_ktmp0 = "pi";
    String value_vtmp1_vtmp0 = " ";
    String value_vtmp1_ktmp1 = "pie";
    String value_vtmp1_vtmp1 = "\n";
    Map<String,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<String,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    String copy_vtmp0_ktmp0 = "";
    String copy_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    String copy_vtmp1_ktmp0 = "pi";
    String copy_vtmp1_vtmp0 = " ";
    String copy_vtmp1_ktmp1 = "pie";
    String copy_vtmp1_vtmp1 = "\n";
    Map<String,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<String,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<String,String>> other = {};
    assert(value == copy, "equals Map<bool,Map<String,String>>: {false: {\"\": \"Hello World!\"}, true: {\"pi\": \" \", \"pie\": \"\n\"}}");
    assert(!(value == other), "different Map<bool,Map<String,String>>: {false: {\"\": \"Hello World!\"}, true: {\"pi\": \" \", \"pie\": \"\n\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_Scalar___649() {
    
    Map<bool,Map<String,Scalar>> value = {};
    
    Map<bool,Map<String,Scalar>> copy = {};
    bool other_ktmp0 = false;
    
    Map<String,Scalar> other_vtmp0 = {};
    Map<bool,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<String,Scalar>>: {}");
    assert(!(value == other), "different Map<bool,Map<String,Scalar>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_Scalar___650() {
    bool value_ktmp0 = false;
    
    Map<String,Scalar> value_vtmp0 = {};
    Map<bool,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<String,Scalar> copy_vtmp0 = {};
    Map<bool,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    String other_vtmp0_ktmp0 = "asdf\n";
    Scalar other_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    String other_vtmp1_ktmp0 = "";
    Scalar other_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String other_vtmp1_ktmp1 = "Hello World!";
    Scalar other_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<String,Scalar>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<String,Scalar>>: {false: {}} {true: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, false: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}}");
    assertEqual(true, true);
}
        