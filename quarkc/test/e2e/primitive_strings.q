class StringTest {
    void concat() {
        assertEqual(true, "ab" == "a" + "b");
        assertEqual(true, "ab" == "ab" + "");
        assertEqual(true, "ab" == "" + "ab");

        assertEqual(true, "a\nb" == "a\nb" + "");
        assertEqual(true, "a\nb" == "a\n" + "b");
        assertEqual(true, "a\nb" == "a" + "\nb");
        assertEqual(true, "a\nb" == "" + "a\nb");

        assertEqual(true, "ab\n" == "ab\n" + "");
        assertEqual(true, "ab\n" == "ab" + "\n");
        assertEqual(true, "ab\n" == "a" + "b\n");
        assertEqual(true, "ab\n" == "" + "ab\n");

        assertEqual(true, "a" == "\x61");
        assertEqual(true, "\x0a" == "\n");
    }

    void substring() {
        assertEqual(true, "abc" == "abcdefghi".substring(0, 3));
        assertEqual(true, "def" == "abcdefghi".substring(3, 6));
        assertEqual(true, "ghi" == "abcdefghi".substring(6, 9));
    }

    void equals() {
        assertEqual(true, ("abc" == "abc"));
        assertEqual(false, ("abc" == "def"));
    }

    void upper_lower() {
        assertEqual(true, "asdf" == "AsDf".toLower());
        assertEqual(true, "ASDF" == "AsDf".toUpper());
    }

    void strip() {
        assertEqual(true, "Abc".strip() == "Abc");
        assertEqual(true, "Abc ".strip() == "Abc");
        assertEqual(true, " Abc".strip() == "Abc");
        assertEqual(true, " Abc ".strip() == "Abc");
        assertEqual(true, "\t \nAbc\n \t ".strip() == "Abc");

        List<String> ws = ["", " ", "\t", "\n", "\r"];
        String s = "<--->";
        int i = 0;
        while (i < ws.size()) {
            int j = 0;
            while (j < ws.size()) {
                assertEqual(true, s == (ws[i] + s + ws[j]).strip());
                j = j + 1;
            }
            assertEqual(true, "" == ws[i].strip());
            i = i + 1;
        }
    }

    void join() {
        assertEqual(true, "".join([]) == "");
        assertEqual(true, "++".join([]) == "");
        assertEqual(true, "".join(["a", "bc"]) == "abc");
        assertEqual(true, "++".join(["a", "bc", "d"]) == "a++bc++d");
    }

    void split() {
        List<String> l = ["a", "c"];
        assertEqual(true, "abc".split("b") == l);
        l = ["a", "c", "", "d"];
        assertEqual(true, "aGOcGOGOd".split("GO") == l);
        l = ["abc"];
        assertEqual(true, "abc".split("z") == l);
    }

    void replaceAll() {
        assertEqual(true, "abc".replaceAll("bc", "z") == "az");
        assertEqual(true, "aGOdGO".replaceAll("GO", "me") == "amedme");
        // Make sure we're not somehow using regexs:
        assertEqual(true, "a.csc".replaceAll(".c", "z") == "azsc");
    }

    void endsWith() {
        assertEqual(true, "abc".endsWith("") == true);
        assertEqual(true, "abc".endsWith("c") == true);
        assertEqual(true, "abc".endsWith("bc") == true);
        assertEqual(true, "abc".endsWith("abc") == true);
        assertEqual(true, "abc".endsWith("abcd") == false);
        assertEqual(true, "abc".endsWith("ab") == false);
        assertEqual(true, "abc".endsWith("z") == false);
    }

    void startsWith() {
        assertEqual(true, "abc".startsWith("") == true);
        assertEqual(true, "abc".startsWith("a") == true);
        assertEqual(true, "abc".startsWith("ab") == true);
        assertEqual(true, "abc".startsWith("abc") == true);
        assertEqual(true, "abc".startsWith("abcd") == false);
        assertEqual(true, "abc".startsWith("bc") == false);
        assertEqual(true, "abc".startsWith("z") == false);
    }

    void find() {
        assertEqual(true, "Abc".find("z") == -1);
        assertEqual(true, "Abc".find("") == 0);
        assertEqual(true, "Abc".find("A") == 0);
        assertEqual(true, "Abc".find("Ab") == 0);
        assertEqual(true, "Abc".find("Abc") == 0);
        assertEqual(true, "Abc".find("Abcz") == -1);
        assertEqual(true, "Abc".find("zAbc") == -1);
        assertEqual(true, "Abc".find("b") == 1);
        assertEqual(true, "Abc".find("bc") == 1);
        assertEqual(true, "Abc".find("c") == 2);
    }
}
