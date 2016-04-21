import quark.test;

void main(List<String> args) {
    test.run(args);
}

class URLTest {

    void checkParse(String url, String scheme, String host, String port, String path) {
        URL parsed = URL.parse(url);
        checkEqual(scheme, parsed.scheme);
        checkEqual(host, parsed.host);
        checkEqual(port, parsed.port);
        checkEqual(path, parsed.path);
        checkEqual(url, parsed.toString());
    }

    void test1() { checkParse("http://example.org/foo/bar", "http", "example.org", null, "/foo/bar"); }
    void test2() { checkParse("http://example.org:123/foo/bar", "http", "example.org", "123", "/foo/bar"); }
    void test3() { checkParse("http://example.org", "http", "example.org", null, null); }
    void test4() { checkParse("example.org", null, "example.org", null, null); }
    void test5() { checkParse("example.org:123", null, "example.org", "123", null); }
    void test6() { checkParse("/foo/bar/baz", null, null, null, "/foo/bar/baz"); }

}
