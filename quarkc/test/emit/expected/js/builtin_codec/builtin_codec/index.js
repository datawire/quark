var _qrt = require("quark/quark_runtime.js");


function hexb(v) {
    var c = _qrt.defaultCodec();
    var b = (c).buffer(1);
    (b).putByte(0, v);
    return (c).toHexdump(b, 0, 1, 10);
}
exports.hexb = hexb;

function hexs(v) {
    var c = _qrt.defaultCodec();
    var b = (c).buffer(2);
    (b).putShort(0, v);
    return (c).toHexdump(b, 0, 2, 10);
}
exports.hexs = hexs;

function hexi(v) {
    var c = _qrt.defaultCodec();
    var b = (c).buffer(4);
    (b).putInt(0, v);
    return (c).toHexdump(b, 0, 4, 10);
}
exports.hexi = hexi;

function hexl(v) {
    var c = _qrt.defaultCodec();
    var b = (c).buffer(8);
    (b).putLong(0, v);
    return (c).toHexdump(b, 0, 8, 10);
}
exports.hexl = hexl;

function hexf(v) {
    var c = _qrt.defaultCodec();
    var b = (c).buffer(8);
    (b).putFloat(0, v);
    return (c).toHexdump(b, 0, 8, 10);
}
exports.hexf = hexf;
exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var c = _qrt.defaultCodec();
    var hello = "hello world!";
    var b = (c).buffer(500);
    _qrt.print(_qrt.toString((b).putStringUTF8(0, hello)));
    _qrt.print((c).toHexdump(b, 0, (hello).length, 2));
    _qrt.print((c).toBase64(b, 0, (hello).length));
    var d = (c).fromHexdump("0x0000000102 0304 0506");
    _qrt.print((c).toHexdump(d, 0, (d).capacity(), 1));
    var i = 0;
    var e = (d).capacity();
    while ((i) < (e)) {
        if (((i) + (1)) < ((e) + (1))) {
            var vb = (d).getByte(i);
            _qrt.print(((((("B[") + (_qrt.toString(i))) + ("]=")) + (_qrt.toString(vb))) + ("   ")) + (hexb(vb)));
        }
        if (((i) + (2)) < ((e) + (1))) {
            var vs = (d).getShort(i);
            _qrt.print(((((("S[") + (_qrt.toString(i))) + ("]=")) + (_qrt.toString(vs))) + ("   ")) + (hexs(vs)));
        }
        if (((i) + (4)) < ((e) + (1))) {
            var vi = (d).getInt(i);
            _qrt.print(((((("I[") + (_qrt.toString(i))) + ("]=")) + (_qrt.toString(vi))) + ("   ")) + (hexi(vi)));
        }
        if (((i) + (8)) < ((e) + (1))) {
            var vl = (d).getLong(i);
            _qrt.print(((((("L[") + (_qrt.toString(i))) + ("]=")) + (_qrt.toString(vl))) + ("   ")) + (hexl(vl)));
        }
        i = (i) + (1);
    }
    var f = (c).fromBase64("eWF5");
    _qrt.print((f).getStringUTF8(0, 3));
    var g = (c).fromHexdump("3f d5 55 55 55 55 84 3f");
    _qrt.print(("float BE ") + ((c).toHexdump(g, 0, 8, 1)));
    _qrt.print(("float ") + (_qrt.toString((g).getFloat(0))));
    var h = ((c).buffer(8)).littleEndian();
    (h).putFloat(0, (g).getFloat(0));
    _qrt.print(("float LE ") + ((c).toHexdump(h, 0, 8, 1)));
}
exports.main = main;
