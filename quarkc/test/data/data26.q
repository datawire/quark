
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
        