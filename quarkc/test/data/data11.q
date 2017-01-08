
void test_Map_Scalar_List_int___1001() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    List<int> value_vtmp0 = [];
    Map<Scalar,List<int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    List<int> copy_vtmp0 = [];
    Map<Scalar,List<int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    int other_vtmp0_tmp0 = -3;
    List<int> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_tmp0 = -2;
    int other_vtmp1_tmp1 = -1;
    List<int> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f1c32703690>: []}");
    assert(!(value == other), "different Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f1c32703690>: []} {<__main__.Scalar object at 0x7f1c327036d0>: [-3], <__main__.Scalar object at 0x7f1c32703710>: [-2, -1]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_int___1002() {
    Scalar value_ktmp0 = unsafe("\n").asScalar();
    int value_vtmp0_tmp0 = -3;
    List<int> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_tmp0 = -2;
    int value_vtmp1_tmp1 = -1;
    List<int> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("\n").asScalar();
    int copy_vtmp0_tmp0 = -3;
    List<int> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_tmp0 = -2;
    int copy_vtmp1_tmp1 = -1;
    List<int> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<int>> other = {};
    assert(value == copy, "equals Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f1c327036d0>: [-3], <__main__.Scalar object at 0x7f1c32703710>: [-2, -1]}");
    assert(!(value == other), "different Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f1c327036d0>: [-3], <__main__.Scalar object at 0x7f1c32703710>: [-2, -1]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_float___1003() {
    
    Map<Scalar,List<float>> value = {};
    
    Map<Scalar,List<float>> copy = {};
    Scalar other_ktmp0 = unsafe(3).asScalar();
    
    List<float> other_vtmp0 = [];
    Map<Scalar,List<float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<float>>: {}");
    assert(!(value == other), "different Map<Scalar,List<float>>: {} {<__main__.Scalar object at 0x7f1c32703750>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_float___1004() {
    Scalar value_ktmp0 = unsafe(3).asScalar();
    
    List<float> value_vtmp0 = [];
    Map<Scalar,List<float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3).asScalar();
    
    List<float> copy_vtmp0 = [];
    Map<Scalar,List<float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp0_tmp0 = 0.0;
    List<float> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe("asdf\n").asScalar();
    float other_vtmp1_tmp0 = -0.0;
    float other_vtmp1_tmp1 = 3.14;
    List<float> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f1c32703750>: []}");
    assert(!(value == other), "different Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f1c32703750>: []} {<__main__.Scalar object at 0x7f1c32703790>: [0.0], <__main__.Scalar object at 0x7f1c327037d0>: [-0.0, 3.14]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_float___1005() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp0_tmp0 = 0.0;
    List<float> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe("asdf\n").asScalar();
    float value_vtmp1_tmp0 = -0.0;
    float value_vtmp1_tmp1 = 3.14;
    List<float> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp0_tmp0 = 0.0;
    List<float> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe("asdf\n").asScalar();
    float copy_vtmp1_tmp0 = -0.0;
    float copy_vtmp1_tmp1 = 3.14;
    List<float> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<float>> other = {};
    assert(value == copy, "equals Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f1c32703790>: [0.0], <__main__.Scalar object at 0x7f1c327037d0>: [-0.0, 3.14]}");
    assert(!(value == other), "different Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f1c32703790>: [0.0], <__main__.Scalar object at 0x7f1c327037d0>: [-0.0, 3.14]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_String___1006() {
    
    Map<Scalar,List<String>> value = {};
    
    Map<Scalar,List<String>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    List<String> other_vtmp0 = [];
    Map<Scalar,List<String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<String>>: {}");
    assert(!(value == other), "different Map<Scalar,List<String>>: {} {<__main__.Scalar object at 0x7f1c32703810>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_String___1007() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    List<String> value_vtmp0 = [];
    Map<Scalar,List<String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    List<String> copy_vtmp0 = [];
    Map<Scalar,List<String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(2147483645).asScalar();
    String other_vtmp0_tmp0 = "";
    List<String> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_tmp0 = "Hello World!";
    String other_vtmp1_tmp1 = "pi";
    List<String> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f1c32703810>: []}");
    assert(!(value == other), "different Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f1c32703810>: []} {<__main__.Scalar object at 0x7f1c32703850>: [\"\"], <__main__.Scalar object at 0x7f1c32703890>: [\"Hello World!\", \"pi\"]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_String___1008() {
    Scalar value_ktmp0 = unsafe(2147483645).asScalar();
    String value_vtmp0_tmp0 = "";
    List<String> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_tmp0 = "Hello World!";
    String value_vtmp1_tmp1 = "pi";
    List<String> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(2147483645).asScalar();
    String copy_vtmp0_tmp0 = "";
    List<String> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_tmp0 = "Hello World!";
    String copy_vtmp1_tmp1 = "pi";
    List<String> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<String>> other = {};
    assert(value == copy, "equals Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f1c32703850>: [\"\"], <__main__.Scalar object at 0x7f1c32703890>: [\"Hello World!\", \"pi\"]}");
    assert(!(value == other), "different Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f1c32703850>: [\"\"], <__main__.Scalar object at 0x7f1c32703890>: [\"Hello World!\", \"pi\"]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Scalar___1009() {
    
    Map<Scalar,List<Scalar>> value = {};
    
    Map<Scalar,List<Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    
    List<Scalar> other_vtmp0 = [];
    Map<Scalar,List<Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,List<Scalar>>: {} {<__main__.Scalar object at 0x7f1c327038d0>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Scalar___1010() {
    Scalar value_ktmp0 = unsafe("").asScalar();
    
    List<Scalar> value_vtmp0 = [];
    Map<Scalar,List<Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("").asScalar();
    
    List<Scalar> copy_vtmp0 = [];
    Map<Scalar,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    Scalar other_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe(true).asScalar();
    Scalar other_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f1c327038d0>: []}");
    assert(!(value == other), "different Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f1c327038d0>: []} {<__main__.Scalar object at 0x7f1c32703910>: [unsafe(0).asScalar()], <__main__.Scalar object at 0x7f1c326f7f90>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Scalar___1011() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    Scalar value_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe(true).asScalar();
    Scalar value_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar value_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    Scalar copy_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    Scalar copy_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f1c32703910>: [unsafe(0).asScalar()], <__main__.Scalar object at 0x7f1c326f7f90>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assert(!(value == other), "different Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f1c32703910>: [unsafe(0).asScalar()], <__main__.Scalar object at 0x7f1c326f7f90>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Any___1012() {
    
    Map<Scalar,List<Any>> value = {};
    
    Map<Scalar,List<Any>> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    
    List<Any> other_vtmp0 = [];
    Map<Scalar,List<Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<Any>>: {}");
    assert(!(value == other), "different Map<Scalar,List<Any>>: {} {<__main__.Scalar object at 0x7f1c326f74d0>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Any___1013() {
    Scalar value_ktmp0 = unsafe(-3).asScalar();
    
    List<Any> value_vtmp0 = [];
    Map<Scalar,List<Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(-3).asScalar();
    
    List<Any> copy_vtmp0 = [];
    Map<Scalar,List<Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    bool other_vtmp0_tmp0_tmp = false;
    Any other_vtmp0_tmp0 = unsafe(other_vtmp0_tmp0_tmp);
    List<Any> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe("").asScalar();
    int other_vtmp1_tmp0_tmp = 2147483646;
    Any other_vtmp1_tmp0 = unsafe(other_vtmp1_tmp0_tmp);
    float other_vtmp1_tmp1_tmp = 3.14;
    Any other_vtmp1_tmp1 = unsafe(other_vtmp1_tmp1_tmp);
    List<Any> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f1c326f74d0>: []}");
    assert(!(value == other), "different Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f1c326f74d0>: []} {<__main__.Scalar object at 0x7f1c32703110>: [unsafe(false)], <__main__.Scalar object at 0x7f1c32703090>: [unsafe(2147483646), unsafe(3.14)]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Any___1014() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    bool value_vtmp0_tmp0_tmp = false;
    Any value_vtmp0_tmp0 = unsafe(value_vtmp0_tmp0_tmp);
    List<Any> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe("").asScalar();
    int value_vtmp1_tmp0_tmp = 2147483646;
    Any value_vtmp1_tmp0 = unsafe(value_vtmp1_tmp0_tmp);
    float value_vtmp1_tmp1_tmp = 3.14;
    Any value_vtmp1_tmp1 = unsafe(value_vtmp1_tmp1_tmp);
    List<Any> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    bool copy_vtmp0_tmp0_tmp = false;
    Any copy_vtmp0_tmp0 = unsafe(copy_vtmp0_tmp0_tmp);
    List<Any> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe("").asScalar();
    int copy_vtmp1_tmp0_tmp = 2147483646;
    Any copy_vtmp1_tmp0 = unsafe(copy_vtmp1_tmp0_tmp);
    float copy_vtmp1_tmp1_tmp = 3.14;
    Any copy_vtmp1_tmp1 = unsafe(copy_vtmp1_tmp1_tmp);
    List<Any> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<Any>> other = {};
    assert(value == copy, "equals Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f1c32703110>: [unsafe(false)], <__main__.Scalar object at 0x7f1c32703090>: [unsafe(2147483646), unsafe(3.14)]}");
    assert(!(value == other), "different Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f1c32703110>: [unsafe(false)], <__main__.Scalar object at 0x7f1c32703090>: [unsafe(2147483646), unsafe(3.14)]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_bool___1015() {
    
    Map<Scalar,Map<bool,bool>> value = {};
    
    Map<Scalar,Map<bool,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<bool,bool> other_vtmp0 = {};
    Map<Scalar,Map<bool,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,bool>>: {} {<__main__.Scalar object at 0x7f1c327031d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_bool___1016() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<bool,bool> value_vtmp0 = {};
    Map<Scalar,Map<bool,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<bool,bool> copy_vtmp0 = {};
    Map<Scalar,Map<bool,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-2).asScalar();
    bool other_vtmp0_ktmp0 = true;
    bool other_vtmp0_vtmp0 = false;
    Map<bool,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_ktmp0 = true;
    bool other_vtmp1_vtmp0 = true;
    bool other_vtmp1_ktmp1 = false;
    bool other_vtmp1_vtmp1 = false;
    Map<bool,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f1c327031d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f1c327031d0>: {}} {<__main__.Scalar object at 0x7f1c32703210>: {true: false}, <__main__.Scalar object at 0x7f1c32703290>: {true: true, false: false}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_bool___1017() {
    Scalar value_ktmp0 = unsafe(-2).asScalar();
    bool value_vtmp0_ktmp0 = true;
    bool value_vtmp0_vtmp0 = false;
    Map<bool,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_ktmp0 = true;
    bool value_vtmp1_vtmp0 = true;
    bool value_vtmp1_ktmp1 = false;
    bool value_vtmp1_vtmp1 = false;
    Map<bool,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-2).asScalar();
    bool copy_vtmp0_ktmp0 = true;
    bool copy_vtmp0_vtmp0 = false;
    Map<bool,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_ktmp0 = true;
    bool copy_vtmp1_vtmp0 = true;
    bool copy_vtmp1_ktmp1 = false;
    bool copy_vtmp1_vtmp1 = false;
    Map<bool,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f1c32703210>: {true: false}, <__main__.Scalar object at 0x7f1c32703290>: {true: true, false: false}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f1c32703210>: {true: false}, <__main__.Scalar object at 0x7f1c32703290>: {true: true, false: false}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_int___1018() {
    
    Map<Scalar,Map<bool,int>> value = {};
    
    Map<Scalar,Map<bool,int>> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<bool,int> other_vtmp0 = {};
    Map<Scalar,Map<bool,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,int>>: {} {<__main__.Scalar object at 0x7f1c327032d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_int___1019() {
    Scalar value_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<bool,int> value_vtmp0 = {};
    Map<Scalar,Map<bool,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<bool,int> copy_vtmp0 = {};
    Map<Scalar,Map<bool,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    bool other_vtmp0_ktmp0 = true;
    int other_vtmp0_vtmp0 = 0;
    Map<bool,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-1).asScalar();
    bool other_vtmp1_ktmp0 = false;
    int other_vtmp1_vtmp0 = 1;
    bool other_vtmp1_ktmp1 = true;
    int other_vtmp1_vtmp1 = 2;
    Map<bool,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f1c327032d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f1c327032d0>: {}} {<__main__.Scalar object at 0x7f1c32703310>: {true: 0}, <__main__.Scalar object at 0x7f1c32703350>: {false: 1, true: 2}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_int___1020() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    bool value_vtmp0_ktmp0 = true;
    int value_vtmp0_vtmp0 = 0;
    Map<bool,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-1).asScalar();
    bool value_vtmp1_ktmp0 = false;
    int value_vtmp1_vtmp0 = 1;
    bool value_vtmp1_ktmp1 = true;
    int value_vtmp1_vtmp1 = 2;
    Map<bool,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    bool copy_vtmp0_ktmp0 = true;
    int copy_vtmp0_vtmp0 = 0;
    Map<bool,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-1).asScalar();
    bool copy_vtmp1_ktmp0 = false;
    int copy_vtmp1_vtmp0 = 1;
    bool copy_vtmp1_ktmp1 = true;
    int copy_vtmp1_vtmp1 = 2;
    Map<bool,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f1c32703310>: {true: 0}, <__main__.Scalar object at 0x7f1c32703350>: {false: 1, true: 2}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f1c32703310>: {true: 0}, <__main__.Scalar object at 0x7f1c32703350>: {false: 1, true: 2}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_float___1021() {
    
    Map<Scalar,Map<bool,float>> value = {};
    
    Map<Scalar,Map<bool,float>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<bool,float> other_vtmp0 = {};
    Map<Scalar,Map<bool,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,float>>: {} {<__main__.Scalar object at 0x7f1c32703390>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_float___1022() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<bool,float> value_vtmp0 = {};
    Map<Scalar,Map<bool,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<bool,float> copy_vtmp0 = {};
    Map<Scalar,Map<bool,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("pi").asScalar();
    bool other_vtmp0_ktmp0 = false;
    float other_vtmp0_vtmp0 = 0.0;
    Map<bool,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(false).asScalar();
    bool other_vtmp1_ktmp0 = true;
    float other_vtmp1_vtmp0 = -0.0;
    bool other_vtmp1_ktmp1 = false;
    float other_vtmp1_vtmp1 = 3.14;
    Map<bool,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f1c32703390>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f1c32703390>: {}} {<__main__.Scalar object at 0x7f1c327033d0>: {false: 0.0}, <__main__.Scalar object at 0x7f1c32703410>: {true: -0.0, false: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_float___1023() {
    Scalar value_ktmp0 = unsafe("pi").asScalar();
    bool value_vtmp0_ktmp0 = false;
    float value_vtmp0_vtmp0 = 0.0;
    Map<bool,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(false).asScalar();
    bool value_vtmp1_ktmp0 = true;
    float value_vtmp1_vtmp0 = -0.0;
    bool value_vtmp1_ktmp1 = false;
    float value_vtmp1_vtmp1 = 3.14;
    Map<bool,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("pi").asScalar();
    bool copy_vtmp0_ktmp0 = false;
    float copy_vtmp0_vtmp0 = 0.0;
    Map<bool,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(false).asScalar();
    bool copy_vtmp1_ktmp0 = true;
    float copy_vtmp1_vtmp0 = -0.0;
    bool copy_vtmp1_ktmp1 = false;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<bool,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f1c327033d0>: {false: 0.0}, <__main__.Scalar object at 0x7f1c32703410>: {true: -0.0, false: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f1c327033d0>: {false: 0.0}, <__main__.Scalar object at 0x7f1c32703410>: {true: -0.0, false: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_String___1024() {
    
    Map<Scalar,Map<bool,String>> value = {};
    
    Map<Scalar,Map<bool,String>> copy = {};
    Scalar other_ktmp0 = unsafe(0).asScalar();
    
    Map<bool,String> other_vtmp0 = {};
    Map<Scalar,Map<bool,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,String>>: {} {<__main__.Scalar object at 0x7f1c32703450>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_String___1025() {
    Scalar value_ktmp0 = unsafe(0).asScalar();
    
    Map<bool,String> value_vtmp0 = {};
    Map<Scalar,Map<bool,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(0).asScalar();
    
    Map<bool,String> copy_vtmp0 = {};
    Map<Scalar,Map<bool,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    bool other_vtmp0_ktmp0 = true;
    String other_vtmp0_vtmp0 = "pie";
    Map<bool,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("pie").asScalar();
    bool other_vtmp1_ktmp0 = false;
    String other_vtmp1_vtmp0 = " ";
    bool other_vtmp1_ktmp1 = true;
    String other_vtmp1_vtmp1 = "\n";
    Map<bool,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f1c32703450>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f1c32703450>: {}} {<__main__.Scalar object at 0x7f1c32703490>: {true: \"pie\"}, <__main__.Scalar object at 0x7f1c327034d0>: {false: \" \", true: \"\n\"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_String___1026() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    bool value_vtmp0_ktmp0 = true;
    String value_vtmp0_vtmp0 = "pie";
    Map<bool,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("pie").asScalar();
    bool value_vtmp1_ktmp0 = false;
    String value_vtmp1_vtmp0 = " ";
    bool value_vtmp1_ktmp1 = true;
    String value_vtmp1_vtmp1 = "\n";
    Map<bool,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    bool copy_vtmp0_ktmp0 = true;
    String copy_vtmp0_vtmp0 = "pie";
    Map<bool,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("pie").asScalar();
    bool copy_vtmp1_ktmp0 = false;
    String copy_vtmp1_vtmp0 = " ";
    bool copy_vtmp1_ktmp1 = true;
    String copy_vtmp1_vtmp1 = "\n";
    Map<bool,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f1c32703490>: {true: \"pie\"}, <__main__.Scalar object at 0x7f1c327034d0>: {false: \" \", true: \"\n\"}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f1c32703490>: {true: \"pie\"}, <__main__.Scalar object at 0x7f1c327034d0>: {false: \" \", true: \"\n\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Scalar___1027() {
    
    Map<Scalar,Map<bool,Scalar>> value = {};
    
    Map<Scalar,Map<bool,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    
    Map<bool,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<bool,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Scalar>>: {} {<__main__.Scalar object at 0x7f1c32703510>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Scalar___1028() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    
    Map<bool,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<bool,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    
    Map<bool,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<bool,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(1).asScalar();
    bool other_vtmp0_ktmp0 = false;
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_ktmp0 = true;
    Scalar other_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool other_vtmp1_ktmp1 = false;
    Scalar other_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f1c32703510>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f1c32703510>: {}} {<__main__.Scalar object at 0x7f1c32703550>: {false: <__main__.Scalar object at 0x7f1c32703510>}, <__main__.Scalar object at 0x7f1c32703590>: {true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Scalar___1029() {
    Scalar value_ktmp0 = unsafe(1).asScalar();
    bool value_vtmp0_ktmp0 = false;
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_ktmp0 = true;
    Scalar value_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool value_vtmp1_ktmp1 = false;
    Scalar value_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(1).asScalar();
    bool copy_vtmp0_ktmp0 = false;
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_ktmp0 = true;
    Scalar copy_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool copy_vtmp1_ktmp1 = false;
    Scalar copy_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f1c32703550>: {false: <__main__.Scalar object at 0x7f1c32703510>}, <__main__.Scalar object at 0x7f1c32703590>: {true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f1c32703550>: {false: <__main__.Scalar object at 0x7f1c32703510>}, <__main__.Scalar object at 0x7f1c32703590>: {true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Any___1030() {
    
    Map<Scalar,Map<bool,Any>> value = {};
    
    Map<Scalar,Map<bool,Any>> copy = {};
    Scalar other_ktmp0 = unsafe(" ").asScalar();
    
    Map<bool,Any> other_vtmp0 = {};
    Map<Scalar,Map<bool,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Any>>: {} {<__main__.Scalar object at 0x7f1c327035d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Any___1031() {
    Scalar value_ktmp0 = unsafe(" ").asScalar();
    
    Map<bool,Any> value_vtmp0 = {};
    Map<Scalar,Map<bool,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(" ").asScalar();
    
    Map<bool,Any> copy_vtmp0 = {};
    Map<Scalar,Map<bool,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_ktmp0 = true;
    String other_vtmp0_vtmp0_tmp = "Hello World!";
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<bool,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(2).asScalar();
    bool other_vtmp1_ktmp0 = false;
    bool other_vtmp1_vtmp0_tmp = true;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    bool other_vtmp1_ktmp1 = true;
    bool other_vtmp1_vtmp1_tmp = true;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<bool,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f1c327035d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f1c327035d0>: {}} {<__main__.Scalar object at 0x7f1c32703610>: {true: unsafe(\"Hello World!\")}, <__main__.Scalar object at 0x7f1c32703650>: {false: unsafe(true), true: unsafe(true)}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Any___1032() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_ktmp0 = true;
    String value_vtmp0_vtmp0_tmp = "Hello World!";
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<bool,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(2).asScalar();
    bool value_vtmp1_ktmp0 = false;
    bool value_vtmp1_vtmp0_tmp = true;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    bool value_vtmp1_ktmp1 = true;
    bool value_vtmp1_vtmp1_tmp = true;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<bool,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_ktmp0 = true;
    String copy_vtmp0_vtmp0_tmp = "Hello World!";
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<bool,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(2).asScalar();
    bool copy_vtmp1_ktmp0 = false;
    bool copy_vtmp1_vtmp0_tmp = true;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    bool copy_vtmp1_ktmp1 = true;
    bool copy_vtmp1_vtmp1_tmp = true;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<bool,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f1c32703610>: {true: unsafe(\"Hello World!\")}, <__main__.Scalar object at 0x7f1c32703650>: {false: unsafe(true), true: unsafe(true)}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f1c32703610>: {true: unsafe(\"Hello World!\")}, <__main__.Scalar object at 0x7f1c32703650>: {false: unsafe(true), true: unsafe(true)}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_bool___1033() {
    
    Map<Scalar,Map<int,bool>> value = {};
    
    Map<Scalar,Map<int,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<int,bool> other_vtmp0 = {};
    Map<Scalar,Map<int,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,bool>>: {} {<__main__.Scalar object at 0x7f1c32703690>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_bool___1034() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<int,bool> value_vtmp0 = {};
    Map<Scalar,Map<int,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<int,bool> copy_vtmp0 = {};
    Map<Scalar,Map<int,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    int other_vtmp0_ktmp0 = 3;
    bool other_vtmp0_vtmp0 = false;
    Map<int,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_ktmp0 = 2147483645;
    bool other_vtmp1_vtmp0 = true;
    int other_vtmp1_ktmp1 = 2147483646;
    bool other_vtmp1_vtmp1 = false;
    Map<int,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f1c32703690>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f1c32703690>: {}} {<__main__.Scalar object at 0x7f1c327036d0>: {3: false}, <__main__.Scalar object at 0x7f1c32703710>: {2147483645: true, 2147483646: false}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_bool___1035() {
    Scalar value_ktmp0 = unsafe("\n").asScalar();
    int value_vtmp0_ktmp0 = 3;
    bool value_vtmp0_vtmp0 = false;
    Map<int,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_ktmp0 = 2147483645;
    bool value_vtmp1_vtmp0 = true;
    int value_vtmp1_ktmp1 = 2147483646;
    bool value_vtmp1_vtmp1 = false;
    Map<int,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("\n").asScalar();
    int copy_vtmp0_ktmp0 = 3;
    bool copy_vtmp0_vtmp0 = false;
    Map<int,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_ktmp0 = 2147483645;
    bool copy_vtmp1_vtmp0 = true;
    int copy_vtmp1_ktmp1 = 2147483646;
    bool copy_vtmp1_vtmp1 = false;
    Map<int,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f1c327036d0>: {3: false}, <__main__.Scalar object at 0x7f1c32703710>: {2147483645: true, 2147483646: false}}");
    assert(!(value == other), "different Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f1c327036d0>: {3: false}, <__main__.Scalar object at 0x7f1c32703710>: {2147483645: true, 2147483646: false}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_int___1036() {
    
    Map<Scalar,Map<int,int>> value = {};
    
    Map<Scalar,Map<int,int>> copy = {};
    Scalar other_ktmp0 = unsafe(3).asScalar();
    
    Map<int,int> other_vtmp0 = {};
    Map<Scalar,Map<int,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,int>>: {} {<__main__.Scalar object at 0x7f1c32703750>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_int___1037() {
    Scalar value_ktmp0 = unsafe(3).asScalar();
    
    Map<int,int> value_vtmp0 = {};
    Map<Scalar,Map<int,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3).asScalar();
    
    Map<int,int> copy_vtmp0 = {};
    Map<Scalar,Map<int,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp0_ktmp0 = 2147483647;
    int other_vtmp0_vtmp0 = 2147483648;
    Map<int,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("asdf\n").asScalar();
    int other_vtmp1_ktmp0 = 2147483649;
    int other_vtmp1_vtmp0 = 2147483651;
    int other_vtmp1_ktmp1 = 2147483650;
    int other_vtmp1_vtmp1 = 4294967293;
    Map<int,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f1c32703750>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f1c32703750>: {}} {<__main__.Scalar object at 0x7f1c32703790>: {2147483647: 2147483648}, <__main__.Scalar object at 0x7f1c327037d0>: {2147483649: 2147483651, 2147483650: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_int___1038() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp0_ktmp0 = 2147483647;
    int value_vtmp0_vtmp0 = 2147483648;
    Map<int,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("asdf\n").asScalar();
    int value_vtmp1_ktmp0 = 2147483649;
    int value_vtmp1_vtmp0 = 2147483651;
    int value_vtmp1_ktmp1 = 2147483650;
    int value_vtmp1_vtmp1 = 4294967293;
    Map<int,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp0_ktmp0 = 2147483647;
    int copy_vtmp0_vtmp0 = 2147483648;
    Map<int,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("asdf\n").asScalar();
    int copy_vtmp1_ktmp0 = 2147483649;
    int copy_vtmp1_vtmp0 = 2147483651;
    int copy_vtmp1_ktmp1 = 2147483650;
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<int,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f1c32703790>: {2147483647: 2147483648}, <__main__.Scalar object at 0x7f1c327037d0>: {2147483649: 2147483651, 2147483650: 4294967293}}");
    assert(!(value == other), "different Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f1c32703790>: {2147483647: 2147483648}, <__main__.Scalar object at 0x7f1c327037d0>: {2147483649: 2147483651, 2147483650: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_float___1039() {
    
    Map<Scalar,Map<int,float>> value = {};
    
    Map<Scalar,Map<int,float>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<int,float> other_vtmp0 = {};
    Map<Scalar,Map<int,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,float>>: {} {<__main__.Scalar object at 0x7f1c32703810>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_float___1040() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<int,float> value_vtmp0 = {};
    Map<Scalar,Map<int,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<int,float> copy_vtmp0 = {};
    Map<Scalar,Map<int,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(2147483645).asScalar();
    int other_vtmp0_ktmp0 = 4294967294;
    float other_vtmp0_vtmp0 = 0.0;
    Map<int,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    int other_vtmp1_ktmp0 = 4294967295;
    float other_vtmp1_vtmp0 = -0.0;
    int other_vtmp1_ktmp1 = 4294967296;
    float other_vtmp1_vtmp1 = 3.14;
    Map<int,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f1c32703810>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f1c32703810>: {}} {<__main__.Scalar object at 0x7f1c32703850>: {4294967294: 0.0}, <__main__.Scalar object at 0x7f1c32703890>: {4294967295: -0.0, 4294967296: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_float___1041() {
    Scalar value_ktmp0 = unsafe(2147483645).asScalar();
    int value_vtmp0_ktmp0 = 4294967294;
    float value_vtmp0_vtmp0 = 0.0;
    Map<int,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    int value_vtmp1_ktmp0 = 4294967295;
    float value_vtmp1_vtmp0 = -0.0;
    int value_vtmp1_ktmp1 = 4294967296;
    float value_vtmp1_vtmp1 = 3.14;
    Map<int,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(2147483645).asScalar();
    int copy_vtmp0_ktmp0 = 4294967294;
    float copy_vtmp0_vtmp0 = 0.0;
    Map<int,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    int copy_vtmp1_ktmp0 = 4294967295;
    float copy_vtmp1_vtmp0 = -0.0;
    int copy_vtmp1_ktmp1 = 4294967296;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<int,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f1c32703850>: {4294967294: 0.0}, <__main__.Scalar object at 0x7f1c32703890>: {4294967295: -0.0, 4294967296: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f1c32703850>: {4294967294: 0.0}, <__main__.Scalar object at 0x7f1c32703890>: {4294967295: -0.0, 4294967296: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_String___1042() {
    
    Map<Scalar,Map<int,String>> value = {};
    
    Map<Scalar,Map<int,String>> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    
    Map<int,String> other_vtmp0 = {};
    Map<Scalar,Map<int,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,String>>: {} {<__main__.Scalar object at 0x7f1c327038d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_String___1043() {
    Scalar value_ktmp0 = unsafe("").asScalar();
    
    Map<int,String> value_vtmp0 = {};
    Map<Scalar,Map<int,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("").asScalar();
    
    Map<int,String> copy_vtmp0 = {};
    Map<Scalar,Map<int,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    int other_vtmp0_ktmp0 = 4294967297;
    String other_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_ktmp0 = 4294967298;
    String other_vtmp1_vtmp0 = "";
    int other_vtmp1_ktmp1 = 4294967299;
    String other_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f1c327038d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f1c327038d0>: {}} {<__main__.Scalar object at 0x7f1c32703910>: {4294967297: \"asdf\n\"}, <__main__.Scalar object at 0x7f1c326f7f90>: {4294967298: \"\", 4294967299: \"Hello World!\"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_String___1044() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    int value_vtmp0_ktmp0 = 4294967297;
    String value_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_ktmp0 = 4294967298;
    String value_vtmp1_vtmp0 = "";
    int value_vtmp1_ktmp1 = 4294967299;
    String value_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp0_ktmp0 = 4294967297;
    String copy_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_ktmp0 = 4294967298;
    String copy_vtmp1_vtmp0 = "";
    int copy_vtmp1_ktmp1 = 4294967299;
    String copy_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f1c32703910>: {4294967297: \"asdf\n\"}, <__main__.Scalar object at 0x7f1c326f7f90>: {4294967298: \"\", 4294967299: \"Hello World!\"}}");
    assert(!(value == other), "different Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f1c32703910>: {4294967297: \"asdf\n\"}, <__main__.Scalar object at 0x7f1c326f7f90>: {4294967298: \"\", 4294967299: \"Hello World!\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Scalar___1045() {
    
    Map<Scalar,Map<int,Scalar>> value = {};
    
    Map<Scalar,Map<int,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    
    Map<int,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<int,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,Scalar>>: {} {<__main__.Scalar object at 0x7f1c326f74d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Scalar___1046() {
    Scalar value_ktmp0 = unsafe(-3).asScalar();
    
    Map<int,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<int,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(-3).asScalar();
    
    Map<int,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<int,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp0_ktmp0 = -3;
    Scalar other_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("").asScalar();
    int other_vtmp1_ktmp0 = -2;
    Scalar other_vtmp1_vtmp0 = unsafe(false).asScalar();
    int other_vtmp1_ktmp1 = -1;
    Scalar other_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f1c326f74d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f1c326f74d0>: {}} {<__main__.Scalar object at 0x7f1c32703110>: {-3: <__main__.Scalar object at 0x7f1c327035d0>}, <__main__.Scalar object at 0x7f1c32703090>: {-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Scalar___1047() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp0_ktmp0 = -3;
    Scalar value_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("").asScalar();
    int value_vtmp1_ktmp0 = -2;
    Scalar value_vtmp1_vtmp0 = unsafe(false).asScalar();
    int value_vtmp1_ktmp1 = -1;
    Scalar value_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp0_ktmp0 = -3;
    Scalar copy_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("").asScalar();
    int copy_vtmp1_ktmp0 = -2;
    Scalar copy_vtmp1_vtmp0 = unsafe(false).asScalar();
    int copy_vtmp1_ktmp1 = -1;
    Scalar copy_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f1c32703110>: {-3: <__main__.Scalar object at 0x7f1c327035d0>}, <__main__.Scalar object at 0x7f1c32703090>: {-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f1c32703110>: {-3: <__main__.Scalar object at 0x7f1c327035d0>}, <__main__.Scalar object at 0x7f1c32703090>: {-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Any___1048() {
    
    Map<Scalar,Map<int,Any>> value = {};
    
    Map<Scalar,Map<int,Any>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<int,Any> other_vtmp0 = {};
    Map<Scalar,Map<int,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,Any>>: {} {<__main__.Scalar object at 0x7f1c327031d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Any___1049() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<int,Any> value_vtmp0 = {};
    Map<Scalar,Map<int,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<int,Any> copy_vtmp0 = {};
    Map<Scalar,Map<int,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-2).asScalar();
    int other_vtmp0_ktmp0 = 0;
    int other_vtmp0_vtmp0_tmp = 2147483647;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<int,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    int other_vtmp1_ktmp0 = 1;
    float other_vtmp1_vtmp0_tmp = 0.0;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    int other_vtmp1_ktmp1 = 2;
    String other_vtmp1_vtmp1_tmp = "pi";
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<int,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f1c327031d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f1c327031d0>: {}} {<__main__.Scalar object at 0x7f1c32703210>: {0: unsafe(2147483647)}, <__main__.Scalar object at 0x7f1c32703290>: {1: unsafe(0.0), 2: unsafe(\"pi\")}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Any___1050() {
    Scalar value_ktmp0 = unsafe(-2).asScalar();
    int value_vtmp0_ktmp0 = 0;
    int value_vtmp0_vtmp0_tmp = 2147483647;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<int,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    int value_vtmp1_ktmp0 = 1;
    float value_vtmp1_vtmp0_tmp = 0.0;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    int value_vtmp1_ktmp1 = 2;
    String value_vtmp1_vtmp1_tmp = "pi";
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<int,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-2).asScalar();
    int copy_vtmp0_ktmp0 = 0;
    int copy_vtmp0_vtmp0_tmp = 2147483647;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<int,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    int copy_vtmp1_ktmp0 = 1;
    float copy_vtmp1_vtmp0_tmp = 0.0;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    int copy_vtmp1_ktmp1 = 2;
    String copy_vtmp1_vtmp1_tmp = "pi";
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<int,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f1c32703210>: {0: unsafe(2147483647)}, <__main__.Scalar object at 0x7f1c32703290>: {1: unsafe(0.0), 2: unsafe(\"pi\")}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f1c32703210>: {0: unsafe(2147483647)}, <__main__.Scalar object at 0x7f1c32703290>: {1: unsafe(0.0), 2: unsafe(\"pi\")}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_bool___1051() {
    
    Map<Scalar,Map<float,bool>> value = {};
    
    Map<Scalar,Map<float,bool>> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<float,bool> other_vtmp0 = {};
    Map<Scalar,Map<float,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,bool>>: {} {<__main__.Scalar object at 0x7f1c327032d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_bool___1052() {
    Scalar value_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<float,bool> value_vtmp0 = {};
    Map<Scalar,Map<float,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<float,bool> copy_vtmp0 = {};
    Map<Scalar,Map<float,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    bool other_vtmp0_vtmp0 = true;
    Map<float,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-1).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    bool other_vtmp1_vtmp0 = false;
    float other_vtmp1_ktmp1 = 3.14;
    bool other_vtmp1_vtmp1 = true;
    Map<float,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f1c327032d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f1c327032d0>: {}} {<__main__.Scalar object at 0x7f1c32703310>: {0.0: true}, <__main__.Scalar object at 0x7f1c32703350>: {-0.0: false, 3.14: true}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_bool___1053() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    bool value_vtmp0_vtmp0 = true;
    Map<float,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-1).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    bool value_vtmp1_vtmp0 = false;
    float value_vtmp1_ktmp1 = 3.14;
    bool value_vtmp1_vtmp1 = true;
    Map<float,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    bool copy_vtmp0_vtmp0 = true;
    Map<float,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-1).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    bool copy_vtmp1_vtmp0 = false;
    float copy_vtmp1_ktmp1 = 3.14;
    bool copy_vtmp1_vtmp1 = true;
    Map<float,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f1c32703310>: {0.0: true}, <__main__.Scalar object at 0x7f1c32703350>: {-0.0: false, 3.14: true}}");
    assert(!(value == other), "different Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f1c32703310>: {0.0: true}, <__main__.Scalar object at 0x7f1c32703350>: {-0.0: false, 3.14: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_int___1054() {
    
    Map<Scalar,Map<float,int>> value = {};
    
    Map<Scalar,Map<float,int>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,int> other_vtmp0 = {};
    Map<Scalar,Map<float,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,int>>: {} {<__main__.Scalar object at 0x7f1c32703390>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_int___1055() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,int> value_vtmp0 = {};
    Map<Scalar,Map<float,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,int> copy_vtmp0 = {};
    Map<Scalar,Map<float,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("pi").asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    int other_vtmp0_vtmp0 = 3;
    Map<float,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(false).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    int other_vtmp1_vtmp0 = 2147483645;
    float other_vtmp1_ktmp1 = 3.14;
    int other_vtmp1_vtmp1 = 2147483646;
    Map<float,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f1c32703390>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f1c32703390>: {}} {<__main__.Scalar object at 0x7f1c327033d0>: {0.0: 3}, <__main__.Scalar object at 0x7f1c32703410>: {-0.0: 2147483645, 3.14: 2147483646}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_int___1056() {
    Scalar value_ktmp0 = unsafe("pi").asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    int value_vtmp0_vtmp0 = 3;
    Map<float,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(false).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    int value_vtmp1_vtmp0 = 2147483645;
    float value_vtmp1_ktmp1 = 3.14;
    int value_vtmp1_vtmp1 = 2147483646;
    Map<float,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("pi").asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    int copy_vtmp0_vtmp0 = 3;
    Map<float,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(false).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    int copy_vtmp1_vtmp0 = 2147483645;
    float copy_vtmp1_ktmp1 = 3.14;
    int copy_vtmp1_vtmp1 = 2147483646;
    Map<float,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f1c327033d0>: {0.0: 3}, <__main__.Scalar object at 0x7f1c32703410>: {-0.0: 2147483645, 3.14: 2147483646}}");
    assert(!(value == other), "different Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f1c327033d0>: {0.0: 3}, <__main__.Scalar object at 0x7f1c32703410>: {-0.0: 2147483645, 3.14: 2147483646}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_float___1057() {
    
    Map<Scalar,Map<float,float>> value = {};
    
    Map<Scalar,Map<float,float>> copy = {};
    Scalar other_ktmp0 = unsafe(0).asScalar();
    
    Map<float,float> other_vtmp0 = {};
    Map<Scalar,Map<float,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,float>>: {} {<__main__.Scalar object at 0x7f1c32703450>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_float___1058() {
    Scalar value_ktmp0 = unsafe(0).asScalar();
    
    Map<float,float> value_vtmp0 = {};
    Map<Scalar,Map<float,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(0).asScalar();
    
    Map<float,float> copy_vtmp0 = {};
    Map<Scalar,Map<float,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    float other_vtmp0_vtmp0 = -0.0;
    Map<float,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_ktmp0 = 3.14;
    float other_vtmp1_vtmp0 = -0.0;
    float other_vtmp1_ktmp1 = 0.0;
    float other_vtmp1_vtmp1 = 3.14;
    Map<float,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f1c32703450>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f1c32703450>: {}} {<__main__.Scalar object at 0x7f1c32703490>: {0.0: -0.0}, <__main__.Scalar object at 0x7f1c327034d0>: {3.14: -0.0, 0.0: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_float___1059() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    float value_vtmp0_vtmp0 = -0.0;
    Map<float,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_ktmp0 = 3.14;
    float value_vtmp1_vtmp0 = -0.0;
    float value_vtmp1_ktmp1 = 0.0;
    float value_vtmp1_vtmp1 = 3.14;
    Map<float,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    float copy_vtmp0_vtmp0 = -0.0;
    Map<float,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_ktmp0 = 3.14;
    float copy_vtmp1_vtmp0 = -0.0;
    float copy_vtmp1_ktmp1 = 0.0;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<float,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f1c32703490>: {0.0: -0.0}, <__main__.Scalar object at 0x7f1c327034d0>: {3.14: -0.0, 0.0: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f1c32703490>: {0.0: -0.0}, <__main__.Scalar object at 0x7f1c327034d0>: {3.14: -0.0, 0.0: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_String___1060() {
    
    Map<Scalar,Map<float,String>> value = {};
    
    Map<Scalar,Map<float,String>> copy = {};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    
    Map<float,String> other_vtmp0 = {};
    Map<Scalar,Map<float,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,String>>: {} {<__main__.Scalar object at 0x7f1c32703510>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_String___1061() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    
    Map<float,String> value_vtmp0 = {};
    Map<Scalar,Map<float,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    
    Map<float,String> copy_vtmp0 = {};
    Map<Scalar,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(1).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    String other_vtmp0_vtmp0 = "pi";
    Map<float,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    String other_vtmp1_vtmp0 = "pie";
    float other_vtmp1_ktmp1 = 3.14;
    String other_vtmp1_vtmp1 = " ";
    Map<float,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f1c32703510>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f1c32703510>: {}} {<__main__.Scalar object at 0x7f1c32703550>: {0.0: \"pi\"}, <__main__.Scalar object at 0x7f1c32703590>: {-0.0: \"pie\", 3.14: \" \"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_String___1062() {
    Scalar value_ktmp0 = unsafe(1).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    String value_vtmp0_vtmp0 = "pi";
    Map<float,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    String value_vtmp1_vtmp0 = "pie";
    float value_vtmp1_ktmp1 = 3.14;
    String value_vtmp1_vtmp1 = " ";
    Map<float,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(1).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    String copy_vtmp0_vtmp0 = "pi";
    Map<float,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    String copy_vtmp1_vtmp0 = "pie";
    float copy_vtmp1_ktmp1 = 3.14;
    String copy_vtmp1_vtmp1 = " ";
    Map<float,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f1c32703550>: {0.0: \"pi\"}, <__main__.Scalar object at 0x7f1c32703590>: {-0.0: \"pie\", 3.14: \" \"}}");
    assert(!(value == other), "different Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f1c32703550>: {0.0: \"pi\"}, <__main__.Scalar object at 0x7f1c32703590>: {-0.0: \"pie\", 3.14: \" \"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Scalar___1063() {
    
    Map<Scalar,Map<float,Scalar>> value = {};
    
    Map<Scalar,Map<float,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(" ").asScalar();
    
    Map<float,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,Scalar>>: {} {<__main__.Scalar object at 0x7f1c327035d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Scalar___1064() {
    Scalar value_ktmp0 = unsafe(" ").asScalar();
    
    Map<float,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(" ").asScalar();
    
    Map<float,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    Scalar other_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(2).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    Scalar other_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float other_vtmp1_ktmp1 = 3.14;
    Scalar other_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f1c327035d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f1c327035d0>: {}} {<__main__.Scalar object at 0x7f1c32703610>: {0.0: <__main__.Scalar object at 0x7f1c32703690>}, <__main__.Scalar object at 0x7f1c32703650>: {-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Scalar___1065() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    Scalar value_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(2).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    Scalar value_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float value_vtmp1_ktmp1 = 3.14;
    Scalar value_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    Scalar copy_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(2).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    Scalar copy_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float copy_vtmp1_ktmp1 = 3.14;
    Scalar copy_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f1c32703610>: {0.0: <__main__.Scalar object at 0x7f1c32703690>}, <__main__.Scalar object at 0x7f1c32703650>: {-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f1c32703610>: {0.0: <__main__.Scalar object at 0x7f1c32703690>}, <__main__.Scalar object at 0x7f1c32703650>: {-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Any___1066() {
    
    Map<Scalar,Map<float,Any>> value = {};
    
    Map<Scalar,Map<float,Any>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,Any> other_vtmp0 = {};
    Map<Scalar,Map<float,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,Any>>: {} {<__main__.Scalar object at 0x7f1c32703690>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Any___1067() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,Any> value_vtmp0 = {};
    Map<Scalar,Map<float,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,Any> copy_vtmp0 = {};
    Map<Scalar,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    int other_vtmp0_vtmp0_tmp = -3;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<float,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    bool other_vtmp1_vtmp0_tmp = false;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    float other_vtmp1_ktmp1 = 3.14;
    int other_vtmp1_vtmp1_tmp = 2147483648;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<float,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f1c32703690>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f1c32703690>: {}} {<__main__.Scalar object at 0x7f1c327036d0>: {0.0: unsafe(-3)}, <__main__.Scalar object at 0x7f1c32703710>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Any___1068() {
    Scalar value_ktmp0 = unsafe("\n").asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    int value_vtmp0_vtmp0_tmp = -3;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<float,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    bool value_vtmp1_vtmp0_tmp = false;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    float value_vtmp1_ktmp1 = 3.14;
    int value_vtmp1_vtmp1_tmp = 2147483648;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<float,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("\n").asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    int copy_vtmp0_vtmp0_tmp = -3;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<float,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    bool copy_vtmp1_vtmp0_tmp = false;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    float copy_vtmp1_ktmp1 = 3.14;
    int copy_vtmp1_vtmp1_tmp = 2147483648;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<float,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f1c327036d0>: {0.0: unsafe(-3)}, <__main__.Scalar object at 0x7f1c32703710>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f1c327036d0>: {0.0: unsafe(-3)}, <__main__.Scalar object at 0x7f1c32703710>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_bool___1069() {
    
    Map<Scalar,Map<String,bool>> value = {};
    
    Map<Scalar,Map<String,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(3).asScalar();
    
    Map<String,bool> other_vtmp0 = {};
    Map<Scalar,Map<String,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,bool>>: {} {<__main__.Scalar object at 0x7f1c32703750>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_bool___1070() {
    Scalar value_ktmp0 = unsafe(3).asScalar();
    
    Map<String,bool> value_vtmp0 = {};
    Map<Scalar,Map<String,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3).asScalar();
    
    Map<String,bool> copy_vtmp0 = {};
    Map<Scalar,Map<String,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    String other_vtmp0_ktmp0 = "\n";
    bool other_vtmp0_vtmp0 = false;
    Map<String,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("asdf\n").asScalar();
    String other_vtmp1_ktmp0 = "asdf\n";
    bool other_vtmp1_vtmp0 = true;
    String other_vtmp1_ktmp1 = "";
    bool other_vtmp1_vtmp1 = false;
    Map<String,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f1c32703750>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f1c32703750>: {}} {<__main__.Scalar object at 0x7f1c32703790>: {\"\n\": false}, <__main__.Scalar object at 0x7f1c327037d0>: {\"asdf\n\": true, \"\": false}}");
    assertEqual(true, true);
}
        
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
    assert(value == copy, "equals Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f1c32703790>: {\"\n\": false}, <__main__.Scalar object at 0x7f1c327037d0>: {\"asdf\n\": true, \"\": false}}");
    assert(!(value == other), "different Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f1c32703790>: {\"\n\": false}, <__main__.Scalar object at 0x7f1c327037d0>: {\"asdf\n\": true, \"\": false}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_int___1072() {
    
    Map<Scalar,Map<String,int>> value = {};
    
    Map<Scalar,Map<String,int>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<String,int> other_vtmp0 = {};
    Map<Scalar,Map<String,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,int>>: {} {<__main__.Scalar object at 0x7f1c32703810>: {}}");
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
    assert(value == copy, "equals Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f1c32703810>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f1c32703810>: {}} {<__main__.Scalar object at 0x7f1c32703850>: {\"Hello World!\": 2147483647}, <__main__.Scalar object at 0x7f1c32703890>: {\"pi\": 2147483648, \"pie\": 2147483649}}");
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
    assert(value == copy, "equals Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f1c32703850>: {\"Hello World!\": 2147483647}, <__main__.Scalar object at 0x7f1c32703890>: {\"pi\": 2147483648, \"pie\": 2147483649}}");
    assert(!(value == other), "different Map<Scalar,Map<String,int>>: {<__main__.Scalar object at 0x7f1c32703850>: {\"Hello World!\": 2147483647}, <__main__.Scalar object at 0x7f1c32703890>: {\"pi\": 2147483648, \"pie\": 2147483649}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_float___1075() {
    
    Map<Scalar,Map<String,float>> value = {};
    
    Map<Scalar,Map<String,float>> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    
    Map<String,float> other_vtmp0 = {};
    Map<Scalar,Map<String,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,float>>: {} {<__main__.Scalar object at 0x7f1c327038d0>: {}}");
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
    assert(value == copy, "equals Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f1c327038d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f1c327038d0>: {}} {<__main__.Scalar object at 0x7f1c32703910>: {\" \": 0.0}, <__main__.Scalar object at 0x7f1c326f7f90>: {\"\n\": -0.0, \"asdf\n\": 3.14}}");
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
    assert(value == copy, "equals Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f1c32703910>: {\" \": 0.0}, <__main__.Scalar object at 0x7f1c326f7f90>: {\"\n\": -0.0, \"asdf\n\": 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<String,float>>: {<__main__.Scalar object at 0x7f1c32703910>: {\" \": 0.0}, <__main__.Scalar object at 0x7f1c326f7f90>: {\"\n\": -0.0, \"asdf\n\": 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_String___1078() {
    
    Map<Scalar,Map<String,String>> value = {};
    
    Map<Scalar,Map<String,String>> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    
    Map<String,String> other_vtmp0 = {};
    Map<Scalar,Map<String,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,String>>: {} {<__main__.Scalar object at 0x7f1c326f74d0>: {}}");
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
    assert(value == copy, "equals Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f1c326f74d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f1c326f74d0>: {}} {<__main__.Scalar object at 0x7f1c32703110>: {\"\": \"Hello World!\"}, <__main__.Scalar object at 0x7f1c32703090>: {\"pi\": \" \", \"pie\": \"\n\"}}");
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
    assert(value == copy, "equals Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f1c32703110>: {\"\": \"Hello World!\"}, <__main__.Scalar object at 0x7f1c32703090>: {\"pi\": \" \", \"pie\": \"\n\"}}");
    assert(!(value == other), "different Map<Scalar,Map<String,String>>: {<__main__.Scalar object at 0x7f1c32703110>: {\"\": \"Hello World!\"}, <__main__.Scalar object at 0x7f1c32703090>: {\"pi\": \" \", \"pie\": \"\n\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Scalar___1081() {
    
    Map<Scalar,Map<String,Scalar>> value = {};
    
    Map<Scalar,Map<String,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<String,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,Scalar>>: {} {<__main__.Scalar object at 0x7f1c327031d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Scalar___1082() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<String,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<String,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp0_ktmp0 = "asdf\n";
    Scalar other_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_ktmp0 = "";
    Scalar other_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String other_vtmp1_ktmp1 = "Hello World!";
    Scalar other_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f1c327031d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f1c327031d0>: {}} {<__main__.Scalar object at 0x7f1c32703210>: {\"asdf\n\": <__main__.Scalar object at 0x7f1c32703750>}, <__main__.Scalar object at 0x7f1c32703290>: {\"\": <__main__.Scalar object at 0x7f1c32703790>, \"Hello World!\": <__main__.Scalar object at 0x7f1c327037d0>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Scalar___1083() {
    Scalar value_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp0_ktmp0 = "asdf\n";
    Scalar value_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_ktmp0 = "";
    Scalar value_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String value_vtmp1_ktmp1 = "Hello World!";
    Scalar value_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp0_ktmp0 = "asdf\n";
    Scalar copy_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_ktmp0 = "";
    Scalar copy_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String copy_vtmp1_ktmp1 = "Hello World!";
    Scalar copy_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f1c32703210>: {\"asdf\n\": <__main__.Scalar object at 0x7f1c32703750>}, <__main__.Scalar object at 0x7f1c32703290>: {\"\": <__main__.Scalar object at 0x7f1c32703790>, \"Hello World!\": <__main__.Scalar object at 0x7f1c327037d0>}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f1c32703210>: {\"asdf\n\": <__main__.Scalar object at 0x7f1c32703750>}, <__main__.Scalar object at 0x7f1c32703290>: {\"\": <__main__.Scalar object at 0x7f1c32703790>, \"Hello World!\": <__main__.Scalar object at 0x7f1c327037d0>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Any___1084() {
    
    Map<Scalar,Map<String,Any>> value = {};
    
    Map<Scalar,Map<String,Any>> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<String,Any> other_vtmp0 = {};
    Map<Scalar,Map<String,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,Any>>: {} {<__main__.Scalar object at 0x7f1c327032d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Any___1085() {
    Scalar value_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<String,Any> value_vtmp0 = {};
    Map<Scalar,Map<String,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<String,Any> copy_vtmp0 = {};
    Map<Scalar,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    String other_vtmp0_ktmp0 = "pi";
    float other_vtmp0_vtmp0_tmp = -0.0;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<String,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-1).asScalar();
    String other_vtmp1_ktmp0 = "pie";
    String other_vtmp1_vtmp0_tmp = "pie";
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    String other_vtmp1_ktmp1 = " ";
    float other_vtmp1_vtmp1_tmp = 0.0;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<String,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f1c327032d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f1c327032d0>: {}} {<__main__.Scalar object at 0x7f1c32703310>: {\"pi\": unsafe(-0.0)}, <__main__.Scalar object at 0x7f1c32703350>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Any___1086() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    String value_vtmp0_ktmp0 = "pi";
    float value_vtmp0_vtmp0_tmp = -0.0;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<String,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-1).asScalar();
    String value_vtmp1_ktmp0 = "pie";
    String value_vtmp1_vtmp0_tmp = "pie";
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    String value_vtmp1_ktmp1 = " ";
    float value_vtmp1_vtmp1_tmp = 0.0;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<String,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    String copy_vtmp0_ktmp0 = "pi";
    float copy_vtmp0_vtmp0_tmp = -0.0;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<String,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-1).asScalar();
    String copy_vtmp1_ktmp0 = "pie";
    String copy_vtmp1_vtmp0_tmp = "pie";
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    String copy_vtmp1_ktmp1 = " ";
    float copy_vtmp1_vtmp1_tmp = 0.0;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<String,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f1c32703310>: {\"pi\": unsafe(-0.0)}, <__main__.Scalar object at 0x7f1c32703350>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f1c32703310>: {\"pi\": unsafe(-0.0)}, <__main__.Scalar object at 0x7f1c32703350>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_bool___1087() {
    
    Map<Scalar,Map<Scalar,bool>> value = {};
    
    Map<Scalar,Map<Scalar,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,bool> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,bool>>: {} {<__main__.Scalar object at 0x7f1c32703390>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_bool___1088() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,bool> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,bool> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_vtmp0 = true;
    Map<Scalar,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(false).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool other_vtmp1_vtmp0 = false;
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_vtmp1 = true;
    Map<Scalar,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f1c32703390>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f1c32703390>: {}} {<__main__.Scalar object at 0x7f1c327033d0>: {<__main__.Scalar object at 0x7f1c32703810>: true}, <__main__.Scalar object at 0x7f1c32703410>: {<__main__.Scalar object at 0x7f1c32703850>: false, <__main__.Scalar object at 0x7f1c32703890>: true}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_bool___1089() {
    Scalar value_ktmp0 = unsafe("pi").asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_vtmp0 = true;
    Map<Scalar,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(false).asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool value_vtmp1_vtmp0 = false;
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_vtmp1 = true;
    Map<Scalar,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("pi").asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_vtmp0 = true;
    Map<Scalar,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(false).asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_vtmp1_vtmp0 = false;
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_vtmp1 = true;
    Map<Scalar,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f1c327033d0>: {<__main__.Scalar object at 0x7f1c32703810>: true}, <__main__.Scalar object at 0x7f1c32703410>: {<__main__.Scalar object at 0x7f1c32703850>: false, <__main__.Scalar object at 0x7f1c32703890>: true}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f1c327033d0>: {<__main__.Scalar object at 0x7f1c32703810>: true}, <__main__.Scalar object at 0x7f1c32703410>: {<__main__.Scalar object at 0x7f1c32703850>: false, <__main__.Scalar object at 0x7f1c32703890>: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_int___1090() {
    
    Map<Scalar,Map<Scalar,int>> value = {};
    
    Map<Scalar,Map<Scalar,int>> copy = {};
    Scalar other_ktmp0 = unsafe(0).asScalar();
    
    Map<Scalar,int> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,int>>: {} {<__main__.Scalar object at 0x7f1c32703450>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_int___1091() {
    Scalar value_ktmp0 = unsafe(0).asScalar();
    
    Map<Scalar,int> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(0).asScalar();
    
    Map<Scalar,int> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe("").asScalar();
    int other_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("pie").asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(true).asScalar();
    int other_vtmp1_vtmp0 = 2147483651;
    Scalar other_vtmp1_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f1c32703450>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f1c32703450>: {}} {<__main__.Scalar object at 0x7f1c32703490>: {<__main__.Scalar object at 0x7f1c327038d0>: 2147483650}, <__main__.Scalar object at 0x7f1c327034d0>: {<__main__.Scalar object at 0x7f1c32703910>: 2147483651, <__main__.Scalar object at 0x7f1c326f7f90>: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_int___1092() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe("").asScalar();
    int value_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("pie").asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(true).asScalar();
    int value_vtmp1_vtmp0 = 2147483651;
    Scalar value_vtmp1_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe("").asScalar();
    int copy_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("pie").asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp0 = 2147483651;
    Scalar copy_vtmp1_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f1c32703490>: {<__main__.Scalar object at 0x7f1c327038d0>: 2147483650}, <__main__.Scalar object at 0x7f1c327034d0>: {<__main__.Scalar object at 0x7f1c32703910>: 2147483651, <__main__.Scalar object at 0x7f1c326f7f90>: 4294967293}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f1c32703490>: {<__main__.Scalar object at 0x7f1c327038d0>: 2147483650}, <__main__.Scalar object at 0x7f1c327034d0>: {<__main__.Scalar object at 0x7f1c32703910>: 2147483651, <__main__.Scalar object at 0x7f1c326f7f90>: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_float___1093() {
    
    Map<Scalar,Map<Scalar,float>> value = {};
    
    Map<Scalar,Map<Scalar,float>> copy = {};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    
    Map<Scalar,float> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,float>>: {} {<__main__.Scalar object at 0x7f1c32703510>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_float___1094() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    
    Map<Scalar,float> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    
    Map<Scalar,float> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(1).asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float other_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp1_vtmp0 = -0.0;
    Scalar other_vtmp1_ktmp1 = unsafe("").asScalar();
    float other_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f1c32703510>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f1c32703510>: {}} {<__main__.Scalar object at 0x7f1c32703550>: {<__main__.Scalar object at 0x7f1c326f74d0>: 0.0}, <__main__.Scalar object at 0x7f1c32703590>: {<__main__.Scalar object at 0x7f1c32703110>: -0.0, <__main__.Scalar object at 0x7f1c32703090>: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_float___1095() {
    Scalar value_ktmp0 = unsafe(1).asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float value_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp1_vtmp0 = -0.0;
    Scalar value_vtmp1_ktmp1 = unsafe("").asScalar();
    float value_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(1).asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float copy_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp1_vtmp0 = -0.0;
    Scalar copy_vtmp1_ktmp1 = unsafe("").asScalar();
    float copy_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f1c32703550>: {<__main__.Scalar object at 0x7f1c326f74d0>: 0.0}, <__main__.Scalar object at 0x7f1c32703590>: {<__main__.Scalar object at 0x7f1c32703110>: -0.0, <__main__.Scalar object at 0x7f1c32703090>: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f1c32703550>: {<__main__.Scalar object at 0x7f1c326f74d0>: 0.0}, <__main__.Scalar object at 0x7f1c32703590>: {<__main__.Scalar object at 0x7f1c32703110>: -0.0, <__main__.Scalar object at 0x7f1c32703090>: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_String___1096() {
    
    Map<Scalar,Map<Scalar,String>> value = {};
    
    Map<Scalar,Map<Scalar,String>> copy = {};
    Scalar other_ktmp0 = unsafe(" ").asScalar();
    
    Map<Scalar,String> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,String>>: {} {<__main__.Scalar object at 0x7f1c327035d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_String___1097() {
    Scalar value_ktmp0 = unsafe(" ").asScalar();
    
    Map<Scalar,String> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(" ").asScalar();
    
    Map<Scalar,String> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    String other_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(2).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp1_vtmp0 = "asdf\n";
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_vtmp1 = "";
    Map<Scalar,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f1c327035d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f1c327035d0>: {}} {<__main__.Scalar object at 0x7f1c32703610>: {<__main__.Scalar object at 0x7f1c327031d0>: \"\n\"}, <__main__.Scalar object at 0x7f1c32703650>: {<__main__.Scalar object at 0x7f1c32703210>: \"asdf\n\", <__main__.Scalar object at 0x7f1c32703290>: \"\"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_String___1098() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    String value_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(2).asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp1_vtmp0 = "asdf\n";
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_vtmp1 = "";
    Map<Scalar,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    String copy_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(2).asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp1_vtmp0 = "asdf\n";
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_vtmp1 = "";
    Map<Scalar,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f1c32703610>: {<__main__.Scalar object at 0x7f1c327031d0>: \"\n\"}, <__main__.Scalar object at 0x7f1c32703650>: {<__main__.Scalar object at 0x7f1c32703210>: \"asdf\n\", <__main__.Scalar object at 0x7f1c32703290>: \"\"}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f1c32703610>: {<__main__.Scalar object at 0x7f1c327031d0>: \"\n\"}, <__main__.Scalar object at 0x7f1c32703650>: {<__main__.Scalar object at 0x7f1c32703210>: \"asdf\n\", <__main__.Scalar object at 0x7f1c32703290>: \"\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_Scalar___1099() {
    
    Map<Scalar,Map<Scalar,Scalar>> value = {};
    
    Map<Scalar,Map<Scalar,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Scalar>>: {} {<__main__.Scalar object at 0x7f1c32703690>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_Scalar___1100() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar other_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Scalar>>: {<__main__.Scalar object at 0x7f1c32703690>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Scalar>>: {<__main__.Scalar object at 0x7f1c32703690>: {}} {<__main__.Scalar object at 0x7f1c327036d0>: {<__main__.Scalar object at 0x7f1c327032d0>: <__main__.Scalar object at 0x7f1c32703310>}, <__main__.Scalar object at 0x7f1c32703710>: {<__main__.Scalar object at 0x7f1c32703350>: <__main__.Scalar object at 0x7f1c327033d0>, <__main__.Scalar object at 0x7f1c32703390>: <__main__.Scalar object at 0x7f1c32703410>}}");
    assertEqual(true, true);
}
        