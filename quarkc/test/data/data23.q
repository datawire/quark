
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
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0810>: true})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0810>: true}) unsafe(2147483650)");
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
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}) unsafe(0.0)");
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
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}) unsafe(false)");
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
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}) unsafe(true)");
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
    assert(value == copy, "equals Any: unsafe({<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0})");
    assert(!(value == other), "different Any: unsafe({<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}) unsafe(-0.0)");
    assertEqual(true, true);
}
        