
void test_Map_String_Map_Scalar_bool___981() {
    String value_ktmp0 = "asdf\n";
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_vtmp0 = true;
    Map<Scalar,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "";
    Scalar value_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool value_vtmp1_vtmp0 = false;
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_vtmp1 = true;
    Map<Scalar,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "asdf\n";
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_vtmp0 = true;
    Map<Scalar,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "";
    Scalar copy_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_vtmp1_vtmp0 = false;
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_vtmp1 = true;
    Map<Scalar,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<Scalar,bool>> other = {};
    assert(value == copy, "equals Map<String,Map<Scalar,bool>>: {\"asdf\n\": {<__main__.Scalar object at 0x7f9dce0f0810>: true}, \"\": {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assert(!(value == other), "different Map<String,Map<Scalar,bool>>: {\"asdf\n\": {<__main__.Scalar object at 0x7f9dce0f0810>: true}, \"\": {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_int___982() {
    
    Map<String,Map<Scalar,int>> value = {};
    
    Map<String,Map<Scalar,int>> copy = {};
    String other_ktmp0 = "Hello World!";
    
    Map<Scalar,int> other_vtmp0 = {};
    Map<String,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<Scalar,int>>: {}");
    assert(!(value == other), "different Map<String,Map<Scalar,int>>: {} {\"Hello World!\": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_int___983() {
    String value_ktmp0 = "Hello World!";
    
    Map<Scalar,int> value_vtmp0 = {};
    Map<String,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "Hello World!";
    
    Map<Scalar,int> copy_vtmp0 = {};
    Map<String,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "pi";
    Scalar other_vtmp0_ktmp0 = unsafe("").asScalar();
    int other_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = "pie";
    Scalar other_vtmp1_ktmp0 = unsafe(true).asScalar();
    int other_vtmp1_vtmp0 = 2147483651;
    Scalar other_vtmp1_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<Scalar,int>>: {\"Hello World!\": {}}");
    assert(!(value == other), "different Map<String,Map<Scalar,int>>: {\"Hello World!\": {}} {\"pi\": {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, \"pie\": {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_int___984() {
    String value_ktmp0 = "pi";
    Scalar value_vtmp0_ktmp0 = unsafe("").asScalar();
    int value_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "pie";
    Scalar value_vtmp1_ktmp0 = unsafe(true).asScalar();
    int value_vtmp1_vtmp0 = 2147483651;
    Scalar value_vtmp1_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "pi";
    Scalar copy_vtmp0_ktmp0 = unsafe("").asScalar();
    int copy_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "pie";
    Scalar copy_vtmp1_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp0 = 2147483651;
    Scalar copy_vtmp1_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<Scalar,int>> other = {};
    assert(value == copy, "equals Map<String,Map<Scalar,int>>: {\"pi\": {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, \"pie\": {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assert(!(value == other), "different Map<String,Map<Scalar,int>>: {\"pi\": {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, \"pie\": {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_float___985() {
    
    Map<String,Map<Scalar,float>> value = {};
    
    Map<String,Map<Scalar,float>> copy = {};
    String other_ktmp0 = " ";
    
    Map<Scalar,float> other_vtmp0 = {};
    Map<String,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<Scalar,float>>: {}");
    assert(!(value == other), "different Map<String,Map<Scalar,float>>: {} {\" \": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_float___986() {
    String value_ktmp0 = " ";
    
    Map<Scalar,float> value_vtmp0 = {};
    Map<String,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = " ";
    
    Map<Scalar,float> copy_vtmp0 = {};
    Map<String,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "\n";
    Scalar other_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float other_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = "asdf\n";
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp1_vtmp0 = -0.0;
    Scalar other_vtmp1_ktmp1 = unsafe("").asScalar();
    float other_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<Scalar,float>>: {\" \": {}}");
    assert(!(value == other), "different Map<String,Map<Scalar,float>>: {\" \": {}} {\"\n\": {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, \"asdf\n\": {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_float___987() {
    String value_ktmp0 = "\n";
    Scalar value_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float value_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "asdf\n";
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp1_vtmp0 = -0.0;
    Scalar value_vtmp1_ktmp1 = unsafe("").asScalar();
    float value_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "\n";
    Scalar copy_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float copy_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "asdf\n";
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp1_vtmp0 = -0.0;
    Scalar copy_vtmp1_ktmp1 = unsafe("").asScalar();
    float copy_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<Scalar,float>> other = {};
    assert(value == copy, "equals Map<String,Map<Scalar,float>>: {\"\n\": {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, \"asdf\n\": {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assert(!(value == other), "different Map<String,Map<Scalar,float>>: {\"\n\": {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, \"asdf\n\": {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_String___988() {
    
    Map<String,Map<Scalar,String>> value = {};
    
    Map<String,Map<Scalar,String>> copy = {};
    String other_ktmp0 = "";
    
    Map<Scalar,String> other_vtmp0 = {};
    Map<String,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<Scalar,String>>: {}");
    assert(!(value == other), "different Map<String,Map<Scalar,String>>: {} {\"\": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_String___989() {
    String value_ktmp0 = "";
    
    Map<Scalar,String> value_vtmp0 = {};
    Map<String,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "";
    
    Map<Scalar,String> copy_vtmp0 = {};
    Map<String,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "Hello World!";
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    String other_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = "pi";
    Scalar other_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp1_vtmp0 = "asdf\n";
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_vtmp1 = "";
    Map<Scalar,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<Scalar,String>>: {\"\": {}}");
    assert(!(value == other), "different Map<String,Map<Scalar,String>>: {\"\": {}} {\"Hello World!\": {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, \"pi\": {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_String___990() {
    String value_ktmp0 = "Hello World!";
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    String value_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "pi";
    Scalar value_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp1_vtmp0 = "asdf\n";
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_vtmp1 = "";
    Map<Scalar,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "Hello World!";
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    String copy_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "pi";
    Scalar copy_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp1_vtmp0 = "asdf\n";
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_vtmp1 = "";
    Map<Scalar,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<Scalar,String>> other = {};
    assert(value == copy, "equals Map<String,Map<Scalar,String>>: {\"Hello World!\": {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, \"pi\": {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assert(!(value == other), "different Map<String,Map<Scalar,String>>: {\"Hello World!\": {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, \"pi\": {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}} {}");
    assertEqual(true, true);
}
        