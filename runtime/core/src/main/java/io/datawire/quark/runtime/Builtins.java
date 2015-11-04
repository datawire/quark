// Quark Runtime

package io.datawire.quark.runtime;

import io.netty.handler.codec.http.QueryStringEncoder;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.Scanner;
import java.util.Map;
import java.util.List;

public class Builtins {
    // Unused because Math.floorMod exists
    public static int modulo(int a, int b) {
        return (a % b + b) % b;
    }

    public static String url_get(String urlStr) {
        try {
            URL url = new URL(urlStr);
            InputStreamReader reader = new InputStreamReader(url.openStream());
            // Stolen from https://tfetimes.com/readconvert-an-inputstream-to-a-string/
            Scanner scanner = null;
            try {
                scanner = new Scanner(reader).useDelimiter("\\A");
                return scanner.hasNext() ? scanner.next() : "";
            } finally { 
                if (scanner != null) {
                    scanner.close();
                }
            }
        } catch (Exception e) {
            return "error";
        }
    }

    public static void sleep(double seconds) {
        try {
            Thread.sleep((int)(seconds * 1000));
        } catch(InterruptedException ex) {
            Thread.currentThread().interrupt();
        }
    }

    @SuppressWarnings("rawtypes")
    public static String urlencode(Map map) {
        QueryStringEncoder enc = new QueryStringEncoder("");
        for (Object obj : map.entrySet()) {
            Map.Entry entry = (Map.Entry) obj;
            enc.addParam(entry.getKey().toString(), entry.getValue().toString());
        }
        return enc.toString().substring(1);
    }

    public static String join(String sep, List<String> parts) {
        StringBuilder b = new StringBuilder();
        boolean first = true;
        for (String part : parts) {
            if (first) {
                first = false;
            } else {
                b.append(sep);
            }
            b.append(part);
        }
        return b.toString();
    }


}
