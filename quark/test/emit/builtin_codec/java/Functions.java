public class Functions {
    public static String hexb(Byte v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(1);
        (b).putByte(0, v);
        return (c).toHexdump(b, 0, 1, 10);
    }
    public static String hexs(Short v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(2);
        (b).putShort(0, v);
        return (c).toHexdump(b, 0, 2, 10);
    }
    public static String hexi(Integer v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(4);
        (b).putInt(0, v);
        return (c).toHexdump(b, 0, 4, 10);
    }
    public static String hexl(Long v) {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        io.datawire.quark.runtime.Buffer b = (c).buffer(8);
        (b).putLong(0, v);
        return (c).toHexdump(b, 0, 8, 10);
    }
    public static void main() {
        io.datawire.quark.runtime.Codec c = io.datawire.quark.runtime.Builtins.defaultCodec();
        String hello = "hello world!";
        io.datawire.quark.runtime.Buffer b = (c).buffer(500);
        System.out.println(Integer.toString((b).putStringUTF8(0, hello)));
        System.out.println((c).toHexdump(b, 0, (hello).length(), 2));
        System.out.println((c).toBase64(b, 0, (hello).length()));
        io.datawire.quark.runtime.Buffer d = (c).fromHexdump("0x0102 0304 0506 0708 09");
        System.out.println((c).toHexdump(d, 0, (d).capacity(), 1));
        Integer i = 0;
        Integer e = (d).capacity();
        while ((i) < (e)) {
            if (((i) + (1)) < ((e) + (1))) {
                Byte vb = (d).getByte(i);
                System.out.println(((((("B[") + (Integer.toString(i))) + ("]=")) + (Byte.toString(vb))) + ("   ")) + (Functions.hexb(vb)));
            }
            if (((i) + (2)) < ((e) + (1))) {
                Short vs = (d).getShort(i);
                System.out.println(((((("S[") + (Integer.toString(i))) + ("]=")) + (Short.toString(vs))) + ("   ")) + (Functions.hexs(vs)));
            }
            if (((i) + (4)) < ((e) + (1))) {
                Integer vi = (d).getInt(i);
                System.out.println(((((("I[") + (Integer.toString(i))) + ("]=")) + (Integer.toString(vi))) + ("   ")) + (Functions.hexi(vi)));
            }
            if (((i) + (8)) < ((e) + (1))) {
                Long vl = (d).getLong(i);
                System.out.println(((((("L[") + (Integer.toString(i))) + ("]=")) + (Long.toString(vl))) + ("   ")) + (Functions.hexl(vl)));
            }
            i = (i) + (1);
        }
        io.datawire.quark.runtime.Buffer f = (c).fromBase64("eWF5");
        System.out.println((f).getStringUTF8(0, 3));
    }
    public static void main(String[] args) {
        main();
    }
}