
void test_List_Map_Scalar_int___551() {
    
    Map<Scalar,int> value_tmp0 = {};
    List<Map<Scalar,int>> value = [value_tmp0];
    
    Map<Scalar,int> copy_tmp0 = {};
    List<Map<Scalar,int>> copy = [copy_tmp0];
    Scalar other_tmp0_ktmp0 = unsafe("").asScalar();
    int other_tmp0_vtmp0 = 2147483650;
    Map<Scalar,int> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    Scalar other_tmp1_ktmp0 = unsafe(true).asScalar();
    int other_tmp1_vtmp0 = 2147483651;
    Scalar other_tmp1_ktmp1 = unsafe(true).asScalar();
    int other_tmp1_vtmp1 = 4294967293;
    Map<Scalar,int> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<Scalar,int>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<Scalar,int>>: [{}]");
    assert(!(value == other), "different List<Map<Scalar,int>>: [{}] [{<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_int___552() {
    Scalar value_tmp0_ktmp0 = unsafe("").asScalar();
    int value_tmp0_vtmp0 = 2147483650;
    Map<Scalar,int> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    Scalar value_tmp1_ktmp0 = unsafe(true).asScalar();
    int value_tmp1_vtmp0 = 2147483651;
    Scalar value_tmp1_ktmp1 = unsafe(true).asScalar();
    int value_tmp1_vtmp1 = 4294967293;
    Map<Scalar,int> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<Scalar,int>> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0_ktmp0 = unsafe("").asScalar();
    int copy_tmp0_vtmp0 = 2147483650;
    Map<Scalar,int> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    Scalar copy_tmp1_ktmp0 = unsafe(true).asScalar();
    int copy_tmp1_vtmp0 = 2147483651;
    Scalar copy_tmp1_ktmp1 = unsafe(true).asScalar();
    int copy_tmp1_vtmp1 = 4294967293;
    Map<Scalar,int> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<Scalar,int>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<Scalar,int>> other = [];
    assert(value == copy, "equals List<Map<Scalar,int>>: [{<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}]");
    assert(!(value == other), "different List<Map<Scalar,int>>: [{<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}] []");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_float___553() {
    
    List<Map<Scalar,float>> value = [];
    
    List<Map<Scalar,float>> copy = [];
    
    Map<Scalar,float> other_tmp0 = {};
    List<Map<Scalar,float>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<Scalar,float>>: []");
    assert(!(value == other), "different List<Map<Scalar,float>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_float___554() {
    
    Map<Scalar,float> value_tmp0 = {};
    List<Map<Scalar,float>> value = [value_tmp0];
    
    Map<Scalar,float> copy_tmp0 = {};
    List<Map<Scalar,float>> copy = [copy_tmp0];
    Scalar other_tmp0_ktmp0 = unsafe(-3).asScalar();
    float other_tmp0_vtmp0 = 0.0;
    Map<Scalar,float> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    Scalar other_tmp1_ktmp0 = unsafe(0.0).asScalar();
    float other_tmp1_vtmp0 = -0.0;
    Scalar other_tmp1_ktmp1 = unsafe("").asScalar();
    float other_tmp1_vtmp1 = 3.14;
    Map<Scalar,float> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<Scalar,float>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<Scalar,float>>: [{}]");
    assert(!(value == other), "different List<Map<Scalar,float>>: [{}] [{<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_float___555() {
    Scalar value_tmp0_ktmp0 = unsafe(-3).asScalar();
    float value_tmp0_vtmp0 = 0.0;
    Map<Scalar,float> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    Scalar value_tmp1_ktmp0 = unsafe(0.0).asScalar();
    float value_tmp1_vtmp0 = -0.0;
    Scalar value_tmp1_ktmp1 = unsafe("").asScalar();
    float value_tmp1_vtmp1 = 3.14;
    Map<Scalar,float> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<Scalar,float>> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0_ktmp0 = unsafe(-3).asScalar();
    float copy_tmp0_vtmp0 = 0.0;
    Map<Scalar,float> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    Scalar copy_tmp1_ktmp0 = unsafe(0.0).asScalar();
    float copy_tmp1_vtmp0 = -0.0;
    Scalar copy_tmp1_ktmp1 = unsafe("").asScalar();
    float copy_tmp1_vtmp1 = 3.14;
    Map<Scalar,float> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<Scalar,float>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<Scalar,float>> other = [];
    assert(value == copy, "equals List<Map<Scalar,float>>: [{<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}]");
    assert(!(value == other), "different List<Map<Scalar,float>>: [{<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}] []");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_String___556() {
    
    List<Map<Scalar,String>> value = [];
    
    List<Map<Scalar,String>> copy = [];
    
    Map<Scalar,String> other_tmp0 = {};
    List<Map<Scalar,String>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<Scalar,String>>: []");
    assert(!(value == other), "different List<Map<Scalar,String>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_String___557() {
    
    Map<Scalar,String> value_tmp0 = {};
    List<Map<Scalar,String>> value = [value_tmp0];
    
    Map<Scalar,String> copy_tmp0 = {};
    List<Map<Scalar,String>> copy = [copy_tmp0];
    Scalar other_tmp0_ktmp0 = unsafe(false).asScalar();
    String other_tmp0_vtmp0 = "\n";
    Map<Scalar,String> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    Scalar other_tmp1_ktmp0 = unsafe(-2).asScalar();
    String other_tmp1_vtmp0 = "asdf\n";
    Scalar other_tmp1_ktmp1 = unsafe(-0.0).asScalar();
    String other_tmp1_vtmp1 = "";
    Map<Scalar,String> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<Scalar,String>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<Scalar,String>>: [{}]");
    assert(!(value == other), "different List<Map<Scalar,String>>: [{}] [{<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_String___558() {
    Scalar value_tmp0_ktmp0 = unsafe(false).asScalar();
    String value_tmp0_vtmp0 = "\n";
    Map<Scalar,String> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    Scalar value_tmp1_ktmp0 = unsafe(-2).asScalar();
    String value_tmp1_vtmp0 = "asdf\n";
    Scalar value_tmp1_ktmp1 = unsafe(-0.0).asScalar();
    String value_tmp1_vtmp1 = "";
    Map<Scalar,String> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<Scalar,String>> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0_ktmp0 = unsafe(false).asScalar();
    String copy_tmp0_vtmp0 = "\n";
    Map<Scalar,String> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    Scalar copy_tmp1_ktmp0 = unsafe(-2).asScalar();
    String copy_tmp1_vtmp0 = "asdf\n";
    Scalar copy_tmp1_ktmp1 = unsafe(-0.0).asScalar();
    String copy_tmp1_vtmp1 = "";
    Map<Scalar,String> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<Scalar,String>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<Scalar,String>> other = [];
    assert(value == copy, "equals List<Map<Scalar,String>>: [{<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}]");
    assert(!(value == other), "different List<Map<Scalar,String>>: [{<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}] []");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_Scalar___559() {
    
    List<Map<Scalar,Scalar>> value = [];
    
    List<Map<Scalar,Scalar>> copy = [];
    
    Map<Scalar,Scalar> other_tmp0 = {};
    List<Map<Scalar,Scalar>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<Scalar,Scalar>>: []");
    assert(!(value == other), "different List<Map<Scalar,Scalar>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_Scalar_Scalar___560() {
    
    Map<Scalar,Scalar> value_tmp0 = {};
    List<Map<Scalar,Scalar>> value = [value_tmp0];
    
    Map<Scalar,Scalar> copy_tmp0 = {};
    List<Map<Scalar,Scalar>> copy = [copy_tmp0];
    Scalar other_tmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_tmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    Scalar other_tmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar other_tmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar other_tmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_tmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<Scalar,Scalar>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<Scalar,Scalar>>: [{}]");
    assert(!(value == other), "different List<Map<Scalar,Scalar>>: [{}] [{<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}]");
    assertEqual(true, true);
}
        