// Quark Runtime

package io.datawire;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.Scanner;

public class quark_runtime {
    // Unused because Math.floorMod exists
    public static int modulo(int a, int b) {
        return (a % b + b) % b;
    }

    public static String url_get(String urlStr) {
        try {
            URL url = new URL(urlStr);
            InputStreamReader reader = new InputStreamReader(url.openStream());
            // Stolen from https://tfetimes.com/readconvert-an-inputstream-to-a-string/
            Scanner scanner = new Scanner(reader).useDelimiter("\\A");
            String res = scanner.hasNext() ? scanner.next() : "";
            return res;
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

    public static abstract class Async<T> {
        public abstract void callback(T result);
        public abstract void errback(String failure);
    }
}
