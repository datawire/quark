// Quark Runtime

package io.datawire;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.Scanner;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class quark_runtime {
    // Unused because Math.floorMod exists
    public static int modulo(int a, int b) {
        return (a % b + b) % b;
    }

    private static final ExecutorService pool = new ThreadPoolExecutor(0, 103, 42, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>());

    private static String _url_get(String urlStr) throws Exception {
        URL url = new URL(urlStr);
        InputStreamReader reader = new InputStreamReader(url.openStream());
        // Stolen from https://tfetimes.com/readconvert-an-inputstream-to-a-string/
        Scanner scanner = new Scanner(reader).useDelimiter("\\A");
        String res = scanner.hasNext() ? scanner.next() : "";
        return res;
    }

    public static String url_get(String urlStr) {
        try {
            return _url_get(urlStr);
        } catch (Exception e) {
            return "error";
        }
    }

    public static void url_get_async(final String urlStr, final Async<String> cb) {
        pool.execute(new Runnable() {
                public void run() {
                    try {
                        String result = _url_get(urlStr);
                        cb.callback(result);
                    } catch (Exception e) {
                        cb.errback("error");
                    }
                }
            });
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
