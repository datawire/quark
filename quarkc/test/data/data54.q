
void test_List_Map_String_bool___531() {
    String value_tmp0_ktmp0 = "\n";
    bool value_tmp0_vtmp0 = false;
    Map<String,bool> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    String value_tmp1_ktmp0 = "asdf\n";
    bool value_tmp1_vtmp0 = true;
    String value_tmp1_ktmp1 = "";
    bool value_tmp1_vtmp1 = false;
    Map<String,bool> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<String,bool>> value = [value_tmp0, value_tmp1];
    String copy_tmp0_ktmp0 = "\n";
    bool copy_tmp0_vtmp0 = false;
    Map<String,bool> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    String copy_tmp1_ktmp0 = "asdf\n";
    bool copy_tmp1_vtmp0 = true;
    String copy_tmp1_ktmp1 = "";
    bool copy_tmp1_vtmp1 = false;
    Map<String,bool> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<String,bool>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<String,bool>> other = [];
    assert(value == copy, "equals List<Map<String,bool>>: [{\"\n\": false}, {\"asdf\n\": true, \"\": false}]");
    assert(!(value == other), "different List<Map<String,bool>>: [{\"\n\": false}, {\"asdf\n\": true, \"\": false}] []");
    assertEqual(true, true);
}
        
void test_List_Map_String_int___532() {
    
    List<Map<String,int>> value = [];
    
    List<Map<String,int>> copy = [];
    
    Map<String,int> other_tmp0 = {};
    List<Map<String,int>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<String,int>>: []");
    assert(!(value == other), "different List<Map<String,int>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_String_int___533() {
    
    Map<String,int> value_tmp0 = {};
    List<Map<String,int>> value = [value_tmp0];
    
    Map<String,int> copy_tmp0 = {};
    List<Map<String,int>> copy = [copy_tmp0];
    String other_tmp0_ktmp0 = "Hello World!";
    int other_tmp0_vtmp0 = 2147483647;
    Map<String,int> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    String other_tmp1_ktmp0 = "pi";
    int other_tmp1_vtmp0 = 2147483648;
    String other_tmp1_ktmp1 = "pie";
    int other_tmp1_vtmp1 = 2147483649;
    Map<String,int> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<String,int>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<String,int>>: [{}]");
    assert(!(value == other), "different List<Map<String,int>>: [{}] [{\"Hello World!\": 2147483647}, {\"pi\": 2147483648, \"pie\": 2147483649}]");
    assertEqual(true, true);
}
        
void test_List_Map_String_int___534() {
    String value_tmp0_ktmp0 = "Hello World!";
    int value_tmp0_vtmp0 = 2147483647;
    Map<String,int> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    String value_tmp1_ktmp0 = "pi";
    int value_tmp1_vtmp0 = 2147483648;
    String value_tmp1_ktmp1 = "pie";
    int value_tmp1_vtmp1 = 2147483649;
    Map<String,int> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<String,int>> value = [value_tmp0, value_tmp1];
    String copy_tmp0_ktmp0 = "Hello World!";
    int copy_tmp0_vtmp0 = 2147483647;
    Map<String,int> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    String copy_tmp1_ktmp0 = "pi";
    int copy_tmp1_vtmp0 = 2147483648;
    String copy_tmp1_ktmp1 = "pie";
    int copy_tmp1_vtmp1 = 2147483649;
    Map<String,int> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<String,int>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<String,int>> other = [];
    assert(value == copy, "equals List<Map<String,int>>: [{\"Hello World!\": 2147483647}, {\"pi\": 2147483648, \"pie\": 2147483649}]");
    assert(!(value == other), "different List<Map<String,int>>: [{\"Hello World!\": 2147483647}, {\"pi\": 2147483648, \"pie\": 2147483649}] []");
    assertEqual(true, true);
}
        
void test_List_Map_String_float___535() {
    
    List<Map<String,float>> value = [];
    
    List<Map<String,float>> copy = [];
    
    Map<String,float> other_tmp0 = {};
    List<Map<String,float>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<String,float>>: []");
    assert(!(value == other), "different List<Map<String,float>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_String_float___536() {
    
    Map<String,float> value_tmp0 = {};
    List<Map<String,float>> value = [value_tmp0];
    
    Map<String,float> copy_tmp0 = {};
    List<Map<String,float>> copy = [copy_tmp0];
    String other_tmp0_ktmp0 = " ";
    float other_tmp0_vtmp0 = 0.0;
    Map<String,float> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    String other_tmp1_ktmp0 = "\n";
    float other_tmp1_vtmp0 = -0.0;
    String other_tmp1_ktmp1 = "asdf\n";
    float other_tmp1_vtmp1 = 3.14;
    Map<String,float> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<String,float>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<String,float>>: [{}]");
    assert(!(value == other), "different List<Map<String,float>>: [{}] [{\" \": 0.0}, {\"\n\": -0.0, \"asdf\n\": 3.14}]");
    assertEqual(true, true);
}
        
void test_List_Map_String_float___537() {
    String value_tmp0_ktmp0 = " ";
    float value_tmp0_vtmp0 = 0.0;
    Map<String,float> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    String value_tmp1_ktmp0 = "\n";
    float value_tmp1_vtmp0 = -0.0;
    String value_tmp1_ktmp1 = "asdf\n";
    float value_tmp1_vtmp1 = 3.14;
    Map<String,float> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<String,float>> value = [value_tmp0, value_tmp1];
    String copy_tmp0_ktmp0 = " ";
    float copy_tmp0_vtmp0 = 0.0;
    Map<String,float> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    String copy_tmp1_ktmp0 = "\n";
    float copy_tmp1_vtmp0 = -0.0;
    String copy_tmp1_ktmp1 = "asdf\n";
    float copy_tmp1_vtmp1 = 3.14;
    Map<String,float> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<String,float>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<String,float>> other = [];
    assert(value == copy, "equals List<Map<String,float>>: [{\" \": 0.0}, {\"\n\": -0.0, \"asdf\n\": 3.14}]");
    assert(!(value == other), "different List<Map<String,float>>: [{\" \": 0.0}, {\"\n\": -0.0, \"asdf\n\": 3.14}] []");
    assertEqual(true, true);
}
        
void test_List_Map_String_String___538() {
    
    List<Map<String,String>> value = [];
    
    List<Map<String,String>> copy = [];
    
    Map<String,String> other_tmp0 = {};
    List<Map<String,String>> other = [other_tmp0];
    assert(value == copy, "equals List<Map<String,String>>: []");
    assert(!(value == other), "different List<Map<String,String>>: [] [{}]");
    assertEqual(true, true);
}
        
void test_List_Map_String_String___539() {
    
    Map<String,String> value_tmp0 = {};
    List<Map<String,String>> value = [value_tmp0];
    
    Map<String,String> copy_tmp0 = {};
    List<Map<String,String>> copy = [copy_tmp0];
    String other_tmp0_ktmp0 = "";
    String other_tmp0_vtmp0 = "Hello World!";
    Map<String,String> other_tmp0 = {other_tmp0_ktmp0: other_tmp0_vtmp0};
    String other_tmp1_ktmp0 = "pi";
    String other_tmp1_vtmp0 = " ";
    String other_tmp1_ktmp1 = "pie";
    String other_tmp1_vtmp1 = "\n";
    Map<String,String> other_tmp1 = {other_tmp1_ktmp0: other_tmp1_vtmp0, other_tmp1_ktmp1: other_tmp1_vtmp1};
    List<Map<String,String>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Map<String,String>>: [{}]");
    assert(!(value == other), "different List<Map<String,String>>: [{}] [{\"\": \"Hello World!\"}, {\"pi\": \" \", \"pie\": \"\n\"}]");
    assertEqual(true, true);
}
        
void test_List_Map_String_String___540() {
    String value_tmp0_ktmp0 = "";
    String value_tmp0_vtmp0 = "Hello World!";
    Map<String,String> value_tmp0 = {value_tmp0_ktmp0: value_tmp0_vtmp0};
    String value_tmp1_ktmp0 = "pi";
    String value_tmp1_vtmp0 = " ";
    String value_tmp1_ktmp1 = "pie";
    String value_tmp1_vtmp1 = "\n";
    Map<String,String> value_tmp1 = {value_tmp1_ktmp0: value_tmp1_vtmp0, value_tmp1_ktmp1: value_tmp1_vtmp1};
    List<Map<String,String>> value = [value_tmp0, value_tmp1];
    String copy_tmp0_ktmp0 = "";
    String copy_tmp0_vtmp0 = "Hello World!";
    Map<String,String> copy_tmp0 = {copy_tmp0_ktmp0: copy_tmp0_vtmp0};
    String copy_tmp1_ktmp0 = "pi";
    String copy_tmp1_vtmp0 = " ";
    String copy_tmp1_ktmp1 = "pie";
    String copy_tmp1_vtmp1 = "\n";
    Map<String,String> copy_tmp1 = {copy_tmp1_ktmp0: copy_tmp1_vtmp0, copy_tmp1_ktmp1: copy_tmp1_vtmp1};
    List<Map<String,String>> copy = [copy_tmp0, copy_tmp1];
    
    List<Map<String,String>> other = [];
    assert(value == copy, "equals List<Map<String,String>>: [{\"\": \"Hello World!\"}, {\"pi\": \" \", \"pie\": \"\n\"}]");
    assert(!(value == other), "different List<Map<String,String>>: [{\"\": \"Hello World!\"}, {\"pi\": \" \", \"pie\": \"\n\"}] []");
    assertEqual(true, true);
}
        