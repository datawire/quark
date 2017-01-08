
void test_Map_Scalar_Map_String_bool___1071() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    String value_vtmp0_ktmp0 = "\n";
    bool value_vtmp0_vtmp0 = false;
    Map<String,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("asdf\n").asScalar();
    String value_vtmp1_ktmp0 = "asdf\n";
    bool value_vtmp1_vtmp0 = true;
    String value_vtmp1_ktmp1 = "";
    bool value_vtmp1_vtmp1 = false;
    Map<String,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    String copy_vtmp0_ktmp0 = "\n";
    bool copy_vtmp0_vtmp0 = false;
    Map<String,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("asdf\n").asScalar();
    String copy_vtmp1_ktmp0 = "asdf\n";
    bool copy_vtmp1_vtmp0 = true;
    String copy_vtmp1_ktmp1 = "";
    bool copy_vtmp1_vtmp1 = false;
    Map<String,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f9dce0f0790>: {\"\n\": false}, <__main__.Scalar object at 0x7f9dce0f07d0>: {\"asdf\n\": true, \"\": false}}");
    assert(!(value == other), "different Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f9dce0f0790>: {\"\n\": false}, <__main__.Scalar object at 0x7f9dce0f07d0>: {\"asdf\n\": true, \"\": false}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_int___1072() {
    
    Map<Scalar,Map<String,int>> value = {};
    
    Map<Scalar,Map<String,int>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<String,int> other_vtmp0 = {};
    Map<Scalar,Map<String,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,int>>: {} {<__main__.Scalar object at 0x7f9dce0f0810>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_int___1073() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<String,int> value_vtmp0 = {};
    Map<Scalar,Map<String,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<String,int> copy_vtmp0 = {};
    Map<Scalar,Map<String,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(2147483645).asScalar();
    String other_vtmp0_ktmp0 = "Hello World!";
    int other_vtmp0_vtmp0 = 2147483647;
    Map<String,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_ktmp0 = "pi";
    int other_vtmp1_vtmp0 = 2147483648;
    String other_vtmp1_ktmp1 = "pie";
    int other_vtmp1_vtmp1 = 2147483649;
    Map<String,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f9dce0f0810>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f9dce0f0810>: {}} {<__main__.Scalar object at 0x7f9dce0f0850>: {\"Hello World!\": 2147483647}, <__main__.Scalar object at 0x7f9dce0f0890>: {\"pi\": 2147483648, \"pie\": 2147483649}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_int___1074() {
    Scalar value_ktmp0 = unsafe(2147483645).asScalar();
    String value_vtmp0_ktmp0 = "Hello World!";
    int value_vtmp0_vtmp0 = 2147483647;
    Map<String,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_ktmp0 = "pi";
    int value_vtmp1_vtmp0 = 2147483648;
    String value_vtmp1_ktmp1 = "pie";
    int value_vtmp1_vtmp1 = 2147483649;
    Map<String,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(2147483645).asScalar();
    String copy_vtmp0_ktmp0 = "Hello World!";
    int copy_vtmp0_vtmp0 = 2147483647;
    Map<String,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_ktmp0 = "pi";
    int copy_vtmp1_vtmp0 = 2147483648;
    String copy_vtmp1_ktmp1 = "pie";
    int copy_vtmp1_vtmp1 = 2147483649;
    Map<String,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f9dce0f0850>: {\"Hello World!\": 2147483647}, <__main__.Scalar object at 0x7f9dce0f0890>: {\"pi\": 2147483648, \"pie\": 2147483649}}");
    assert(!(value == other), "different Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f9dce0f0850>: {\"Hello World!\": 2147483647}, <__main__.Scalar object at 0x7f9dce0f0890>: {\"pi\": 2147483648, \"pie\": 2147483649}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_float___1075() {
    
    Map<Scalar,Map<String,float>> value = {};
    
    Map<Scalar,Map<String,float>> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    
    Map<String,float> other_vtmp0 = {};
    Map<Scalar,Map<String,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,float>>: {} {<__main__.Scalar object at 0x7f9dce0f08d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_float___1076() {
    Scalar value_ktmp0 = unsafe("").asScalar();
    
    Map<String,float> value_vtmp0 = {};
    Map<Scalar,Map<String,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("").asScalar();
    
    Map<String,float> copy_vtmp0 = {};
    Map<Scalar,Map<String,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    String other_vtmp0_ktmp0 = " ";
    float other_vtmp0_vtmp0 = 0.0;
    Map<String,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    String other_vtmp1_ktmp0 = "\n";
    float other_vtmp1_vtmp0 = -0.0;
    String other_vtmp1_ktmp1 = "asdf\n";
    float other_vtmp1_vtmp1 = 3.14;
    Map<String,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f9dce0f08d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f9dce0f08d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0910>: {\" \": 0.0}, <__main__.Scalar object at 0x7f9dce0e4f90>: {\"\n\": -0.0, \"asdf\n\": 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_float___1077() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    String value_vtmp0_ktmp0 = " ";
    float value_vtmp0_vtmp0 = 0.0;
    Map<String,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    String value_vtmp1_ktmp0 = "\n";
    float value_vtmp1_vtmp0 = -0.0;
    String value_vtmp1_ktmp1 = "asdf\n";
    float value_vtmp1_vtmp1 = 3.14;
    Map<String,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    String copy_vtmp0_ktmp0 = " ";
    float copy_vtmp0_vtmp0 = 0.0;
    Map<String,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    String copy_vtmp1_ktmp0 = "\n";
    float copy_vtmp1_vtmp0 = -0.0;
    String copy_vtmp1_ktmp1 = "asdf\n";
    float copy_vtmp1_vtmp1 = 3.14;
    Map<String,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f9dce0f0910>: {\" \": 0.0}, <__main__.Scalar object at 0x7f9dce0e4f90>: {\"\n\": -0.0, \"asdf\n\": 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f9dce0f0910>: {\" \": 0.0}, <__main__.Scalar object at 0x7f9dce0e4f90>: {\"\n\": -0.0, \"asdf\n\": 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_String___1078() {
    
    Map<Scalar,Map<String,String>> value = {};
    
    Map<Scalar,Map<String,String>> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    
    Map<String,String> other_vtmp0 = {};
    Map<Scalar,Map<String,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,String>>: {} {<__main__.Scalar object at 0x7f9dce0e44d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_String___1079() {
    Scalar value_ktmp0 = unsafe(-3).asScalar();
    
    Map<String,String> value_vtmp0 = {};
    Map<Scalar,Map<String,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(-3).asScalar();
    
    Map<String,String> copy_vtmp0 = {};
    Map<Scalar,Map<String,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    String other_vtmp0_ktmp0 = "";
    String other_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("").asScalar();
    String other_vtmp1_ktmp0 = "pi";
    String other_vtmp1_vtmp0 = " ";
    String other_vtmp1_ktmp1 = "pie";
    String other_vtmp1_vtmp1 = "\n";
    Map<String,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f9dce0e44d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f9dce0e44d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0110>: {\"\": \"Hello World!\"}, <__main__.Scalar object at 0x7f9dce0f0090>: {\"pi\": \" \", \"pie\": \"\n\"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_String___1080() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    String value_vtmp0_ktmp0 = "";
    String value_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("").asScalar();
    String value_vtmp1_ktmp0 = "pi";
    String value_vtmp1_vtmp0 = " ";
    String value_vtmp1_ktmp1 = "pie";
    String value_vtmp1_vtmp1 = "\n";
    Map<String,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    String copy_vtmp0_ktmp0 = "";
    String copy_vtmp0_vtmp0 = "Hello World!";
    Map<String,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("").asScalar();
    String copy_vtmp1_ktmp0 = "pi";
    String copy_vtmp1_vtmp0 = " ";
    String copy_vtmp1_ktmp1 = "pie";
    String copy_vtmp1_vtmp1 = "\n";
    Map<String,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f9dce0f0110>: {\"\": \"Hello World!\"}, <__main__.Scalar object at 0x7f9dce0f0090>: {\"pi\": \" \", \"pie\": \"\n\"}}");
    assert(!(value == other), "different Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f9dce0f0110>: {\"\": \"Hello World!\"}, <__main__.Scalar object at 0x7f9dce0f0090>: {\"pi\": \" \", \"pie\": \"\n\"}} {}");
    assertEqual(true, true);
}
        