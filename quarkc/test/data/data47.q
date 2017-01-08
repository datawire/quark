
void test_List_List_int___461() {
    
    List<int> value_tmp0 = [];
    List<List<int>> value = [value_tmp0];
    
    List<int> copy_tmp0 = [];
    List<List<int>> copy = [copy_tmp0];
    int other_tmp0_tmp0 = -3;
    List<int> other_tmp0 = [other_tmp0_tmp0];
    int other_tmp1_tmp0 = -2;
    int other_tmp1_tmp1 = -1;
    List<int> other_tmp1 = [other_tmp1_tmp0, other_tmp1_tmp1];
    List<List<int>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<List<int>>: [[]]");
    assert(!(value == other), "different List<List<int>>: [[]] [[-3], [-2, -1]]");
    assertEqual(true, true);
}
        
void test_List_List_int___462() {
    int value_tmp0_tmp0 = -3;
    List<int> value_tmp0 = [value_tmp0_tmp0];
    int value_tmp1_tmp0 = -2;
    int value_tmp1_tmp1 = -1;
    List<int> value_tmp1 = [value_tmp1_tmp0, value_tmp1_tmp1];
    List<List<int>> value = [value_tmp0, value_tmp1];
    int copy_tmp0_tmp0 = -3;
    List<int> copy_tmp0 = [copy_tmp0_tmp0];
    int copy_tmp1_tmp0 = -2;
    int copy_tmp1_tmp1 = -1;
    List<int> copy_tmp1 = [copy_tmp1_tmp0, copy_tmp1_tmp1];
    List<List<int>> copy = [copy_tmp0, copy_tmp1];
    
    List<List<int>> other = [];
    assert(value == copy, "equals List<List<int>>: [[-3], [-2, -1]]");
    assert(!(value == other), "different List<List<int>>: [[-3], [-2, -1]] []");
    assertEqual(true, true);
}
        
void test_List_List_float___463() {
    
    List<List<float>> value = [];
    
    List<List<float>> copy = [];
    
    List<float> other_tmp0 = [];
    List<List<float>> other = [other_tmp0];
    assert(value == copy, "equals List<List<float>>: []");
    assert(!(value == other), "different List<List<float>>: [] [[]]");
    assertEqual(true, true);
}
        
void test_List_List_float___464() {
    
    List<float> value_tmp0 = [];
    List<List<float>> value = [value_tmp0];
    
    List<float> copy_tmp0 = [];
    List<List<float>> copy = [copy_tmp0];
    float other_tmp0_tmp0 = 0.0;
    List<float> other_tmp0 = [other_tmp0_tmp0];
    float other_tmp1_tmp0 = -0.0;
    float other_tmp1_tmp1 = 3.14;
    List<float> other_tmp1 = [other_tmp1_tmp0, other_tmp1_tmp1];
    List<List<float>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<List<float>>: [[]]");
    assert(!(value == other), "different List<List<float>>: [[]] [[0.0], [-0.0, 3.14]]");
    assertEqual(true, true);
}
        
void test_List_List_float___465() {
    float value_tmp0_tmp0 = 0.0;
    List<float> value_tmp0 = [value_tmp0_tmp0];
    float value_tmp1_tmp0 = -0.0;
    float value_tmp1_tmp1 = 3.14;
    List<float> value_tmp1 = [value_tmp1_tmp0, value_tmp1_tmp1];
    List<List<float>> value = [value_tmp0, value_tmp1];
    float copy_tmp0_tmp0 = 0.0;
    List<float> copy_tmp0 = [copy_tmp0_tmp0];
    float copy_tmp1_tmp0 = -0.0;
    float copy_tmp1_tmp1 = 3.14;
    List<float> copy_tmp1 = [copy_tmp1_tmp0, copy_tmp1_tmp1];
    List<List<float>> copy = [copy_tmp0, copy_tmp1];
    
    List<List<float>> other = [];
    assert(value == copy, "equals List<List<float>>: [[0.0], [-0.0, 3.14]]");
    assert(!(value == other), "different List<List<float>>: [[0.0], [-0.0, 3.14]] []");
    assertEqual(true, true);
}
        
void test_List_List_String___466() {
    
    List<List<String>> value = [];
    
    List<List<String>> copy = [];
    
    List<String> other_tmp0 = [];
    List<List<String>> other = [other_tmp0];
    assert(value == copy, "equals List<List<String>>: []");
    assert(!(value == other), "different List<List<String>>: [] [[]]");
    assertEqual(true, true);
}
        
void test_List_List_String___467() {
    
    List<String> value_tmp0 = [];
    List<List<String>> value = [value_tmp0];
    
    List<String> copy_tmp0 = [];
    List<List<String>> copy = [copy_tmp0];
    String other_tmp0_tmp0 = "";
    List<String> other_tmp0 = [other_tmp0_tmp0];
    String other_tmp1_tmp0 = "Hello World!";
    String other_tmp1_tmp1 = "pi";
    List<String> other_tmp1 = [other_tmp1_tmp0, other_tmp1_tmp1];
    List<List<String>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<List<String>>: [[]]");
    assert(!(value == other), "different List<List<String>>: [[]] [[\"\"], [\"Hello World!\", \"pi\"]]");
    assertEqual(true, true);
}
        
void test_List_List_String___468() {
    String value_tmp0_tmp0 = "";
    List<String> value_tmp0 = [value_tmp0_tmp0];
    String value_tmp1_tmp0 = "Hello World!";
    String value_tmp1_tmp1 = "pi";
    List<String> value_tmp1 = [value_tmp1_tmp0, value_tmp1_tmp1];
    List<List<String>> value = [value_tmp0, value_tmp1];
    String copy_tmp0_tmp0 = "";
    List<String> copy_tmp0 = [copy_tmp0_tmp0];
    String copy_tmp1_tmp0 = "Hello World!";
    String copy_tmp1_tmp1 = "pi";
    List<String> copy_tmp1 = [copy_tmp1_tmp0, copy_tmp1_tmp1];
    List<List<String>> copy = [copy_tmp0, copy_tmp1];
    
    List<List<String>> other = [];
    assert(value == copy, "equals List<List<String>>: [[\"\"], [\"Hello World!\", \"pi\"]]");
    assert(!(value == other), "different List<List<String>>: [[\"\"], [\"Hello World!\", \"pi\"]] []");
    assertEqual(true, true);
}
        
void test_List_List_Scalar___469() {
    
    List<List<Scalar>> value = [];
    
    List<List<Scalar>> copy = [];
    
    List<Scalar> other_tmp0 = [];
    List<List<Scalar>> other = [other_tmp0];
    assert(value == copy, "equals List<List<Scalar>>: []");
    assert(!(value == other), "different List<List<Scalar>>: [] [[]]");
    assertEqual(true, true);
}
        
void test_List_List_Scalar___470() {
    
    List<Scalar> value_tmp0 = [];
    List<List<Scalar>> value = [value_tmp0];
    
    List<Scalar> copy_tmp0 = [];
    List<List<Scalar>> copy = [copy_tmp0];
    Scalar other_tmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_tmp0 = [other_tmp0_tmp0];
    Scalar other_tmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar other_tmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_tmp1 = [other_tmp1_tmp0, other_tmp1_tmp1];
    List<List<Scalar>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<List<Scalar>>: [[]]");
    assert(!(value == other), "different List<List<Scalar>>: [[]] [[unsafe(0).asScalar()], [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]]");
    assertEqual(true, true);
}
        