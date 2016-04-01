from quark_runtime import *



def hexb(v):
    c = _default_codec();
    b = (c).buffer(1);
    (b).putByte(0, v);
    return (c).toHexdump(b, 0, 1, 10)


def hexs(v):
    c = _default_codec();
    b = (c).buffer(2);
    (b).putShort(0, v);
    return (c).toHexdump(b, 0, 2, 10)


def hexi(v):
    c = _default_codec();
    b = (c).buffer(4);
    (b).putInt(0, v);
    return (c).toHexdump(b, 0, 4, 10)


def hexl(v):
    c = _default_codec();
    b = (c).buffer(8);
    (b).putLong(0, v);
    return (c).toHexdump(b, 0, 8, 10)


def hexf(v):
    c = _default_codec();
    b = (c).buffer(8);
    (b).putFloat(0, v);
    return (c).toHexdump(b, 0, 8, 10)

def call_main(): import sys; main(_List(sys.argv[1:]))
def main(args):
    c = _default_codec();
    hello = u"hello world!";
    b = (c).buffer(500);
    _println(str((b).putStringUTF8(0, hello)));
    _println((c).toHexdump(b, 0, len(hello), 2));
    _println((c).toBase64(b, 0, len(hello)));
    d = (c).fromHexdump(u"0x0000000102 0304 0506");
    _println((c).toHexdump(d, 0, (d).capacity(), 1));
    i = 0;
    e = (d).capacity();
    while ((i) < (e)):
        if (((i) + (1)) < ((e) + (1))):
            vb = (d).getByte(i);
            _println((((((u"B[") + (str(i))) + (u"]=")) + (str(vb))) + (u"   ")) + (hexb(vb)));

        if (((i) + (2)) < ((e) + (1))):
            vs = (d).getShort(i);
            _println((((((u"S[") + (str(i))) + (u"]=")) + (str(vs))) + (u"   ")) + (hexs(vs)));

        if (((i) + (4)) < ((e) + (1))):
            vi = (d).getInt(i);
            _println((((((u"I[") + (str(i))) + (u"]=")) + (str(vi))) + (u"   ")) + (hexi(vi)));

        if (((i) + (8)) < ((e) + (1))):
            vl = (d).getLong(i);
            _println((((((u"L[") + (str(i))) + (u"]=")) + (str(vl))) + (u"   ")) + (hexl(vl)));

        i = (i) + (1)

    f = (c).fromBase64(u"eWF5");
    _println((f).getStringUTF8(0, 3));
    g = (c).fromHexdump(u"3f d5 55 55 55 55 84 3f");
    _println((u"float BE ") + ((c).toHexdump(g, 0, 8, 1)));
    _println((u"float ") + (repr((g).getFloat(0))));
    h = ((c).buffer(8)).littleEndian();
    (h).putFloat(0, (g).getFloat(0));
    _println((u"float LE ") + ((c).toHexdump(h, 0, 8, 1)));
