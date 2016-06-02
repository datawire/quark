quark *;
import quark.test;

void main(List<String> args) {
    test.run(args);
}

String hexb(byte v) {
    Codec c = defaultCodec();
    Buffer b = c.buffer(1);
    b.putByte(0,v);
    return c.toHexdump(b,0,1,10);
}

String hexs(short v) {
    Codec c = defaultCodec();
    Buffer b = c.buffer(2);
    b.putShort(0,v);
    return c.toHexdump(b,0,2,10);
}

String hexi(int v) {
    Codec c = defaultCodec();
    Buffer b = c.buffer(4);
    b.putInt(0,v);
    return c.toHexdump(b,0,4,10);
}

String hexl(long v) {
    Codec c = defaultCodec();
    Buffer b = c.buffer(8);
    b.putLong(0,v);
    return c.toHexdump(b,0,8,10);
}

String hexf(float v) {
    Codec c = defaultCodec();
    Buffer b = c.buffer(8);
    b.putFloat(0, v);
    return c.toHexdump(b,0,8,10);
}

class Checker {

    List<String> expected;
    int counter = 0;

    Checker(List<String> expected) {
        self.expected = expected;
    }

    void check(String actual) {
        checkEqual(expected[counter], actual);
        counter = counter + 1;
    }

}

class BufferTest {

    Codec c = defaultCodec();

    void test1() {
        String hello = "hello world!";
        Buffer b = c.buffer(500);
        checkEqual(12, b.putStringUTF8(0, hello));
        checkEqual("68656c6c 6f20776f 726c6421", c.toHexdump(b, 0, hello.size(), 2));
        checkEqual("aGVsbG8gd29ybGQh", c.toBase64(b, 0, hello.size()));
    }

    void test2() {
        // This test was written back when we could only diff
        // outputs. I have refactored it into this test suite to
        // preserve coverage, but this is probably a fragile pattern
        // to copy.
        Checker ch = new Checker(["B[0]=0   00",
                                  "S[0]=0   0000",
                                  "I[0]=1   00000001",
                                  "L[0]=4328719365   0000000102030405",
                                  "B[1]=0   00",
                                  "S[1]=0   0000",
                                  "I[1]=258   00000102",
                                  "L[1]=1108152157446   0000010203040506",
                                  "B[2]=0   00",
                                  "S[2]=1   0001",
                                  "I[2]=66051   00010203",
                                  "B[3]=1   01",
                                  "S[3]=258   0102",
                                  "I[3]=16909060   01020304",
                                  "B[4]=2   02",
                                  "S[4]=515   0203",
                                  "I[4]=33752069   02030405",
                                  "B[5]=3   03",
                                  "S[5]=772   0304",
                                  "I[5]=50595078   03040506",
                                  "B[6]=4   04",
                                  "S[6]=1029   0405",
                                  "B[7]=5   05",
                                  "S[7]=1286   0506",
                                  "B[8]=6   06"]);

        Buffer d = c.fromHexdump("0x0000000102 0304 0506");
        checkEqual("0000 0001 0203 0405 06", c.toHexdump(d, 0, d.capacity(), 1));
        int i = 0;
        int e = d.capacity();

        while (i < e) {
            if ( (i + 1) < (e + 1)) {
                byte vb = d.getByte(i);
                ch.check("B[" + i.toString() + "]=" + vb.toString() + "   " + hexb(vb));
            }
            if ( (i + 2) < (e + 1)) {
                short vs = d.getShort(i);
                ch.check("S[" + i.toString() + "]=" + vs.toString() + "   " + hexs(vs));
            }
            if ( (i + 4) < (e + 1)) {
                int vi = d.getInt(i);
                ch.check("I[" + i.toString() + "]=" + vi.toString() + "   " + hexi(vi));
            }
            if ( (i + 8) < (e + 1)) {
                long vl = d.getLong(i);
                ch.check("L[" + i.toString() + "]=" + vl.toString() + "   " + hexl(vl));
            }
            i = i + 1;
        }
    }

    void test3() {
        Buffer f = c.fromBase64("eWF5");
        checkEqual("yay", f.getStringUTF8(0,3));
    }

    void test4() {
        Buffer g = c.fromHexdump("3f d5 55 55 55 55 84 3f");
        checkEqual("3fd5 5555 5555 843f", c.toHexdump(g,0,8,1));
        checkEqual("0.333333333334", g.getFloat(0).toString());

        Buffer h = c.buffer(8).littleEndian();
        h.putFloat(0, g.getFloat(0));
        checkEqual("3f84 5555 5555 d53f", c.toHexdump(h,0,8,1));
    }

    void testInitialization(int capacity) {
        Buffer b = c.buffer(capacity);
        int idx = 0;
        while (idx < capacity) {
            // WORKAROUND: integer to byte comparison fails on java
            byte zero = 0;
            checkEqual(zero, b.getByte(idx));
            idx = idx + 1;
        }
    }

    void testInitialization3() { testInitialization(3); }

    void testInitialization16() { testInitialization(16); }

    void testInitialization1024() { testInitialization(1024); }

    void testSlice() {
        Buffer b = c.fromHexdump("00 01 02 03");
        checkEqual(4, b.capacity());
        Buffer s = b.getSlice(0, 2);
        checkEqual(2, s.capacity());
        // WORKAROUND: integer to byte comparison fails on java
        byte zero = 0;
        byte one = 1;
        byte two = 2;
        byte three = 3;
        checkEqual(zero, s.getByte(0));
        checkEqual(one, s.getByte(1));

        Buffer s2 = b.getSlice(1, 2);
        checkEqual(2, s2.capacity());
        checkEqual(one, s2.getByte(0));
        checkEqual(two, s2.getByte(1));

        Buffer s3 = b.getSlice(2, 2);
        checkEqual(2, s3.capacity());
        checkEqual(two, s3.getByte(0));
        checkEqual(three, s3.getByte(1));
    }

}
