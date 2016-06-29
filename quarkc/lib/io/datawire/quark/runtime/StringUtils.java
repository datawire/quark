package io.datawire.quark.runtime;

public class StringUtils {
    public static Boolean lt(String a, String b) { return a.compareTo(b) < 0; }
    public static Boolean le(String a, String b) { return a.compareTo(b) <= 0; }
    public static Boolean gt(String a, String b) { return a.compareTo(b) > 0; }
    public static Boolean ge(String a, String b) { return a.compareTo(b) >= 0; }
    public static Integer parseInt(String val, Integer guard) {
        try {
            return Integer.valueOf(val.trim(), 10);
        }
        catch (NumberFormatException ex) {
            return guard;
        }
    }
    public static Long parseLong(String val, Long guard) {
        try {
            return Long.valueOf(val.trim(), 10);
        }
        catch (NumberFormatException ex) {
            return guard;
        }
    }
}
