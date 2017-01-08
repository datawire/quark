
void test_Map_bool_Scalar__301() {
    
    Map<bool,Scalar> value = {};
    
    Map<bool,Scalar> copy = {};
    bool other_ktmp0 = false;
    Scalar other_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Scalar>: {}");
    assert(!(value == other), "different Map<bool,Scalar>: {} {false: <__main__.Scalar object at 0x7f1c32703510>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__302() {
    bool value_ktmp0 = false;
    Scalar value_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    Scalar copy_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0 = unsafe(1).asScalar();
    bool other_ktmp1 = false;
    Scalar other_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f1c32703510>}");
    assert(!(value == other), "different Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f1c32703510>} {true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__303() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0 = unsafe(1).asScalar();
    bool value_ktmp1 = false;
    Scalar value_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0 = unsafe(1).asScalar();
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Scalar> other = {};
    assert(value == copy, "equals Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>}");
    assert(!(value == other), "different Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__304() {
    
    Map<bool,Scalar> value = {};
    
    Map<bool,Scalar> copy = {};
    bool other_ktmp0 = false;
    Scalar other_vtmp0 = unsafe(" ").asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Scalar>: {}");
    assert(!(value == other), "different Map<bool,Scalar>: {} {false: <__main__.Scalar object at 0x7f1c327035d0>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__305() {
    bool value_ktmp0 = false;
    Scalar value_vtmp0 = unsafe(" ").asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    Scalar copy_vtmp0 = unsafe(" ").asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0 = unsafe(false).asScalar();
    bool other_ktmp1 = false;
    Scalar other_vtmp1 = unsafe(2).asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f1c327035d0>}");
    assert(!(value == other), "different Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f1c327035d0>} {true: <__main__.Scalar object at 0x7f1c32703610>, false: <__main__.Scalar object at 0x7f1c32703650>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__306() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0 = unsafe(false).asScalar();
    bool value_ktmp1 = false;
    Scalar value_vtmp1 = unsafe(2).asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0 = unsafe(false).asScalar();
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1 = unsafe(2).asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Scalar> other = {};
    assert(value == copy, "equals Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f1c32703610>, false: <__main__.Scalar object at 0x7f1c32703650>}");
    assert(!(value == other), "different Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f1c32703610>, false: <__main__.Scalar object at 0x7f1c32703650>} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__307() {
    
    Map<bool,Any> value = {};
    
    Map<bool,Any> copy = {};
    bool other_ktmp0 = true;
    String other_vtmp0_tmp = "Hello World!";
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Any>: {}");
    assert(!(value == other), "different Map<bool,Any>: {} {true: unsafe(\"Hello World!\")}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__308() {
    bool value_ktmp0 = true;
    String value_vtmp0_tmp = "Hello World!";
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    String copy_vtmp0_tmp = "Hello World!";
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    bool other_vtmp0_tmp = true;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    bool other_ktmp1 = true;
    bool other_vtmp1_tmp = true;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Any>: {true: unsafe(\"Hello World!\")}");
    assert(!(value == other), "different Map<bool,Any>: {true: unsafe(\"Hello World!\")} {false: unsafe(true), true: unsafe(true)}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__309() {
    bool value_ktmp0 = false;
    bool value_vtmp0_tmp = true;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    bool value_ktmp1 = true;
    bool value_vtmp1_tmp = true;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    bool copy_vtmp0_tmp = true;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    bool copy_ktmp1 = true;
    bool copy_vtmp1_tmp = true;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Any> other = {};
    assert(value == copy, "equals Map<bool,Any>: {false: unsafe(true), true: unsafe(true)}");
    assert(!(value == other), "different Map<bool,Any>: {false: unsafe(true), true: unsafe(true)} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__310() {
    
    Map<bool,Any> value = {};
    
    Map<bool,Any> copy = {};
    bool other_ktmp0 = true;
    int other_vtmp0_tmp = 2147483650;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Any>: {}");
    assert(!(value == other), "different Map<bool,Any>: {} {true: unsafe(2147483650)}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__311() {
    bool value_ktmp0 = true;
    int value_vtmp0_tmp = 2147483650;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    int copy_vtmp0_tmp = 2147483650;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    float other_vtmp0_tmp = 0.0;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    bool other_ktmp1 = true;
    String other_vtmp1_tmp = "\n";
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Any>: {true: unsafe(2147483650)}");
    assert(!(value == other), "different Map<bool,Any>: {true: unsafe(2147483650)} {false: unsafe(0.0), true: unsafe(\"\n\")}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__312() {
    bool value_ktmp0 = false;
    float value_vtmp0_tmp = 0.0;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    bool value_ktmp1 = true;
    String value_vtmp1_tmp = "\n";
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    float copy_vtmp0_tmp = 0.0;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    bool copy_ktmp1 = true;
    String copy_vtmp1_tmp = "\n";
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Any> other = {};
    assert(value == copy, "equals Map<bool,Any>: {false: unsafe(0.0), true: unsafe(\"\n\")}");
    assert(!(value == other), "different Map<bool,Any>: {false: unsafe(0.0), true: unsafe(\"\n\")} {}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__313() {
    
    Map<int,bool> value = {};
    
    Map<int,bool> copy = {};
    int other_ktmp0 = 3;
    bool other_vtmp0 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,bool>: {}");
    assert(!(value == other), "different Map<int,bool>: {} {3: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__314() {
    int value_ktmp0 = 3;
    bool value_vtmp0 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 3;
    bool copy_vtmp0 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483645;
    bool other_vtmp0 = true;
    int other_ktmp1 = 2147483646;
    bool other_vtmp1 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,bool>: {3: false}");
    assert(!(value == other), "different Map<int,bool>: {3: false} {2147483645: true, 2147483646: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__315() {
    int value_ktmp0 = 2147483645;
    bool value_vtmp0 = true;
    int value_ktmp1 = 2147483646;
    bool value_vtmp1 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483645;
    bool copy_vtmp0 = true;
    int copy_ktmp1 = 2147483646;
    bool copy_vtmp1 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,bool> other = {};
    assert(value == copy, "equals Map<int,bool>: {2147483645: true, 2147483646: false}");
    assert(!(value == other), "different Map<int,bool>: {2147483645: true, 2147483646: false} {}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__316() {
    
    Map<int,bool> value = {};
    
    Map<int,bool> copy = {};
    int other_ktmp0 = -3;
    bool other_vtmp0 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,bool>: {}");
    assert(!(value == other), "different Map<int,bool>: {} {-3: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__317() {
    int value_ktmp0 = -3;
    bool value_vtmp0 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = -3;
    bool copy_vtmp0 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = -2;
    bool other_vtmp0 = true;
    int other_ktmp1 = -1;
    bool other_vtmp1 = false;
    Map<int,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,bool>: {-3: false}");
    assert(!(value == other), "different Map<int,bool>: {-3: false} {-2: true, -1: false}");
    assertEqual(true, true);
}
        
void test_Map_int_bool__318() {
    int value_ktmp0 = -2;
    bool value_vtmp0 = true;
    int value_ktmp1 = -1;
    bool value_vtmp1 = false;
    Map<int,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = -2;
    bool copy_vtmp0 = true;
    int copy_ktmp1 = -1;
    bool copy_vtmp1 = false;
    Map<int,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,bool> other = {};
    assert(value == copy, "equals Map<int,bool>: {-2: true, -1: false}");
    assert(!(value == other), "different Map<int,bool>: {-2: true, -1: false} {}");
    assertEqual(true, true);
}
        
void test_Map_int_int__319() {
    
    Map<int,int> value = {};
    
    Map<int,int> copy = {};
    int other_ktmp0 = 2147483647;
    int other_vtmp0 = 2147483648;
    Map<int,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,int>: {}");
    assert(!(value == other), "different Map<int,int>: {} {2147483647: 2147483648}");
    assertEqual(true, true);
}
        
void test_Map_int_int__320() {
    int value_ktmp0 = 2147483647;
    int value_vtmp0 = 2147483648;
    Map<int,int> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483647;
    int copy_vtmp0 = 2147483648;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483649;
    int other_vtmp0 = 2147483651;
    int other_ktmp1 = 2147483650;
    int other_vtmp1 = 4294967293;
    Map<int,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,int>: {2147483647: 2147483648}");
    assert(!(value == other), "different Map<int,int>: {2147483647: 2147483648} {2147483649: 2147483651, 2147483650: 4294967293}");
    assertEqual(true, true);
}
        
void test_Map_int_int__321() {
    int value_ktmp0 = 2147483649;
    int value_vtmp0 = 2147483651;
    int value_ktmp1 = 2147483650;
    int value_vtmp1 = 4294967293;
    Map<int,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483649;
    int copy_vtmp0 = 2147483651;
    int copy_ktmp1 = 2147483650;
    int copy_vtmp1 = 4294967293;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,int> other = {};
    assert(value == copy, "equals Map<int,int>: {2147483649: 2147483651, 2147483650: 4294967293}");
    assert(!(value == other), "different Map<int,int>: {2147483649: 2147483651, 2147483650: 4294967293} {}");
    assertEqual(true, true);
}
        
void test_Map_int_int__322() {
    
    Map<int,int> value = {};
    
    Map<int,int> copy = {};
    int other_ktmp0 = 0;
    int other_vtmp0 = 1;
    Map<int,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,int>: {}");
    assert(!(value == other), "different Map<int,int>: {} {0: 1}");
    assertEqual(true, true);
}
        
void test_Map_int_int__323() {
    int value_ktmp0 = 0;
    int value_vtmp0 = 1;
    Map<int,int> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 0;
    int copy_vtmp0 = 1;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2;
    int other_vtmp0 = 2147483645;
    int other_ktmp1 = 3;
    int other_vtmp1 = 2147483646;
    Map<int,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,int>: {0: 1}");
    assert(!(value == other), "different Map<int,int>: {0: 1} {2: 2147483645, 3: 2147483646}");
    assertEqual(true, true);
}
        
void test_Map_int_int__324() {
    int value_ktmp0 = 2;
    int value_vtmp0 = 2147483645;
    int value_ktmp1 = 3;
    int value_vtmp1 = 2147483646;
    Map<int,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2;
    int copy_vtmp0 = 2147483645;
    int copy_ktmp1 = 3;
    int copy_vtmp1 = 2147483646;
    Map<int,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,int> other = {};
    assert(value == copy, "equals Map<int,int>: {2: 2147483645, 3: 2147483646}");
    assert(!(value == other), "different Map<int,int>: {2: 2147483645, 3: 2147483646} {}");
    assertEqual(true, true);
}
        
void test_Map_int_float__325() {
    
    Map<int,float> value = {};
    
    Map<int,float> copy = {};
    int other_ktmp0 = 4294967294;
    float other_vtmp0 = 0.0;
    Map<int,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,float>: {}");
    assert(!(value == other), "different Map<int,float>: {} {4294967294: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_int_float__326() {
    int value_ktmp0 = 4294967294;
    float value_vtmp0 = 0.0;
    Map<int,float> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967294;
    float copy_vtmp0 = 0.0;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967295;
    float other_vtmp0 = -0.0;
    int other_ktmp1 = 4294967296;
    float other_vtmp1 = 3.14;
    Map<int,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,float>: {4294967294: 0.0}");
    assert(!(value == other), "different Map<int,float>: {4294967294: 0.0} {4294967295: -0.0, 4294967296: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_int_float__327() {
    int value_ktmp0 = 4294967295;
    float value_vtmp0 = -0.0;
    int value_ktmp1 = 4294967296;
    float value_vtmp1 = 3.14;
    Map<int,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967295;
    float copy_vtmp0 = -0.0;
    int copy_ktmp1 = 4294967296;
    float copy_vtmp1 = 3.14;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,float> other = {};
    assert(value == copy, "equals Map<int,float>: {4294967295: -0.0, 4294967296: 3.14}");
    assert(!(value == other), "different Map<int,float>: {4294967295: -0.0, 4294967296: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_int_float__328() {
    
    Map<int,float> value = {};
    
    Map<int,float> copy = {};
    int other_ktmp0 = 2147483647;
    float other_vtmp0 = 0.0;
    Map<int,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,float>: {}");
    assert(!(value == other), "different Map<int,float>: {} {2147483647: 0.0}");
    assertEqual(true, true);
}
        
void test_Map_int_float__329() {
    int value_ktmp0 = 2147483647;
    float value_vtmp0 = 0.0;
    Map<int,float> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483647;
    float copy_vtmp0 = 0.0;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483648;
    float other_vtmp0 = -0.0;
    int other_ktmp1 = 2147483649;
    float other_vtmp1 = 3.14;
    Map<int,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,float>: {2147483647: 0.0}");
    assert(!(value == other), "different Map<int,float>: {2147483647: 0.0} {2147483648: -0.0, 2147483649: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_int_float__330() {
    int value_ktmp0 = 2147483648;
    float value_vtmp0 = -0.0;
    int value_ktmp1 = 2147483649;
    float value_vtmp1 = 3.14;
    Map<int,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483648;
    float copy_vtmp0 = -0.0;
    int copy_ktmp1 = 2147483649;
    float copy_vtmp1 = 3.14;
    Map<int,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,float> other = {};
    assert(value == copy, "equals Map<int,float>: {2147483648: -0.0, 2147483649: 3.14}");
    assert(!(value == other), "different Map<int,float>: {2147483648: -0.0, 2147483649: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_int_String__331() {
    
    Map<int,String> value = {};
    
    Map<int,String> copy = {};
    int other_ktmp0 = 4294967297;
    String other_vtmp0 = "asdf\n";
    Map<int,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,String>: {}");
    assert(!(value == other), "different Map<int,String>: {} {4294967297: \"asdf\n\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__332() {
    int value_ktmp0 = 4294967297;
    String value_vtmp0 = "asdf\n";
    Map<int,String> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967297;
    String copy_vtmp0 = "asdf\n";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967298;
    String other_vtmp0 = "";
    int other_ktmp1 = 4294967299;
    String other_vtmp1 = "Hello World!";
    Map<int,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,String>: {4294967297: \"asdf\n\"}");
    assert(!(value == other), "different Map<int,String>: {4294967297: \"asdf\n\"} {4294967298: \"\", 4294967299: \"Hello World!\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__333() {
    int value_ktmp0 = 4294967298;
    String value_vtmp0 = "";
    int value_ktmp1 = 4294967299;
    String value_vtmp1 = "Hello World!";
    Map<int,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967298;
    String copy_vtmp0 = "";
    int copy_ktmp1 = 4294967299;
    String copy_vtmp1 = "Hello World!";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,String> other = {};
    assert(value == copy, "equals Map<int,String>: {4294967298: \"\", 4294967299: \"Hello World!\"}");
    assert(!(value == other), "different Map<int,String>: {4294967298: \"\", 4294967299: \"Hello World!\"} {}");
    assertEqual(true, true);
}
        
void test_Map_int_String__334() {
    
    Map<int,String> value = {};
    
    Map<int,String> copy = {};
    int other_ktmp0 = 2147483650;
    String other_vtmp0 = "";
    Map<int,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,String>: {}");
    assert(!(value == other), "different Map<int,String>: {} {2147483650: \"\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__335() {
    int value_ktmp0 = 2147483650;
    String value_vtmp0 = "";
    Map<int,String> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483650;
    String copy_vtmp0 = "";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483651;
    String other_vtmp0 = "Hello World!";
    int other_ktmp1 = 4294967293;
    String other_vtmp1 = "pi";
    Map<int,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,String>: {2147483650: \"\"}");
    assert(!(value == other), "different Map<int,String>: {2147483650: \"\"} {2147483651: \"Hello World!\", 4294967293: \"pi\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__336() {
    int value_ktmp0 = 2147483651;
    String value_vtmp0 = "Hello World!";
    int value_ktmp1 = 4294967293;
    String value_vtmp1 = "pi";
    Map<int,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483651;
    String copy_vtmp0 = "Hello World!";
    int copy_ktmp1 = 4294967293;
    String copy_vtmp1 = "pi";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,String> other = {};
    assert(value == copy, "equals Map<int,String>: {2147483651: \"Hello World!\", 4294967293: \"pi\"}");
    assert(!(value == other), "different Map<int,String>: {2147483651: \"Hello World!\", 4294967293: \"pi\"} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__337() {
    
    Map<int,Scalar> value = {};
    
    Map<int,Scalar> copy = {};
    int other_ktmp0 = -3;
    Scalar other_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Scalar>: {}");
    assert(!(value == other), "different Map<int,Scalar>: {} {-3: <__main__.Scalar object at 0x7f1c327035d0>}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__338() {
    int value_ktmp0 = -3;
    Scalar value_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = -3;
    Scalar copy_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = -2;
    Scalar other_vtmp0 = unsafe(false).asScalar();
    int other_ktmp1 = -1;
    Scalar other_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Scalar>: {-3: <__main__.Scalar object at 0x7f1c327035d0>}");
    assert(!(value == other), "different Map<int,Scalar>: {-3: <__main__.Scalar object at 0x7f1c327035d0>} {-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__339() {
    int value_ktmp0 = -2;
    Scalar value_vtmp0 = unsafe(false).asScalar();
    int value_ktmp1 = -1;
    Scalar value_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = -2;
    Scalar copy_vtmp0 = unsafe(false).asScalar();
    int copy_ktmp1 = -1;
    Scalar copy_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Scalar> other = {};
    assert(value == copy, "equals Map<int,Scalar>: {-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>}");
    assert(!(value == other), "different Map<int,Scalar>: {-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__340() {
    
    Map<int,Scalar> value = {};
    
    Map<int,Scalar> copy = {};
    int other_ktmp0 = 4294967294;
    Scalar other_vtmp0 = unsafe(3.14).asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Scalar>: {}");
    assert(!(value == other), "different Map<int,Scalar>: {} {4294967294: <__main__.Scalar object at 0x7f1c32703690>}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__341() {
    int value_ktmp0 = 4294967294;
    Scalar value_vtmp0 = unsafe(3.14).asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967294;
    Scalar copy_vtmp0 = unsafe(3.14).asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967295;
    Scalar other_vtmp0 = unsafe("\n").asScalar();
    int other_ktmp1 = 4294967296;
    Scalar other_vtmp1 = unsafe(true).asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Scalar>: {4294967294: <__main__.Scalar object at 0x7f1c32703690>}");
    assert(!(value == other), "different Map<int,Scalar>: {4294967294: <__main__.Scalar object at 0x7f1c32703690>} {4294967295: <__main__.Scalar object at 0x7f1c327036d0>, 4294967296: <__main__.Scalar object at 0x7f1c32703710>}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__342() {
    int value_ktmp0 = 4294967295;
    Scalar value_vtmp0 = unsafe("\n").asScalar();
    int value_ktmp1 = 4294967296;
    Scalar value_vtmp1 = unsafe(true).asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967295;
    Scalar copy_vtmp0 = unsafe("\n").asScalar();
    int copy_ktmp1 = 4294967296;
    Scalar copy_vtmp1 = unsafe(true).asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Scalar> other = {};
    assert(value == copy, "equals Map<int,Scalar>: {4294967295: <__main__.Scalar object at 0x7f1c327036d0>, 4294967296: <__main__.Scalar object at 0x7f1c32703710>}");
    assert(!(value == other), "different Map<int,Scalar>: {4294967295: <__main__.Scalar object at 0x7f1c327036d0>, 4294967296: <__main__.Scalar object at 0x7f1c32703710>} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__343() {
    
    Map<int,Any> value = {};
    
    Map<int,Any> copy = {};
    int other_ktmp0 = 0;
    int other_vtmp0_tmp = 2147483647;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Any>: {}");
    assert(!(value == other), "different Map<int,Any>: {} {0: unsafe(2147483647)}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__344() {
    int value_ktmp0 = 0;
    int value_vtmp0_tmp = 2147483647;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 0;
    int copy_vtmp0_tmp = 2147483647;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 1;
    float other_vtmp0_tmp = 0.0;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    int other_ktmp1 = 2;
    String other_vtmp1_tmp = "pi";
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Any>: {0: unsafe(2147483647)}");
    assert(!(value == other), "different Map<int,Any>: {0: unsafe(2147483647)} {1: unsafe(0.0), 2: unsafe(\"pi\")}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__345() {
    int value_ktmp0 = 1;
    float value_vtmp0_tmp = 0.0;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    int value_ktmp1 = 2;
    String value_vtmp1_tmp = "pi";
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 1;
    float copy_vtmp0_tmp = 0.0;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    int copy_ktmp1 = 2;
    String copy_vtmp1_tmp = "pi";
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Any> other = {};
    assert(value == copy, "equals Map<int,Any>: {1: unsafe(0.0), 2: unsafe(\"pi\")}");
    assert(!(value == other), "different Map<int,Any>: {1: unsafe(0.0), 2: unsafe(\"pi\")} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__346() {
    
    Map<int,Any> value = {};
    
    Map<int,Any> copy = {};
    int other_ktmp0 = 4294967297;
    bool other_vtmp0_tmp = false;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Any>: {}");
    assert(!(value == other), "different Map<int,Any>: {} {4294967297: unsafe(false)}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__347() {
    int value_ktmp0 = 4294967297;
    bool value_vtmp0_tmp = false;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967297;
    bool copy_vtmp0_tmp = false;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967298;
    bool other_vtmp0_tmp = true;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    int other_ktmp1 = 4294967299;
    int other_vtmp1_tmp = 2147483651;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<int,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Any>: {4294967297: unsafe(false)}");
    assert(!(value == other), "different Map<int,Any>: {4294967297: unsafe(false)} {4294967298: unsafe(true), 4294967299: unsafe(2147483651)}");
    assertEqual(true, true);
}
        
void test_Map_int_Any__348() {
    int value_ktmp0 = 4294967298;
    bool value_vtmp0_tmp = true;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    int value_ktmp1 = 4294967299;
    int value_vtmp1_tmp = 2147483651;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<int,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967298;
    bool copy_vtmp0_tmp = true;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    int copy_ktmp1 = 4294967299;
    int copy_vtmp1_tmp = 2147483651;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<int,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Any> other = {};
    assert(value == copy, "equals Map<int,Any>: {4294967298: unsafe(true), 4294967299: unsafe(2147483651)}");
    assert(!(value == other), "different Map<int,Any>: {4294967298: unsafe(true), 4294967299: unsafe(2147483651)} {}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__349() {
    
    Map<float,bool> value = {};
    
    Map<float,bool> copy = {};
    float other_ktmp0 = 0.0;
    bool other_vtmp0 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,bool>: {}");
    assert(!(value == other), "different Map<float,bool>: {} {0.0: true}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__350() {
    float value_ktmp0 = 0.0;
    bool value_vtmp0 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    bool copy_vtmp0 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0 = false;
    float other_ktmp1 = 3.14;
    bool other_vtmp1 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,bool>: {0.0: true}");
    assert(!(value == other), "different Map<float,bool>: {0.0: true} {-0.0: false, 3.14: true}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__351() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0 = false;
    float value_ktmp1 = 3.14;
    bool value_vtmp1 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0 = false;
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,bool> other = {};
    assert(value == copy, "equals Map<float,bool>: {-0.0: false, 3.14: true}");
    assert(!(value == other), "different Map<float,bool>: {-0.0: false, 3.14: true} {}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__352() {
    
    Map<float,bool> value = {};
    
    Map<float,bool> copy = {};
    float other_ktmp0 = 0.0;
    bool other_vtmp0 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,bool>: {}");
    assert(!(value == other), "different Map<float,bool>: {} {0.0: true}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__353() {
    float value_ktmp0 = 0.0;
    bool value_vtmp0 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    bool copy_vtmp0 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0 = false;
    float other_ktmp1 = 3.14;
    bool other_vtmp1 = true;
    Map<float,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,bool>: {0.0: true}");
    assert(!(value == other), "different Map<float,bool>: {0.0: true} {-0.0: false, 3.14: true}");
    assertEqual(true, true);
}
        
void test_Map_float_bool__354() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0 = false;
    float value_ktmp1 = 3.14;
    bool value_vtmp1 = true;
    Map<float,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0 = false;
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1 = true;
    Map<float,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,bool> other = {};
    assert(value == copy, "equals Map<float,bool>: {-0.0: false, 3.14: true}");
    assert(!(value == other), "different Map<float,bool>: {-0.0: false, 3.14: true} {}");
    assertEqual(true, true);
}
        
void test_Map_float_int__355() {
    
    Map<float,int> value = {};
    
    Map<float,int> copy = {};
    float other_ktmp0 = 0.0;
    int other_vtmp0 = 3;
    Map<float,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,int>: {}");
    assert(!(value == other), "different Map<float,int>: {} {0.0: 3}");
    assertEqual(true, true);
}
        
void test_Map_float_int__356() {
    float value_ktmp0 = 0.0;
    int value_vtmp0 = 3;
    Map<float,int> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    int copy_vtmp0 = 3;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0 = 2147483645;
    float other_ktmp1 = 3.14;
    int other_vtmp1 = 2147483646;
    Map<float,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,int>: {0.0: 3}");
    assert(!(value == other), "different Map<float,int>: {0.0: 3} {-0.0: 2147483645, 3.14: 2147483646}");
    assertEqual(true, true);
}
        
void test_Map_float_int__357() {
    float value_ktmp0 = -0.0;
    int value_vtmp0 = 2147483645;
    float value_ktmp1 = 3.14;
    int value_vtmp1 = 2147483646;
    Map<float,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0 = 2147483645;
    float copy_ktmp1 = 3.14;
    int copy_vtmp1 = 2147483646;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,int> other = {};
    assert(value == copy, "equals Map<float,int>: {-0.0: 2147483645, 3.14: 2147483646}");
    assert(!(value == other), "different Map<float,int>: {-0.0: 2147483645, 3.14: 2147483646} {}");
    assertEqual(true, true);
}
        
void test_Map_float_int__358() {
    
    Map<float,int> value = {};
    
    Map<float,int> copy = {};
    float other_ktmp0 = 0.0;
    int other_vtmp0 = 0;
    Map<float,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,int>: {}");
    assert(!(value == other), "different Map<float,int>: {} {0.0: 0}");
    assertEqual(true, true);
}
        
void test_Map_float_int__359() {
    float value_ktmp0 = 0.0;
    int value_vtmp0 = 0;
    Map<float,int> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    int copy_vtmp0 = 0;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0 = 1;
    float other_ktmp1 = 3.14;
    int other_vtmp1 = 2;
    Map<float,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,int>: {0.0: 0}");
    assert(!(value == other), "different Map<float,int>: {0.0: 0} {-0.0: 1, 3.14: 2}");
    assertEqual(true, true);
}
        
void test_Map_float_int__360() {
    float value_ktmp0 = -0.0;
    int value_vtmp0 = 1;
    float value_ktmp1 = 3.14;
    int value_vtmp1 = 2;
    Map<float,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0 = 1;
    float copy_ktmp1 = 3.14;
    int copy_vtmp1 = 2;
    Map<float,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,int> other = {};
    assert(value == copy, "equals Map<float,int>: {-0.0: 1, 3.14: 2}");
    assert(!(value == other), "different Map<float,int>: {-0.0: 1, 3.14: 2} {}");
    assertEqual(true, true);
}
        
void test_Map_float_float__361() {
    
    Map<float,float> value = {};
    
    Map<float,float> copy = {};
    float other_ktmp0 = 0.0;
    float other_vtmp0 = -0.0;
    Map<float,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,float>: {}");
    assert(!(value == other), "different Map<float,float>: {} {0.0: -0.0}");
    assertEqual(true, true);
}
        
void test_Map_float_float__362() {
    float value_ktmp0 = 0.0;
    float value_vtmp0 = -0.0;
    Map<float,float> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    float copy_vtmp0 = -0.0;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = 3.14;
    float other_vtmp0 = -0.0;
    float other_ktmp1 = 0.0;
    float other_vtmp1 = 3.14;
    Map<float,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,float>: {0.0: -0.0}");
    assert(!(value == other), "different Map<float,float>: {0.0: -0.0} {3.14: -0.0, 0.0: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_float_float__363() {
    float value_ktmp0 = 3.14;
    float value_vtmp0 = -0.0;
    float value_ktmp1 = 0.0;
    float value_vtmp1 = 3.14;
    Map<float,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = 3.14;
    float copy_vtmp0 = -0.0;
    float copy_ktmp1 = 0.0;
    float copy_vtmp1 = 3.14;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,float> other = {};
    assert(value == copy, "equals Map<float,float>: {3.14: -0.0, 0.0: 3.14}");
    assert(!(value == other), "different Map<float,float>: {3.14: -0.0, 0.0: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_float_float__364() {
    
    Map<float,float> value = {};
    
    Map<float,float> copy = {};
    float other_ktmp0 = 0.0;
    float other_vtmp0 = -0.0;
    Map<float,float> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,float>: {}");
    assert(!(value == other), "different Map<float,float>: {} {0.0: -0.0}");
    assertEqual(true, true);
}
        
void test_Map_float_float__365() {
    float value_ktmp0 = 0.0;
    float value_vtmp0 = -0.0;
    Map<float,float> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    float copy_vtmp0 = -0.0;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = 3.14;
    float other_vtmp0 = -0.0;
    float other_ktmp1 = 0.0;
    float other_vtmp1 = 3.14;
    Map<float,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,float>: {0.0: -0.0}");
    assert(!(value == other), "different Map<float,float>: {0.0: -0.0} {3.14: -0.0, 0.0: 3.14}");
    assertEqual(true, true);
}
        
void test_Map_float_float__366() {
    float value_ktmp0 = 3.14;
    float value_vtmp0 = -0.0;
    float value_ktmp1 = 0.0;
    float value_vtmp1 = 3.14;
    Map<float,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = 3.14;
    float copy_vtmp0 = -0.0;
    float copy_ktmp1 = 0.0;
    float copy_vtmp1 = 3.14;
    Map<float,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,float> other = {};
    assert(value == copy, "equals Map<float,float>: {3.14: -0.0, 0.0: 3.14}");
    assert(!(value == other), "different Map<float,float>: {3.14: -0.0, 0.0: 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_float_String__367() {
    
    Map<float,String> value = {};
    
    Map<float,String> copy = {};
    float other_ktmp0 = 0.0;
    String other_vtmp0 = "pi";
    Map<float,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,String>: {}");
    assert(!(value == other), "different Map<float,String>: {} {0.0: \"pi\"}");
    assertEqual(true, true);
}
        
void test_Map_float_String__368() {
    float value_ktmp0 = 0.0;
    String value_vtmp0 = "pi";
    Map<float,String> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    String copy_vtmp0 = "pi";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0 = "pie";
    float other_ktmp1 = 3.14;
    String other_vtmp1 = " ";
    Map<float,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,String>: {0.0: \"pi\"}");
    assert(!(value == other), "different Map<float,String>: {0.0: \"pi\"} {-0.0: \"pie\", 3.14: \" \"}");
    assertEqual(true, true);
}
        
void test_Map_float_String__369() {
    float value_ktmp0 = -0.0;
    String value_vtmp0 = "pie";
    float value_ktmp1 = 3.14;
    String value_vtmp1 = " ";
    Map<float,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0 = "pie";
    float copy_ktmp1 = 3.14;
    String copy_vtmp1 = " ";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,String> other = {};
    assert(value == copy, "equals Map<float,String>: {-0.0: \"pie\", 3.14: \" \"}");
    assert(!(value == other), "different Map<float,String>: {-0.0: \"pie\", 3.14: \" \"} {}");
    assertEqual(true, true);
}
        
void test_Map_float_String__370() {
    
    Map<float,String> value = {};
    
    Map<float,String> copy = {};
    float other_ktmp0 = 0.0;
    String other_vtmp0 = "pie";
    Map<float,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,String>: {}");
    assert(!(value == other), "different Map<float,String>: {} {0.0: \"pie\"}");
    assertEqual(true, true);
}
        
void test_Map_float_String__371() {
    float value_ktmp0 = 0.0;
    String value_vtmp0 = "pie";
    Map<float,String> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    String copy_vtmp0 = "pie";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0 = " ";
    float other_ktmp1 = 3.14;
    String other_vtmp1 = "\n";
    Map<float,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,String>: {0.0: \"pie\"}");
    assert(!(value == other), "different Map<float,String>: {0.0: \"pie\"} {-0.0: \" \", 3.14: \"\n\"}");
    assertEqual(true, true);
}
        
void test_Map_float_String__372() {
    float value_ktmp0 = -0.0;
    String value_vtmp0 = " ";
    float value_ktmp1 = 3.14;
    String value_vtmp1 = "\n";
    Map<float,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0 = " ";
    float copy_ktmp1 = 3.14;
    String copy_vtmp1 = "\n";
    Map<float,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,String> other = {};
    assert(value == copy, "equals Map<float,String>: {-0.0: \" \", 3.14: \"\n\"}");
    assert(!(value == other), "different Map<float,String>: {-0.0: \" \", 3.14: \"\n\"} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__373() {
    
    Map<float,Scalar> value = {};
    
    Map<float,Scalar> copy = {};
    float other_ktmp0 = 0.0;
    Scalar other_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Scalar>: {}");
    assert(!(value == other), "different Map<float,Scalar>: {} {0.0: <__main__.Scalar object at 0x7f1c32703690>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__374() {
    float value_ktmp0 = 0.0;
    Scalar value_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    Scalar copy_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0 = unsafe("\n").asScalar();
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f1c32703690>}");
    assert(!(value == other), "different Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f1c32703690>} {-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__375() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0 = unsafe("\n").asScalar();
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0 = unsafe("\n").asScalar();
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Scalar> other = {};
    assert(value == copy, "equals Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>}");
    assert(!(value == other), "different Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__376() {
    
    Map<float,Scalar> value = {};
    
    Map<float,Scalar> copy = {};
    float other_ktmp0 = 0.0;
    Scalar other_vtmp0 = unsafe(3).asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Scalar>: {}");
    assert(!(value == other), "different Map<float,Scalar>: {} {0.0: <__main__.Scalar object at 0x7f1c32703750>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__377() {
    float value_ktmp0 = 0.0;
    Scalar value_vtmp0 = unsafe(3).asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    Scalar copy_vtmp0 = unsafe(3).asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0 = unsafe(0.0).asScalar();
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1 = unsafe("asdf\n").asScalar();
    Map<float,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f1c32703750>}");
    assert(!(value == other), "different Map<float,Scalar>: {0.0: <__main__.Scalar object at 0x7f1c32703750>} {-0.0: <__main__.Scalar object at 0x7f1c32703790>, 3.14: <__main__.Scalar object at 0x7f1c327037d0>}");
    assertEqual(true, true);
}
        
void test_Map_float_Scalar__378() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0 = unsafe(0.0).asScalar();
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1 = unsafe("asdf\n").asScalar();
    Map<float,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0 = unsafe(0.0).asScalar();
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1 = unsafe("asdf\n").asScalar();
    Map<float,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Scalar> other = {};
    assert(value == copy, "equals Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f1c32703790>, 3.14: <__main__.Scalar object at 0x7f1c327037d0>}");
    assert(!(value == other), "different Map<float,Scalar>: {-0.0: <__main__.Scalar object at 0x7f1c32703790>, 3.14: <__main__.Scalar object at 0x7f1c327037d0>} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Any__379() {
    
    Map<float,Any> value = {};
    
    Map<float,Any> copy = {};
    float other_ktmp0 = 0.0;
    int other_vtmp0_tmp = -3;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<float,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Any>: {}");
    assert(!(value == other), "different Map<float,Any>: {} {0.0: unsafe(-3)}");
    assertEqual(true, true);
}
        
void test_Map_float_Any__380() {
    float value_ktmp0 = 0.0;
    int value_vtmp0_tmp = -3;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<float,Any> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    int copy_vtmp0_tmp = -3;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<float,Any> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_tmp = false;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    float other_ktmp1 = 3.14;
    int other_vtmp1_tmp = 2147483648;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<float,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Any>: {0.0: unsafe(-3)}");
    assert(!(value == other), "different Map<float,Any>: {0.0: unsafe(-3)} {-0.0: unsafe(false), 3.14: unsafe(2147483648)}");
    assertEqual(true, true);
}
        
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
        