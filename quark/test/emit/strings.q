void test_split() {
    String chunk = "a:b:c:d:e:f";
    String sep = ":";
    List<String> pieces = chunk.split(sep);
    print("size: " + pieces.size().toString());
    int i = 0;
    while ( i < pieces.size() ) {
        print("piece[" + i.toString() + "] = '" + pieces[i] + "'");
        i = i + 1;
    }
}

void main() {
    test_split();
}
