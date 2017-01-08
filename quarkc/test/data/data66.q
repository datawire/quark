
void test_Map_bool_Map_String_Scalar___651() {
    bool value_ktmp0 = true;
    String value_vtmp0_ktmp0 = "asdf\n";
    Scalar value_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    String value_vtmp1_ktmp0 = "";
    Scalar value_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String value_vtmp1_ktmp1 = "Hello World!";
    Scalar value_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    String copy_vtmp0_ktmp0 = "asdf\n";
    Scalar copy_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    String copy_vtmp1_ktmp0 = "";
    Scalar copy_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String copy_vtmp1_ktmp1 = "Hello World!";
    Scalar copy_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<String,Scalar>> other = {};
    assert(value == copy, "equals Map<bool,Map<String,Scalar>>: {true: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, false: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}}");
    assert(!(value == other), "different Map<bool,Map<String,Scalar>>: {true: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, false: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_Any___652() {
    
    Map<bool,Map<String,Any>> value = {};
    
    Map<bool,Map<String,Any>> copy = {};
    bool other_ktmp0 = true;
    
    Map<String,Any> other_vtmp0 = {};
    Map<bool,Map<String,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<String,Any>>: {}");
    assert(!(value == other), "different Map<bool,Map<String,Any>>: {} {true: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_Any___653() {
    bool value_ktmp0 = true;
    
    Map<String,Any> value_vtmp0 = {};
    Map<bool,Map<String,Any>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<String,Any> copy_vtmp0 = {};
    Map<bool,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    String other_vtmp0_ktmp0 = "pi";
    float other_vtmp0_vtmp0_tmp = -0.0;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<String,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    String other_vtmp1_ktmp0 = "pie";
    String other_vtmp1_vtmp0_tmp = "pie";
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    String other_vtmp1_ktmp1 = " ";
    float other_vtmp1_vtmp1_tmp = 0.0;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<String,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<String,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<String,Any>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<String,Any>>: {true: {}} {false: {\"pi\": unsafe(-0.0)}, true: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_String_Any___654() {
    bool value_ktmp0 = false;
    String value_vtmp0_ktmp0 = "pi";
    float value_vtmp0_vtmp0_tmp = -0.0;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<String,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    String value_vtmp1_ktmp0 = "pie";
    String value_vtmp1_vtmp0_tmp = "pie";
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    String value_vtmp1_ktmp1 = " ";
    float value_vtmp1_vtmp1_tmp = 0.0;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<String,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<String,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    String copy_vtmp0_ktmp0 = "pi";
    float copy_vtmp0_vtmp0_tmp = -0.0;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<String,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    String copy_vtmp1_ktmp0 = "pie";
    String copy_vtmp1_vtmp0_tmp = "pie";
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    String copy_vtmp1_ktmp1 = " ";
    float copy_vtmp1_vtmp1_tmp = 0.0;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<String,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<String,Any>> other = {};
    assert(value == copy, "equals Map<bool,Map<String,Any>>: {false: {\"pi\": unsafe(-0.0)}, true: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assert(!(value == other), "different Map<bool,Map<String,Any>>: {false: {\"pi\": unsafe(-0.0)}, true: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_bool___655() {
    
    Map<bool,Map<Scalar,bool>> value = {};
    
    Map<bool,Map<Scalar,bool>> copy = {};
    bool other_ktmp0 = false;
    
    Map<Scalar,bool> other_vtmp0 = {};
    Map<bool,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<Scalar,bool>>: {}");
    assert(!(value == other), "different Map<bool,Map<Scalar,bool>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_bool___656() {
    bool value_ktmp0 = false;
    
    Map<Scalar,bool> value_vtmp0 = {};
    Map<bool,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<Scalar,bool> copy_vtmp0 = {};
    Map<bool,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_vtmp0 = true;
    Map<Scalar,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    Scalar other_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool other_vtmp1_vtmp0 = false;
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_vtmp1 = true;
    Map<Scalar,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<Scalar,bool>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,bool>>: {false: {}} {true: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, false: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_bool___657() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_vtmp0 = true;
    Map<Scalar,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    Scalar value_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool value_vtmp1_vtmp0 = false;
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_vtmp1 = true;
    Map<Scalar,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_vtmp0 = true;
    Map<Scalar,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_vtmp1_vtmp0 = false;
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_vtmp1 = true;
    Map<Scalar,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<Scalar,bool>> other = {};
    assert(value == copy, "equals Map<bool,Map<Scalar,bool>>: {true: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, false: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,bool>>: {true: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, false: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_int___658() {
    
    Map<bool,Map<Scalar,int>> value = {};
    
    Map<bool,Map<Scalar,int>> copy = {};
    bool other_ktmp0 = true;
    
    Map<Scalar,int> other_vtmp0 = {};
    Map<bool,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<Scalar,int>>: {}");
    assert(!(value == other), "different Map<bool,Map<Scalar,int>>: {} {true: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_int___659() {
    bool value_ktmp0 = true;
    
    Map<Scalar,int> value_vtmp0 = {};
    Map<bool,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<Scalar,int> copy_vtmp0 = {};
    Map<bool,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    Scalar other_vtmp0_ktmp0 = unsafe("").asScalar();
    int other_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    Scalar other_vtmp1_ktmp0 = unsafe(true).asScalar();
    int other_vtmp1_vtmp0 = 2147483651;
    Scalar other_vtmp1_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<Scalar,int>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,int>>: {true: {}} {false: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, true: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_int___660() {
    bool value_ktmp0 = false;
    Scalar value_vtmp0_ktmp0 = unsafe("").asScalar();
    int value_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    Scalar value_vtmp1_ktmp0 = unsafe(true).asScalar();
    int value_vtmp1_vtmp0 = 2147483651;
    Scalar value_vtmp1_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    Scalar copy_vtmp0_ktmp0 = unsafe("").asScalar();
    int copy_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    Scalar copy_vtmp1_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp0 = 2147483651;
    Scalar copy_vtmp1_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<Scalar,int>> other = {};
    assert(value == copy, "equals Map<bool,Map<Scalar,int>>: {false: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, true: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,int>>: {false: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, true: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}} {}");
    assertEqual(true, true);
}
        