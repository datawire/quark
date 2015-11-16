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

// xfail:py
// xfail:js

void main() {
    Codec c = defaultCodec();
    String hello = "hello world!";
    Buffer b = c.buffer(500);
    print(b.putStringUTF8(0, hello).toString());
    print(c.toHexdump(b, 0, hello.size(), 2));
    print(c.toBase64(b, 0, hello.size()));

    Buffer d = c.fromHexdump("0x0102 0304 0506 0708 09");
    print(c.toHexdump(d, 0, d.capacity(), 1));
    int i = 0;
    int e = d.capacity();
    while (i < e) {
        if ( (i + 1) < (e + 1)) {
            byte vb = d.getByte(i);
            print("B[" + i.toString() + "]=" + vb.toString() + "   " + hexb(vb));
        }
        if ( (i + 2) < (e + 1)) {
            short vs = d.getShort(i);
            print("S[" + i.toString() + "]=" + vs.toString() + "   " + hexs(vs));
        }
        if ( (i + 4) < (e + 1)) {
            int vi = d.getInt(i);
            print("I[" + i.toString() + "]=" + vi.toString() + "   " + hexi(vi));
        }
        if ( (i + 8) < (e + 1)) {
            long vl = d.getLong(i);
            print("L[" + i.toString() + "]=" + vl.toString() + "   " + hexl(vl));
        }
        i = i + 1;
    }

    Buffer f = c.fromBase64("eWF5");
    print(f.getStringUTF8(0,3));
}
