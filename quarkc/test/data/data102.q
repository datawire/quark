
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
    assert(value == copy, "equals Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0910>: [unsafe(0).asScalar()], <__main__.Scalar object at 0x7f9dce0e4f90>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assert(!(value == other), "different Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0910>: [unsafe(0).asScalar()], <__main__.Scalar object at 0x7f9dce0e4f90>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Any___1012() {
    
    Map<Scalar,List<Any>> value = {};
    
    Map<Scalar,List<Any>> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    
    List<Any> other_vtmp0 = [];
    Map<Scalar,List<Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<Any>>: {}");
    assert(!(value == other), "different Map<Scalar,List<Any>>: {} {<__main__.Scalar object at 0x7f9dce0e44d0>: []}");
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
    assert(value == copy, "equals Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f9dce0e44d0>: []}");
    assert(!(value == other), "different Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f9dce0e44d0>: []} {<__main__.Scalar object at 0x7f9dce0f0110>: [unsafe(false)], <__main__.Scalar object at 0x7f9dce0f0090>: [unsafe(2147483646), unsafe(3.14)]}");
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
    assert(value == copy, "equals Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f9dce0f0110>: [unsafe(false)], <__main__.Scalar object at 0x7f9dce0f0090>: [unsafe(2147483646), unsafe(3.14)]}");
    assert(!(value == other), "different Map<Scalar,List<Any>>: {<__main__.Scalar object at 0x7f9dce0f0110>: [unsafe(false)], <__main__.Scalar object at 0x7f9dce0f0090>: [unsafe(2147483646), unsafe(3.14)]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_bool___1015() {
    
    Map<Scalar,Map<bool,bool>> value = {};
    
    Map<Scalar,Map<bool,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<bool,bool> other_vtmp0 = {};
    Map<Scalar,Map<bool,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,bool>>: {} {<__main__.Scalar object at 0x7f9dce0f01d0>: {}}");
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
    assert(value == copy, "equals Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f9dce0f01d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f9dce0f01d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0210>: {true: false}, <__main__.Scalar object at 0x7f9dce0f0290>: {true: true, false: false}}");
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
    assert(value == copy, "equals Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f9dce0f0210>: {true: false}, <__main__.Scalar object at 0x7f9dce0f0290>: {true: true, false: false}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,bool>>: {<__main__.Scalar object at 0x7f9dce0f0210>: {true: false}, <__main__.Scalar object at 0x7f9dce0f0290>: {true: true, false: false}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_int___1018() {
    
    Map<Scalar,Map<bool,int>> value = {};
    
    Map<Scalar,Map<bool,int>> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<bool,int> other_vtmp0 = {};
    Map<Scalar,Map<bool,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,int>>: {} {<__main__.Scalar object at 0x7f9dce0f02d0>: {}}");
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
    assert(value == copy, "equals Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f9dce0f02d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f9dce0f02d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0310>: {true: 0}, <__main__.Scalar object at 0x7f9dce0f0350>: {false: 1, true: 2}}");
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
    assert(value == copy, "equals Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f9dce0f0310>: {true: 0}, <__main__.Scalar object at 0x7f9dce0f0350>: {false: 1, true: 2}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,int>>: {<__main__.Scalar object at 0x7f9dce0f0310>: {true: 0}, <__main__.Scalar object at 0x7f9dce0f0350>: {false: 1, true: 2}} {}");
    assertEqual(true, true);
}
        