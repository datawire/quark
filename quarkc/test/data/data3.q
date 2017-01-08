
void test_Any_201() {
    float value_tmp_ktmp0 = -0.0;
    Scalar value_tmp_vtmp0 = unsafe("\n").asScalar();
    float value_tmp_ktmp1 = 3.14;
    Scalar value_tmp_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    Scalar copy_tmp_vtmp0 = unsafe("\n").asScalar();
    float copy_tmp_ktmp1 = 3.14;
    Scalar copy_tmp_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(0).asScalar();
    bool other_tmp_vtmp0_tmp = true;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<Scalar,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>})");
    assert(!(value == other), "different Any: unsafe({-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>}) unsafe({<__main__.Scalar object at 0x7f1c32703450>: unsafe(true)})");
    assertEqual(true, true);
}
        
void test_Any_202() {
    
    Map<float,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(0.0).asScalar();
    int other_tmp_vtmp0_tmp = 2147483649;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Scalar other_tmp_ktmp1 = unsafe("pie").asScalar();
    float other_tmp_vtmp1_tmp = 3.14;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<Scalar,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f1c32703490>: unsafe(2147483649), <__main__.Scalar object at 0x7f1c327034d0>: unsafe(3.14)})");
    assertEqual(true, true);
}
        
void test_Any_203() {
    float value_tmp_ktmp0 = 0.0;
    int value_tmp_vtmp0_tmp = -3;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<float,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    int copy_tmp_vtmp0_tmp = -3;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<float,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: unsafe(-3)})");
    assert(!(value == other), "different Any: unsafe({0.0: unsafe(-3)}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_204() {
    float value_tmp_ktmp0 = -0.0;
    bool value_tmp_vtmp0_tmp = false;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    float value_tmp_ktmp1 = 3.14;
    int value_tmp_vtmp1_tmp = 2147483648;
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<float,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    bool copy_tmp_vtmp0_tmp = false;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    float copy_tmp_ktmp1 = 3.14;
    int copy_tmp_vtmp1_tmp = 2147483648;
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<float,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483646;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: unsafe(false), 3.14: unsafe(2147483648)})");
    assert(!(value == other), "different Any: unsafe({-0.0: unsafe(false), 3.14: unsafe(2147483648)}) unsafe(2147483646)");
    assertEqual(true, true);
}
        
void test_Any_205() {
    
    Map<String,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_206() {
    String value_tmp_ktmp0 = "\n";
    bool value_tmp_vtmp0 = false;
    Map<String,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "\n";
    bool copy_tmp_vtmp0 = false;
    Map<String,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "Hello World!";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\n\": false})");
    assert(!(value == other), "different Any: unsafe({\"\n\": false}) unsafe(\"Hello World!\")");
    assertEqual(true, true);
}
        
void test_Any_207() {
    String value_tmp_ktmp0 = "asdf\n";
    bool value_tmp_vtmp0 = true;
    String value_tmp_ktmp1 = "";
    bool value_tmp_vtmp1 = false;
    Map<String,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "asdf\n";
    bool copy_tmp_vtmp0 = true;
    String copy_tmp_ktmp1 = "";
    bool copy_tmp_vtmp1 = false;
    Map<String,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"asdf\n\": true, \"\": false})");
    assert(!(value == other), "different Any: unsafe({\"asdf\n\": true, \"\": false}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_208() {
    
    Map<String,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_209() {
    String value_tmp_ktmp0 = "Hello World!";
    int value_tmp_vtmp0 = 2147483647;
    Map<String,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "Hello World!";
    int copy_tmp_vtmp0 = 2147483647;
    Map<String,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483647;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"Hello World!\": 2147483647})");
    assert(!(value == other), "different Any: unsafe({\"Hello World!\": 2147483647}) unsafe(2147483647)");
    assertEqual(true, true);
}
        
void test_Any_210() {
    String value_tmp_ktmp0 = "pi";
    int value_tmp_vtmp0 = 2147483648;
    String value_tmp_ktmp1 = "pie";
    int value_tmp_vtmp1 = 2147483649;
    Map<String,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "pi";
    int copy_tmp_vtmp0 = 2147483648;
    String copy_tmp_ktmp1 = "pie";
    int copy_tmp_vtmp1 = 2147483649;
    Map<String,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"pi\": 2147483648, \"pie\": 2147483649})");
    assert(!(value == other), "different Any: unsafe({\"pi\": 2147483648, \"pie\": 2147483649}) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_211() {
    
    Map<String,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pi";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(\"pi\")");
    assertEqual(true, true);
}
        
void test_Any_212() {
    String value_tmp_ktmp0 = " ";
    float value_tmp_vtmp0 = 0.0;
    Map<String,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = " ";
    float copy_tmp_vtmp0 = 0.0;
    Map<String,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    int other_tmp = -3;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\" \": 0.0})");
    assert(!(value == other), "different Any: unsafe({\" \": 0.0}) unsafe(-3)");
    assertEqual(true, true);
}
        
void test_Any_213() {
    String value_tmp_ktmp0 = "\n";
    float value_tmp_vtmp0 = -0.0;
    String value_tmp_ktmp1 = "asdf\n";
    float value_tmp_vtmp1 = 3.14;
    Map<String,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "\n";
    float copy_tmp_vtmp0 = -0.0;
    String copy_tmp_ktmp1 = "asdf\n";
    float copy_tmp_vtmp1 = 3.14;
    Map<String,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\n\": -0.0, \"asdf\n\": 3.14})");
    assert(!(value == other), "different Any: unsafe({\"\n\": -0.0, \"asdf\n\": 3.14}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_214() {
    
    Map<String,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483648;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(2147483648)");
    assertEqual(true, true);
}
        
void test_Any_215() {
    String value_tmp_ktmp0 = "";
    String value_tmp_vtmp0 = "Hello World!";
    Map<String,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "";
    String copy_tmp_vtmp0 = "Hello World!";
    Map<String,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\": \"Hello World!\"})");
    assert(!(value == other), "different Any: unsafe({\"\": \"Hello World!\"}) unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_216() {
    String value_tmp_ktmp0 = "pi";
    String value_tmp_vtmp0 = " ";
    String value_tmp_ktmp1 = "pie";
    String value_tmp_vtmp1 = "\n";
    Map<String,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "pi";
    String copy_tmp_vtmp0 = " ";
    String copy_tmp_ktmp1 = "pie";
    String copy_tmp_vtmp1 = "\n";
    Map<String,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pie";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"pi\": \" \", \"pie\": \"\n\"})");
    assert(!(value == other), "different Any: unsafe({\"pi\": \" \", \"pie\": \"\n\"}) unsafe(\"pie\")");
    assertEqual(true, true);
}
        
void test_Any_217() {
    
    Map<String,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_218() {
    String value_tmp_ktmp0 = "asdf\n";
    Scalar value_tmp_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "asdf\n";
    Scalar copy_tmp_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"asdf\n\": <__main__.Scalar object at 0x7f1c32703750>})");
    assert(!(value == other), "different Any: unsafe({\"asdf\n\": <__main__.Scalar object at 0x7f1c32703750>}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_219() {
    String value_tmp_ktmp0 = "";
    Scalar value_tmp_vtmp0 = unsafe(0.0).asScalar();
    String value_tmp_ktmp1 = "Hello World!";
    Scalar value_tmp_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "";
    Scalar copy_tmp_vtmp0 = unsafe(0.0).asScalar();
    String copy_tmp_ktmp1 = "Hello World!";
    Scalar copy_tmp_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483649;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\": <__main__.Scalar object at 0x7f1c32703790>, \"Hello World!\": <__main__.Scalar object at 0x7f1c327037d0>})");
    assert(!(value == other), "different Any: unsafe({\"\": <__main__.Scalar object at 0x7f1c32703790>, \"Hello World!\": <__main__.Scalar object at 0x7f1c327037d0>}) unsafe(2147483649)");
    assertEqual(true, true);
}
        
void test_Any_220() {
    
    Map<String,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_221() {
    String value_tmp_ktmp0 = "pi";
    float value_tmp_vtmp0_tmp = -0.0;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<String,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "pi";
    float copy_tmp_vtmp0_tmp = -0.0;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<String,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    String other_tmp = " ";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"pi\": unsafe(-0.0)})");
    assert(!(value == other), "different Any: unsafe({\"pi\": unsafe(-0.0)}) unsafe(\" \")");
    assertEqual(true, true);
}
        
void test_Any_222() {
    String value_tmp_ktmp0 = "pie";
    String value_tmp_vtmp0_tmp = "pie";
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    String value_tmp_ktmp1 = " ";
    float value_tmp_vtmp1_tmp = 0.0;
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<String,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "pie";
    String copy_tmp_vtmp0_tmp = "pie";
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    String copy_tmp_ktmp1 = " ";
    float copy_tmp_vtmp1_tmp = 0.0;
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<String,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)})");
    assert(!(value == other), "different Any: unsafe({\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}) unsafe(\"\")");
    assertEqual(true, true);
}
        
void test_Any_223() {
    
    Map<Scalar,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_224() {
    Scalar value_tmp_ktmp0 = unsafe(false).asScalar();
    bool value_tmp_vtmp0 = true;
    Map<Scalar,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(false).asScalar();
    bool copy_tmp_vtmp0 = true;
    Map<Scalar,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483650;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703810>: true})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703810>: true}) unsafe(2147483650)");
    assertEqual(true, true);
}
        
void test_Any_225() {
    Scalar value_tmp_ktmp0 = unsafe(2147483645).asScalar();
    bool value_tmp_vtmp0 = false;
    Scalar value_tmp_ktmp1 = unsafe(-0.0).asScalar();
    bool value_tmp_vtmp1 = true;
    Map<Scalar,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_tmp_vtmp0 = false;
    Scalar copy_tmp_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_tmp_vtmp1 = true;
    Map<Scalar,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703850>: false, <__main__.Scalar object at 0x7f1c32703890>: true})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703850>: false, <__main__.Scalar object at 0x7f1c32703890>: true}) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_226() {
    
    Map<Scalar,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "\n";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(\"\n\")");
    assertEqual(true, true);
}
        
void test_Any_227() {
    Scalar value_tmp_ktmp0 = unsafe("").asScalar();
    int value_tmp_vtmp0 = 2147483650;
    Map<Scalar,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe("").asScalar();
    int copy_tmp_vtmp0 = 2147483650;
    Map<Scalar,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c327038d0>: 2147483650})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c327038d0>: 2147483650}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_228() {
    Scalar value_tmp_ktmp0 = unsafe(true).asScalar();
    int value_tmp_vtmp0 = 2147483651;
    Scalar value_tmp_ktmp1 = unsafe(true).asScalar();
    int value_tmp_vtmp1 = 4294967293;
    Map<Scalar,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(true).asScalar();
    int copy_tmp_vtmp0 = 2147483651;
    Scalar copy_tmp_ktmp1 = unsafe(true).asScalar();
    int copy_tmp_vtmp1 = 4294967293;
    Map<Scalar,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703910>: 2147483651, <__main__.Scalar object at 0x7f1c326f7f90>: 4294967293})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703910>: 2147483651, <__main__.Scalar object at 0x7f1c326f7f90>: 4294967293}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_229() {
    
    Map<Scalar,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483651;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(2147483651)");
    assertEqual(true, true);
}
        
void test_Any_230() {
    Scalar value_tmp_ktmp0 = unsafe(-3).asScalar();
    float value_tmp_vtmp0 = 0.0;
    Map<Scalar,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(-3).asScalar();
    float copy_tmp_vtmp0 = 0.0;
    Map<Scalar,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c326f74d0>: 0.0})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c326f74d0>: 0.0}) unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_231() {
    Scalar value_tmp_ktmp0 = unsafe(0.0).asScalar();
    float value_tmp_vtmp0 = -0.0;
    Scalar value_tmp_ktmp1 = unsafe("").asScalar();
    float value_tmp_vtmp1 = 3.14;
    Map<Scalar,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(0.0).asScalar();
    float copy_tmp_vtmp0 = -0.0;
    Scalar copy_tmp_ktmp1 = unsafe("").asScalar();
    float copy_tmp_vtmp1 = 3.14;
    Map<Scalar,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "asdf\n";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703110>: -0.0, <__main__.Scalar object at 0x7f1c32703090>: 3.14})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703110>: -0.0, <__main__.Scalar object at 0x7f1c32703090>: 3.14}) unsafe(\"asdf\n\")");
    assertEqual(true, true);
}
        
void test_Any_232() {
    
    Map<Scalar,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    int other_tmp = -2;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(-2)");
    assertEqual(true, true);
}
        
void test_Any_233() {
    Scalar value_tmp_ktmp0 = unsafe(false).asScalar();
    String value_tmp_vtmp0 = "\n";
    Map<Scalar,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(false).asScalar();
    String copy_tmp_vtmp0 = "\n";
    Map<Scalar,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c327031d0>: \"\n\"})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c327031d0>: \"\n\"}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_234() {
    Scalar value_tmp_ktmp0 = unsafe(-2).asScalar();
    String value_tmp_vtmp0 = "asdf\n";
    Scalar value_tmp_ktmp1 = unsafe(-0.0).asScalar();
    String value_tmp_vtmp1 = "";
    Map<Scalar,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(-2).asScalar();
    String copy_tmp_vtmp0 = "asdf\n";
    Scalar copy_tmp_ktmp1 = unsafe(-0.0).asScalar();
    String copy_tmp_vtmp1 = "";
    Map<Scalar,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967293;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703210>: \"asdf\n\", <__main__.Scalar object at 0x7f1c32703290>: \"\"})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703210>: \"asdf\n\", <__main__.Scalar object at 0x7f1c32703290>: \"\"}) unsafe(4294967293)");
    assertEqual(true, true);
}
        
void test_Any_235() {
    
    Map<Scalar,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_236() {
    Scalar value_tmp_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_tmp_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_tmp_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c327032d0>: <__main__.Scalar object at 0x7f1c32703310>})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c327032d0>: <__main__.Scalar object at 0x7f1c32703310>}) unsafe(\"\")");
    assertEqual(true, true);
}
        
void test_Any_237() {
    Scalar value_tmp_ktmp0 = unsafe(-1).asScalar();
    Scalar value_tmp_vtmp0 = unsafe("pi").asScalar();
    Scalar value_tmp_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_tmp_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_tmp_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_tmp_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_tmp_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703350>: <__main__.Scalar object at 0x7f1c327033d0>, <__main__.Scalar object at 0x7f1c32703390>: <__main__.Scalar object at 0x7f1c32703410>})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703350>: <__main__.Scalar object at 0x7f1c327033d0>, <__main__.Scalar object at 0x7f1c32703390>: <__main__.Scalar object at 0x7f1c32703410>}) unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_238() {
    
    Map<Scalar,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<Scalar,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_239() {
    Scalar value_tmp_ktmp0 = unsafe(0).asScalar();
    bool value_tmp_vtmp0_tmp = true;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<Scalar,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(0).asScalar();
    bool copy_tmp_vtmp0_tmp = true;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<Scalar,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967294;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703450>: unsafe(true)})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703450>: unsafe(true)}) unsafe(4294967294)");
    assertEqual(true, true);
}
        
void test_Any_240() {
    Scalar value_tmp_ktmp0 = unsafe(0.0).asScalar();
    int value_tmp_vtmp0_tmp = 2147483649;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Scalar value_tmp_ktmp1 = unsafe("pie").asScalar();
    float value_tmp_vtmp1_tmp = 3.14;
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<Scalar,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_ktmp0 = unsafe(0.0).asScalar();
    int copy_tmp_vtmp0_tmp = 2147483649;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Scalar copy_tmp_ktmp1 = unsafe("pie").asScalar();
    float copy_tmp_vtmp1_tmp = 3.14;
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<Scalar,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f1c32703490>: unsafe(2147483649), <__main__.Scalar object at 0x7f1c327034d0>: unsafe(3.14)})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f1c32703490>: unsafe(2147483649), <__main__.Scalar object at 0x7f1c327034d0>: unsafe(3.14)}) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_List_bool__241() {
    
    List<bool> value = [];
    
    List<bool> copy = [];
    bool other_tmp0 = false;
    List<bool> other = [other_tmp0];
    assert(value == copy, "equals List<bool>: []");
    assert(!(value == other), "different List<bool>: [] [false]");
    assertEqual(true, true);
}
        
void test_List_bool__242() {
    bool value_tmp0 = false;
    List<bool> value = [value_tmp0];
    bool copy_tmp0 = false;
    List<bool> copy = [copy_tmp0];
    bool other_tmp0 = true;
    bool other_tmp1 = false;
    List<bool> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<bool>: [false]");
    assert(!(value == other), "different List<bool>: [false] [true, false]");
    assertEqual(true, true);
}
        
void test_List_bool__243() {
    bool value_tmp0 = true;
    bool value_tmp1 = false;
    List<bool> value = [value_tmp0, value_tmp1];
    bool copy_tmp0 = true;
    bool copy_tmp1 = false;
    List<bool> copy = [copy_tmp0, copy_tmp1];
    
    List<bool> other = [];
    assert(value == copy, "equals List<bool>: [true, false]");
    assert(!(value == other), "different List<bool>: [true, false] []");
    assertEqual(true, true);
}
        
void test_List_bool__244() {
    
    List<bool> value = [];
    
    List<bool> copy = [];
    bool other_tmp0 = false;
    List<bool> other = [other_tmp0];
    assert(value == copy, "equals List<bool>: []");
    assert(!(value == other), "different List<bool>: [] [false]");
    assertEqual(true, true);
}
        
void test_List_bool__245() {
    bool value_tmp0 = false;
    List<bool> value = [value_tmp0];
    bool copy_tmp0 = false;
    List<bool> copy = [copy_tmp0];
    bool other_tmp0 = true;
    bool other_tmp1 = false;
    List<bool> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<bool>: [false]");
    assert(!(value == other), "different List<bool>: [false] [true, false]");
    assertEqual(true, true);
}
        
void test_List_bool__246() {
    bool value_tmp0 = true;
    bool value_tmp1 = false;
    List<bool> value = [value_tmp0, value_tmp1];
    bool copy_tmp0 = true;
    bool copy_tmp1 = false;
    List<bool> copy = [copy_tmp0, copy_tmp1];
    
    List<bool> other = [];
    assert(value == copy, "equals List<bool>: [true, false]");
    assert(!(value == other), "different List<bool>: [true, false] []");
    assertEqual(true, true);
}
        
void test_List_int__247() {
    
    List<int> value = [];
    
    List<int> copy = [];
    int other_tmp0 = -3;
    List<int> other = [other_tmp0];
    assert(value == copy, "equals List<int>: []");
    assert(!(value == other), "different List<int>: [] [-3]");
    assertEqual(true, true);
}
        
void test_List_int__248() {
    int value_tmp0 = -3;
    List<int> value = [value_tmp0];
    int copy_tmp0 = -3;
    List<int> copy = [copy_tmp0];
    int other_tmp0 = -2;
    int other_tmp1 = -1;
    List<int> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<int>: [-3]");
    assert(!(value == other), "different List<int>: [-3] [-2, -1]");
    assertEqual(true, true);
}
        
void test_List_int__249() {
    int value_tmp0 = -2;
    int value_tmp1 = -1;
    List<int> value = [value_tmp0, value_tmp1];
    int copy_tmp0 = -2;
    int copy_tmp1 = -1;
    List<int> copy = [copy_tmp0, copy_tmp1];
    
    List<int> other = [];
    assert(value == copy, "equals List<int>: [-2, -1]");
    assert(!(value == other), "different List<int>: [-2, -1] []");
    assertEqual(true, true);
}
        
void test_List_int__250() {
    
    List<int> value = [];
    
    List<int> copy = [];
    int other_tmp0 = 4294967294;
    List<int> other = [other_tmp0];
    assert(value == copy, "equals List<int>: []");
    assert(!(value == other), "different List<int>: [] [4294967294]");
    assertEqual(true, true);
}
        
void test_List_int__251() {
    int value_tmp0 = 4294967294;
    List<int> value = [value_tmp0];
    int copy_tmp0 = 4294967294;
    List<int> copy = [copy_tmp0];
    int other_tmp0 = 4294967295;
    int other_tmp1 = 4294967296;
    List<int> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<int>: [4294967294]");
    assert(!(value == other), "different List<int>: [4294967294] [4294967295, 4294967296]");
    assertEqual(true, true);
}
        
void test_List_int__252() {
    int value_tmp0 = 4294967295;
    int value_tmp1 = 4294967296;
    List<int> value = [value_tmp0, value_tmp1];
    int copy_tmp0 = 4294967295;
    int copy_tmp1 = 4294967296;
    List<int> copy = [copy_tmp0, copy_tmp1];
    
    List<int> other = [];
    assert(value == copy, "equals List<int>: [4294967295, 4294967296]");
    assert(!(value == other), "different List<int>: [4294967295, 4294967296] []");
    assertEqual(true, true);
}
        
void test_List_float__253() {
    
    List<float> value = [];
    
    List<float> copy = [];
    float other_tmp0 = 0.0;
    List<float> other = [other_tmp0];
    assert(value == copy, "equals List<float>: []");
    assert(!(value == other), "different List<float>: [] [0.0]");
    assertEqual(true, true);
}
        
void test_List_float__254() {
    float value_tmp0 = 0.0;
    List<float> value = [value_tmp0];
    float copy_tmp0 = 0.0;
    List<float> copy = [copy_tmp0];
    float other_tmp0 = -0.0;
    float other_tmp1 = 3.14;
    List<float> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<float>: [0.0]");
    assert(!(value == other), "different List<float>: [0.0] [-0.0, 3.14]");
    assertEqual(true, true);
}
        
void test_List_float__255() {
    float value_tmp0 = -0.0;
    float value_tmp1 = 3.14;
    List<float> value = [value_tmp0, value_tmp1];
    float copy_tmp0 = -0.0;
    float copy_tmp1 = 3.14;
    List<float> copy = [copy_tmp0, copy_tmp1];
    
    List<float> other = [];
    assert(value == copy, "equals List<float>: [-0.0, 3.14]");
    assert(!(value == other), "different List<float>: [-0.0, 3.14] []");
    assertEqual(true, true);
}
        
void test_List_float__256() {
    
    List<float> value = [];
    
    List<float> copy = [];
    float other_tmp0 = 0.0;
    List<float> other = [other_tmp0];
    assert(value == copy, "equals List<float>: []");
    assert(!(value == other), "different List<float>: [] [0.0]");
    assertEqual(true, true);
}
        
void test_List_float__257() {
    float value_tmp0 = 0.0;
    List<float> value = [value_tmp0];
    float copy_tmp0 = 0.0;
    List<float> copy = [copy_tmp0];
    float other_tmp0 = -0.0;
    float other_tmp1 = 3.14;
    List<float> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<float>: [0.0]");
    assert(!(value == other), "different List<float>: [0.0] [-0.0, 3.14]");
    assertEqual(true, true);
}
        
void test_List_float__258() {
    float value_tmp0 = -0.0;
    float value_tmp1 = 3.14;
    List<float> value = [value_tmp0, value_tmp1];
    float copy_tmp0 = -0.0;
    float copy_tmp1 = 3.14;
    List<float> copy = [copy_tmp0, copy_tmp1];
    
    List<float> other = [];
    assert(value == copy, "equals List<float>: [-0.0, 3.14]");
    assert(!(value == other), "different List<float>: [-0.0, 3.14] []");
    assertEqual(true, true);
}
        
void test_List_String__259() {
    
    List<String> value = [];
    
    List<String> copy = [];
    String other_tmp0 = "";
    List<String> other = [other_tmp0];
    assert(value == copy, "equals List<String>: []");
    assert(!(value == other), "different List<String>: [] [\"\"]");
    assertEqual(true, true);
}
        
void test_List_String__260() {
    String value_tmp0 = "";
    List<String> value = [value_tmp0];
    String copy_tmp0 = "";
    List<String> copy = [copy_tmp0];
    String other_tmp0 = "Hello World!";
    String other_tmp1 = "pi";
    List<String> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<String>: [\"\"]");
    assert(!(value == other), "different List<String>: [\"\"] [\"Hello World!\", \"pi\"]");
    assertEqual(true, true);
}
        
void test_List_String__261() {
    String value_tmp0 = "Hello World!";
    String value_tmp1 = "pi";
    List<String> value = [value_tmp0, value_tmp1];
    String copy_tmp0 = "Hello World!";
    String copy_tmp1 = "pi";
    List<String> copy = [copy_tmp0, copy_tmp1];
    
    List<String> other = [];
    assert(value == copy, "equals List<String>: [\"Hello World!\", \"pi\"]");
    assert(!(value == other), "different List<String>: [\"Hello World!\", \"pi\"] []");
    assertEqual(true, true);
}
        
void test_List_String__262() {
    
    List<String> value = [];
    
    List<String> copy = [];
    String other_tmp0 = "Hello World!";
    List<String> other = [other_tmp0];
    assert(value == copy, "equals List<String>: []");
    assert(!(value == other), "different List<String>: [] [\"Hello World!\"]");
    assertEqual(true, true);
}
        
void test_List_String__263() {
    String value_tmp0 = "Hello World!";
    List<String> value = [value_tmp0];
    String copy_tmp0 = "Hello World!";
    List<String> copy = [copy_tmp0];
    String other_tmp0 = "pi";
    String other_tmp1 = "pie";
    List<String> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<String>: [\"Hello World!\"]");
    assert(!(value == other), "different List<String>: [\"Hello World!\"] [\"pi\", \"pie\"]");
    assertEqual(true, true);
}
        
void test_List_String__264() {
    String value_tmp0 = "pi";
    String value_tmp1 = "pie";
    List<String> value = [value_tmp0, value_tmp1];
    String copy_tmp0 = "pi";
    String copy_tmp1 = "pie";
    List<String> copy = [copy_tmp0, copy_tmp1];
    
    List<String> other = [];
    assert(value == copy, "equals List<String>: [\"pi\", \"pie\"]");
    assert(!(value == other), "different List<String>: [\"pi\", \"pie\"] []");
    assertEqual(true, true);
}
        
void test_List_Scalar__265() {
    
    List<Scalar> value = [];
    
    List<Scalar> copy = [];
    Scalar other_tmp0 = unsafe(0).asScalar();
    List<Scalar> other = [other_tmp0];
    assert(value == copy, "equals List<Scalar>: []");
    assert(!(value == other), "different List<Scalar>: [] [unsafe(0).asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__266() {
    Scalar value_tmp0 = unsafe(0).asScalar();
    List<Scalar> value = [value_tmp0];
    Scalar copy_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy = [copy_tmp0];
    Scalar other_tmp0 = unsafe(0.0).asScalar();
    Scalar other_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Scalar>: [unsafe(0).asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(0).asScalar()] [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__267() {
    Scalar value_tmp0 = unsafe(0.0).asScalar();
    Scalar value_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy = [copy_tmp0, copy_tmp1];
    
    List<Scalar> other = [];
    assert(value == copy, "equals List<Scalar>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()] []");
    assertEqual(true, true);
}
        
void test_List_Scalar__268() {
    
    List<Scalar> value = [];
    
    List<Scalar> copy = [];
    Scalar other_tmp0 = unsafe(true).asScalar();
    List<Scalar> other = [other_tmp0];
    assert(value == copy, "equals List<Scalar>: []");
    assert(!(value == other), "different List<Scalar>: [] [unsafe(true).asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__269() {
    Scalar value_tmp0 = unsafe(true).asScalar();
    List<Scalar> value = [value_tmp0];
    Scalar copy_tmp0 = unsafe(true).asScalar();
    List<Scalar> copy = [copy_tmp0];
    Scalar other_tmp0 = unsafe(1).asScalar();
    Scalar other_tmp1 = unsafe(-0.0).asScalar();
    List<Scalar> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Scalar>: [unsafe(true).asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(true).asScalar()] [unsafe(1).asScalar(), unsafe(-0.0).asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__270() {
    Scalar value_tmp0 = unsafe(1).asScalar();
    Scalar value_tmp1 = unsafe(-0.0).asScalar();
    List<Scalar> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0 = unsafe(1).asScalar();
    Scalar copy_tmp1 = unsafe(-0.0).asScalar();
    List<Scalar> copy = [copy_tmp0, copy_tmp1];
    
    List<Scalar> other = [];
    assert(value == copy, "equals List<Scalar>: [unsafe(1).asScalar(), unsafe(-0.0).asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(1).asScalar(), unsafe(-0.0).asScalar()] []");
    assertEqual(true, true);
}
        
void test_List_Any__271() {
    
    List<Any> value = [];
    
    List<Any> copy = [];
    bool other_tmp0_tmp = false;
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    List<Any> other = [other_tmp0];
    assert(value == copy, "equals List<Any>: []");
    assert(!(value == other), "different List<Any>: [] [unsafe(false)]");
    assertEqual(true, true);
}
        
void test_List_Any__272() {
    bool value_tmp0_tmp = false;
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    List<Any> value = [value_tmp0];
    bool copy_tmp0_tmp = false;
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    List<Any> copy = [copy_tmp0];
    int other_tmp0_tmp = 2147483646;
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    float other_tmp1_tmp = 3.14;
    Any other_tmp1 = unsafe(other_tmp1_tmp);
    List<Any> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Any>: [unsafe(false)]");
    assert(!(value == other), "different List<Any>: [unsafe(false)] [unsafe(2147483646), unsafe(3.14)]");
    assertEqual(true, true);
}
        
void test_List_Any__273() {
    int value_tmp0_tmp = 2147483646;
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    float value_tmp1_tmp = 3.14;
    Any value_tmp1 = unsafe(value_tmp1_tmp);
    List<Any> value = [value_tmp0, value_tmp1];
    int copy_tmp0_tmp = 2147483646;
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    float copy_tmp1_tmp = 3.14;
    Any copy_tmp1 = unsafe(copy_tmp1_tmp);
    List<Any> copy = [copy_tmp0, copy_tmp1];
    
    List<Any> other = [];
    assert(value == copy, "equals List<Any>: [unsafe(2147483646), unsafe(3.14)]");
    assert(!(value == other), "different List<Any>: [unsafe(2147483646), unsafe(3.14)] []");
    assertEqual(true, true);
}
        
void test_List_Any__274() {
    
    List<Any> value = [];
    
    List<Any> copy = [];
    String other_tmp0_tmp = " ";
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    List<Any> other = [other_tmp0];
    assert(value == copy, "equals List<Any>: []");
    assert(!(value == other), "different List<Any>: [] [unsafe(\" \")]");
    assertEqual(true, true);
}
        
void test_List_Any__275() {
    String value_tmp0_tmp = " ";
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    List<Any> value = [value_tmp0];
    String copy_tmp0_tmp = " ";
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    List<Any> copy = [copy_tmp0];
    String other_tmp0_tmp = "";
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    bool other_tmp1_tmp = false;
    Any other_tmp1 = unsafe(other_tmp1_tmp);
    List<Any> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Any>: [unsafe(\" \")]");
    assert(!(value == other), "different List<Any>: [unsafe(\" \")] [unsafe(\"\"), unsafe(false)]");
    assertEqual(true, true);
}
        
void test_List_Any__276() {
    String value_tmp0_tmp = "";
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    bool value_tmp1_tmp = false;
    Any value_tmp1 = unsafe(value_tmp1_tmp);
    List<Any> value = [value_tmp0, value_tmp1];
    String copy_tmp0_tmp = "";
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    bool copy_tmp1_tmp = false;
    Any copy_tmp1 = unsafe(copy_tmp1_tmp);
    List<Any> copy = [copy_tmp0, copy_tmp1];
    
    List<Any> other = [];
    assert(value == copy, "equals List<Any>: [unsafe(\"\"), unsafe(false)]");
    assert(!(value == other), "different List<Any>: [unsafe(\"\"), unsafe(false)] []");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__277() {
    
    Map<bool,bool> value = {};
    
    Map<bool,bool> copy = {};
    bool other_ktmp0 = true;
    bool other_vtmp0 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,bool>: {}");
    assert(!(value == other), "different Map<bool,bool>: {} {true: false}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__278() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    bool other_vtmp0 = true;
    bool other_ktmp1 = false;
    bool other_vtmp1 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,bool>: {true: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: false} {true: true, false: false}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__279() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = true;
    bool value_ktmp1 = false;
    bool value_vtmp1 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = true;
    bool copy_ktmp1 = false;
    bool copy_vtmp1 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,bool> other = {};
    assert(value == copy, "equals Map<bool,bool>: {true: true, false: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: true, false: false} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__280() {
    
    Map<bool,bool> value = {};
    
    Map<bool,bool> copy = {};
    bool other_ktmp0 = true;
    bool other_vtmp0 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,bool>: {}");
    assert(!(value == other), "different Map<bool,bool>: {} {true: false}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__281() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    bool other_vtmp0 = true;
    bool other_ktmp1 = false;
    bool other_vtmp1 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,bool>: {true: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: false} {true: true, false: false}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__282() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = true;
    bool value_ktmp1 = false;
    bool value_vtmp1 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = true;
    bool copy_ktmp1 = false;
    bool copy_vtmp1 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,bool> other = {};
    assert(value == copy, "equals Map<bool,bool>: {true: true, false: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: true, false: false} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__283() {
    
    Map<bool,int> value = {};
    
    Map<bool,int> copy = {};
    bool other_ktmp0 = true;
    int other_vtmp0 = 0;
    Map<bool,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,int>: {}");
    assert(!(value == other), "different Map<bool,int>: {} {true: 0}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__284() {
    bool value_ktmp0 = true;
    int value_vtmp0 = 0;
    Map<bool,int> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    int copy_vtmp0 = 0;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    int other_vtmp0 = 1;
    bool other_ktmp1 = true;
    int other_vtmp1 = 2;
    Map<bool,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,int>: {true: 0}");
    assert(!(value == other), "different Map<bool,int>: {true: 0} {false: 1, true: 2}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__285() {
    bool value_ktmp0 = false;
    int value_vtmp0 = 1;
    bool value_ktmp1 = true;
    int value_vtmp1 = 2;
    Map<bool,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    int copy_vtmp0 = 1;
    bool copy_ktmp1 = true;
    int copy_vtmp1 = 2;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,int> other = {};
    assert(value == copy, "equals Map<bool,int>: {false: 1, true: 2}");
    assert(!(value == other), "different Map<bool,int>: {false: 1, true: 2} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__286() {
    
    Map<bool,int> value = {};
    
    Map<bool,int> copy = {};
    bool other_ktmp0 = true;
    int other_vtmp0 = 4294967297;
    Map<bool,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,int>: {}");
    assert(!(value == other), "different Map<bool,int>: {} {true: 4294967297}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__287() {
    bool value_ktmp0 = true;
    int value_vtmp0 = 4294967297;
    Map<bool,int> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    int copy_vtmp0 = 4294967297;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    int other_vtmp0 = 4294967298;
    bool other_ktmp1 = true;
    int other_vtmp1 = 4294967299;
    Map<bool,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,int>: {true: 4294967297}");
    assert(!(value == other), "different Map<bool,int>: {true: 4294967297} {false: 4294967298, true: 4294967299}");
    assertEqual(true, true);
}
        
void test_Map_bool_int__288() {
    bool value_ktmp0 = false;
    int value_vtmp0 = 4294967298;
    bool value_ktmp1 = true;
    int value_vtmp1 = 4294967299;
    Map<bool,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    int copy_vtmp0 = 4294967298;
    bool copy_ktmp1 = true;
    int copy_vtmp1 = 4294967299;
    Map<bool,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,int> other = {};
    assert(value == copy, "equals Map<bool,int>: {false: 4294967298, true: 4294967299}");
    assert(!(value == other), "different Map<bool,int>: {false: 4294967298, true: 4294967299} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_float__289() {
    
    Map<bool,float> value = {};
    
    Map<bool,float> copy = {};
    bool other_ktmp0 = false;
    float other_vtmp0 = 0.0;
    Map<bool,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,float>: {}");
    assert(!(value == other), "different Map<bool,float>: {} {false: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_bool_float__290() {
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
        