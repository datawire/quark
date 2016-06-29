package io.datawire.quark.runtime;

public class StringUtils {
    public static Boolean lt(String a, String b) { return a.compareTo(b) < 0; }
    public static Boolean le(String a, String b) { return a.compareTo(b) <= 0; }
    public static Boolean gt(String a, String b) { return a.compareTo(b) > 0; }
    public static Boolean ge(String a, String b) { return a.compareTo(b) >= 0; }
}
