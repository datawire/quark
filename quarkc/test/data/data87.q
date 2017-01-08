
void test_Map_float_Map_String_float___861() {
    float value_ktmp0 = -0.0;
    String value_vtmp0_ktmp0 = " ";
    float value_vtmp0_vtmp0 = 0.0;
    Map<String,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    String value_vtmp1_ktmp0 = "\n";
    float value_vtmp1_vtmp0 = -0.0;
    String value_vtmp1_ktmp1 = "asdf\n";
    float value_vtmp1_vtmp1 = 3.14;
    Map<String,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<String,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0_ktmp0 = " ";
    float copy_vtmp0_vtmp0 = 0.0;
    Map<String,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    String copy_vtmp1_ktmp0 = "\n";
    float copy_vtmp1_vtmp0 = -0.0;
    String copy_vtmp1_ktmp1 = "asdf\n";
    float copy_vtmp1_vtmp1 = 3.14;
    Map<String,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<String,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<String,float>> other = {};
    assert(value == copy, "equals Map<float,Map<String,float>>: {-0.0: {\" \": 0.0}, 3.14: {\"\n\": -0.0, \"asdf\n\": 3.14}}");
    assert(!(value == other), "different Map<float,Map<String,float>>: {-0.0: {\" \": 0.0}, 3.14: {\"\n\": -0.0, \"asdf\n\": 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_String___862() {
    
    Map<float,Map<String,String>> value = {};
    
    Map<float,Map<String,String>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<String,String> other_vtmp0 = {};
    Map<float,Map<String,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<String,String>>: {}");
    assert(!(value == other), "different Map<float,Map<String,String>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_String___863() {
    float value_ktmp0 = 0.0;
    
    Map<String,String> value_vtmp0 = {};
    Map<float,Map<String,String>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<String,String> copy_vtmp0 = {};
    Map<float,Map<String,String>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0_ktmp0 = "";
    String other_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    String other_vtmp1_ktmp0 = "pi";
    String other_vtmp1_vtmp0 = " ";
    String other_vtmp1_ktmp1 = "pie";
    String other_vtmp1_vtmp1 = "\n";
    Map<String,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<String,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<String,String>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<String,String>>: {0.0: {}} {-0.0: {\"\": \"Hello World!\"}, 3.14: {\"pi\": \" \", \"pie\": \"\n\"}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_String___864() {
    float value_ktmp0 = -0.0;
    String value_vtmp0_ktmp0 = "";
    String value_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    String value_vtmp1_ktmp0 = "pi";
    String value_vtmp1_vtmp0 = " ";
    String value_vtmp1_ktmp1 = "pie";
    String value_vtmp1_vtmp1 = "\n";
    Map<String,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<String,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0_ktmp0 = "";
    String copy_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    String copy_vtmp1_ktmp0 = "pi";
    String copy_vtmp1_vtmp0 = " ";
    String copy_vtmp1_ktmp1 = "pie";
    String copy_vtmp1_vtmp1 = "\n";
    Map<String,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<String,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<String,String>> other = {};
    assert(value == copy, "equals Map<float,Map<String,String>>: {-0.0: {\"\": \"Hello World!\"}, 3.14: {\"pi\": \" \", \"pie\": \"\n\"}}");
    assert(!(value == other), "different Map<float,Map<String,String>>: {-0.0: {\"\": \"Hello World!\"}, 3.14: {\"pi\": \" \", \"pie\": \"\n\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_Scalar___865() {
    
    Map<float,Map<String,Scalar>> value = {};
    
    Map<float,Map<String,Scalar>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<String,Scalar> other_vtmp0 = {};
    Map<float,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<String,Scalar>>: {}");
    assert(!(value == other), "different Map<float,Map<String,Scalar>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_Scalar___866() {
    float value_ktmp0 = 0.0;
    
    Map<String,Scalar> value_vtmp0 = {};
    Map<float,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<String,Scalar> copy_vtmp0 = {};
    Map<float,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0_ktmp0 = "asdf\n";
    Scalar other_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    String other_vtmp1_ktmp0 = "";
    Scalar other_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String other_vtmp1_ktmp1 = "Hello World!";
    Scalar other_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<String,Scalar>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<String,Scalar>>: {0.0: {}} {-0.0: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, 3.14: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_Scalar___867() {
    float value_ktmp0 = -0.0;
    String value_vtmp0_ktmp0 = "asdf\n";
    Scalar value_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    String value_vtmp1_ktmp0 = "";
    Scalar value_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String value_vtmp1_ktmp1 = "Hello World!";
    Scalar value_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0_ktmp0 = "asdf\n";
    Scalar copy_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    String copy_vtmp1_ktmp0 = "";
    Scalar copy_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String copy_vtmp1_ktmp1 = "Hello World!";
    Scalar copy_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<String,Scalar>> other = {};
    assert(value == copy, "equals Map<float,Map<String,Scalar>>: {-0.0: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, 3.14: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}}");
    assert(!(value == other), "different Map<float,Map<String,Scalar>>: {-0.0: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, 3.14: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_Any___868() {
    
    Map<float,Map<String,Any>> value = {};
    
    Map<float,Map<String,Any>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<String,Any> other_vtmp0 = {};
    Map<float,Map<String,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<String,Any>>: {}");
    assert(!(value == other), "different Map<float,Map<String,Any>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_Any___869() {
    float value_ktmp0 = 0.0;
    
    Map<String,Any> value_vtmp0 = {};
    Map<float,Map<String,Any>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<String,Any> copy_vtmp0 = {};
    Map<float,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0_ktmp0 = "pi";
    float other_vtmp0_vtmp0_tmp = -0.0;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<String,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    String other_vtmp1_ktmp0 = "pie";
    String other_vtmp1_vtmp0_tmp = "pie";
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    String other_vtmp1_ktmp1 = " ";
    float other_vtmp1_vtmp1_tmp = 0.0;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<String,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<String,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<String,Any>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<String,Any>>: {0.0: {}} {-0.0: {\"pi\": unsafe(-0.0)}, 3.14: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_String_Any___870() {
    float value_ktmp0 = -0.0;
    String value_vtmp0_ktmp0 = "pi";
    float value_vtmp0_vtmp0_tmp = -0.0;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<String,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    String value_vtmp1_ktmp0 = "pie";
    String value_vtmp1_vtmp0_tmp = "pie";
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    String value_vtmp1_ktmp1 = " ";
    float value_vtmp1_vtmp1_tmp = 0.0;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<String,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<String,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0_ktmp0 = "pi";
    float copy_vtmp0_vtmp0_tmp = -0.0;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<String,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    String copy_vtmp1_ktmp0 = "pie";
    String copy_vtmp1_vtmp0_tmp = "pie";
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    String copy_vtmp1_ktmp1 = " ";
    float copy_vtmp1_vtmp1_tmp = 0.0;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<String,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<String,Any>> other = {};
    assert(value == copy, "equals Map<float,Map<String,Any>>: {-0.0: {\"pi\": unsafe(-0.0)}, 3.14: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assert(!(value == other), "different Map<float,Map<String,Any>>: {-0.0: {\"pi\": unsafe(-0.0)}, 3.14: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}} {}");
    assertEqual(true, true);
}
        