
void test_Any_181() {
    
    Map<int,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "";
    Scalar other_tmp_vtmp0 = unsafe(0.0).asScalar();
    String other_tmp_ktmp1 = "Hello World!";
    Scalar other_tmp_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>})");
    assertEqual(true, true);
}
        
void test_Any_182() {
    int value_tmp_ktmp0 = -3;
    Scalar value_tmp_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = -3;
    Scalar copy_tmp_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-3: <__main__.Scalar object at 0x7f9dce0f05d0>})");
    assert(!(value == other), "different Any: unsafe({-3: <__main__.Scalar object at 0x7f9dce0f05d0>}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_183() {
    int value_tmp_ktmp0 = -2;
    Scalar value_tmp_vtmp0 = unsafe(false).asScalar();
    int value_tmp_ktmp1 = -1;
    Scalar value_tmp_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = -2;
    Scalar copy_tmp_vtmp0 = unsafe(false).asScalar();
    int copy_tmp_ktmp1 = -1;
    Scalar copy_tmp_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "pi";
    float other_tmp_vtmp0_tmp = -0.0;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<String,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>})");
    assert(!(value == other), "different Any: unsafe({-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}) unsafe({\"pi\": unsafe(-0.0)})");
    assertEqual(true, true);
}
        
void test_Any_184() {
    
    Map<int,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "pie";
    String other_tmp_vtmp0_tmp = "pie";
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    String other_tmp_ktmp1 = " ";
    float other_tmp_vtmp1_tmp = 0.0;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<String,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)})");
    assertEqual(true, true);
}
        
void test_Any_185() {
    int value_tmp_ktmp0 = 0;
    int value_tmp_vtmp0_tmp = 2147483647;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<int,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 0;
    int copy_tmp_vtmp0_tmp = 2147483647;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<int,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0: unsafe(2147483647)})");
    assert(!(value == other), "different Any: unsafe({0: unsafe(2147483647)}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_186() {
    int value_tmp_ktmp0 = 1;
    float value_tmp_vtmp0_tmp = 0.0;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    int value_tmp_ktmp1 = 2;
    String value_tmp_vtmp1_tmp = "pi";
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<int,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 1;
    float copy_tmp_vtmp0_tmp = 0.0;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    int copy_tmp_ktmp1 = 2;
    String copy_tmp_vtmp1_tmp = "pi";
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<int,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(false).asScalar();
    bool other_tmp_vtmp0 = true;
    Map<Scalar,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({1: unsafe(0.0), 2: unsafe(\"pi\")})");
    assert(!(value == other), "different Any: unsafe({1: unsafe(0.0), 2: unsafe(\"pi\")}) unsafe({<__main__.Scalar object at 0x7f9dce0f0810>: true})");
    assertEqual(true, true);
}
        
void test_Any_187() {
    
    Map<float,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(2147483645).asScalar();
    bool other_tmp_vtmp0 = false;
    Scalar other_tmp_ktmp1 = unsafe(-0.0).asScalar();
    bool other_tmp_vtmp1 = true;
    Map<Scalar,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true})");
    assertEqual(true, true);
}
        
void test_Any_188() {
    float value_tmp_ktmp0 = 0.0;
    bool value_tmp_vtmp0 = true;
    Map<float,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    bool copy_tmp_vtmp0 = true;
    Map<float,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: true})");
    assert(!(value == other), "different Any: unsafe({0.0: true}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_189() {
    float value_tmp_ktmp0 = -0.0;
    bool value_tmp_vtmp0 = false;
    float value_tmp_ktmp1 = 3.14;
    bool value_tmp_vtmp1 = true;
    Map<float,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    bool copy_tmp_vtmp0 = false;
    float copy_tmp_ktmp1 = 3.14;
    bool copy_tmp_vtmp1 = true;
    Map<float,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe("").asScalar();
    int other_tmp_vtmp0 = 2147483650;
    Map<Scalar,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: false, 3.14: true})");
    assert(!(value == other), "different Any: unsafe({-0.0: false, 3.14: true}) unsafe({<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650})");
    assertEqual(true, true);
}
        
void test_Any_190() {
    
    Map<float,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(true).asScalar();
    int other_tmp_vtmp0 = 2147483651;
    Scalar other_tmp_ktmp1 = unsafe(true).asScalar();
    int other_tmp_vtmp1 = 4294967293;
    Map<Scalar,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293})");
    assertEqual(true, true);
}
        