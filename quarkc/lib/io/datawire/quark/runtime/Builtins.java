// Quark Runtime

package io.datawire.quark.runtime;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.handler.codec.base64.Base64;
import io.netty.handler.codec.http.QueryStringEncoder;
import io.netty.util.CharsetUtil;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Map;
import java.util.List;

public class Builtins {
    public static final Comparator<Object> COMPARATOR = new Comparator<Object>() {

        @Override
        public int compare(Object o1, Object o2) {
            if (o1 instanceof Comparable<?>) {
                Comparable<Object> c1 = (Comparable<Object>) o1;
                return c1.compareTo(o2);
            } else {
                return System.identityHashCode(o1) - System.identityHashCode(o2);
            }
        }
    };

    public static int modulo(int a, int b) {
        return a % b + (a*b < 0 ? b : 0);
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

    @SuppressWarnings("rawtypes")
    public static HashMap map(Object[] items) {
        HashMap result = new HashMap();
        for (int i = 0; i < items.length; i++) {
            result.put(items[i], items[i+1]);
            i++;
        }
        return result;
    }

    public static Codec defaultCodec() {
        return new Codec() {
            @Override
            public String toHexdump(Buffer buffer, int offset, int length,
                    int spaceScale) {
                StringBuilder b = new StringBuilder(3*length);
                int sp = (spaceScale > 0 ? 2 << (spaceScale-1) : 1);
                int j = sp;
                for(int i = 0; i < length; i++) {
                    byte value = buffer.getByte(i + offset);
                    int hi = ((value >> 4) & 0xf);
                    int lo = (value & 0xf);
                    if (i == j) {
                        b.append(" ");
                        j += sp;
                    }
                    b.append(Character.forDigit(hi, 16));
                    b.append(Character.forDigit(lo, 16));
                }
                return b.toString();
            }

            @Override
            public String toBase64(Buffer buffer, int offset, int length) {
                ByteBuf temp = Base64.encode(((BufferImpl)buffer).buffer(), offset, length, false);
                return temp.toString(0, temp.capacity(), CharsetUtil.UTF_8);
            }

            @Override
            public Buffer fromHexdump(String hex) {
                hex = hex.trim();
                if (hex.startsWith("0x") || hex.startsWith("0X") ) {
                    hex = hex.substring(2);
                }
                hex = hex.replaceAll(" ", "");
                hex = hex.replaceAll("\t", "");
                hex = hex.replaceAll("\r", "");
                hex = hex.replaceAll("\n", "");
                ByteBuf b = ByteBufAllocator.DEFAULT.buffer(hex.length() / 2);
                for (int i = 0; i < hex.length()-1;) {
                    int hi = Character.digit(hex.charAt(i++), 16);
                    int lo = Character.digit(hex.charAt(i++), 16);
                    b.setByte(i / 2 - 1, (hi << 4) | lo);
                }
                return new BufferImpl(b);
            }

            @Override
            public Buffer fromBase64(String base64) {
                ByteBuf temp = ByteBufAllocator.DEFAULT.buffer();
                int bytes = ByteBufUtil.writeAscii(temp, base64);
                ByteBuf temp2 = Base64.decode(temp, 0, bytes);
                return new BufferImpl(temp2);
            }

            @Override
            public Buffer buffer(int capacity) {
                return new BufferImpl(capacity);
            }
        };
    }

    public static String _getClass(Object obj) {
        if (obj instanceof Boolean) { return "quark.bool"; }

        if (obj instanceof Byte) { return "quark.byte"; }
        if (obj instanceof Short) { return "quark.short"; }
        if (obj instanceof Integer) { return "quark.int"; }
        if (obj instanceof Long) { return "quark.long"; }
        if (obj instanceof Double) { return "quark.float"; }

        if (obj instanceof String) { return "quark.String"; }
        if (obj instanceof List) { return "quark.List<quark.Object>"; }
        if (obj instanceof Map) { return "quark.Map<quark.Object,quark.Object>"; }

        if (obj instanceof QObject) { return ((QObject) obj)._getClass(); }

        return null;
    }

}
