module Quark
def self.builtin_codec_lib; MODULE_builtin_codec_lib; end
module MODULE_builtin_codec_lib
def self.hexb(v)
    
    c = DatawireQuarkCore.default_codec
    b = c.buffer(1)
    b.putByte(0, v)
    return c.toHexdump(b, 0, 1, 10)


    nil
end

def self.hexs(v)
    
    c = DatawireQuarkCore.default_codec
    b = c.buffer(2)
    b.putShort(0, v)
    return c.toHexdump(b, 0, 2, 10)


    nil
end

def self.hexi(v)
    
    c = DatawireQuarkCore.default_codec
    b = c.buffer(4)
    b.putInt(0, v)
    return c.toHexdump(b, 0, 4, 10)


    nil
end

def self.hexl(v)
    
    c = DatawireQuarkCore.default_codec
    b = c.buffer(8)
    b.putLong(0, v)
    return c.toHexdump(b, 0, 8, 10)


    nil
end

def self.hexf(v)
    
    c = DatawireQuarkCore.default_codec
    b = c.buffer(8)
    b.putFloat(0, v)
    return c.toHexdump(b, 0, 8, 10)


    nil
end

def self.main()
    
    c = DatawireQuarkCore.default_codec
    hello = "hello world!"
    b = c.buffer(500)
    DatawireQuarkCore.print((b.putStringUTF8(0, hello)).to_s)
    DatawireQuarkCore.print(c.toHexdump(b, 0, (hello).size, 2))
    DatawireQuarkCore.print(c.toBase64(b, 0, (hello).size))
    d = c.fromHexdump("0x0000000102 0304 0506")
    DatawireQuarkCore.print(c.toHexdump(d, 0, d.capacity(), 1))
    i = 0
    e = d.capacity()
    while ((i) < (e)) do
        if (((i) + (1)) < ((e) + (1)))
            vb = d.getByte(i)
            DatawireQuarkCore.print(((((("B[") + ((i).to_s)) + ("]=")) + ((vb).to_s)) + ("   ")) + (::Quark.builtin_codec_lib.hexb(vb)))
        end
        if (((i) + (2)) < ((e) + (1)))
            vs = d.getShort(i)
            DatawireQuarkCore.print(((((("S[") + ((i).to_s)) + ("]=")) + ((vs).to_s)) + ("   ")) + (::Quark.builtin_codec_lib.hexs(vs)))
        end
        if (((i) + (4)) < ((e) + (1)))
            vi = d.getInt(i)
            DatawireQuarkCore.print(((((("I[") + ((i).to_s)) + ("]=")) + ((vi).to_s)) + ("   ")) + (::Quark.builtin_codec_lib.hexi(vi)))
        end
        if (((i) + (8)) < ((e) + (1)))
            vl = d.getLong(i)
            DatawireQuarkCore.print(((((("L[") + ((i).to_s)) + ("]=")) + ((vl).to_s)) + ("   ")) + (::Quark.builtin_codec_lib.hexl(vl)))
        end
        i = (i) + (1)
    end
    f = c.fromBase64("eWF5")
    DatawireQuarkCore.print(f.getStringUTF8(0, 3))
    g = c.fromHexdump("3f d5 55 55 55 55 84 3f")
    DatawireQuarkCore.print(("float BE ") + (c.toHexdump(g, 0, 8, 1)))
    DatawireQuarkCore.print(("float ") + ((g.getFloat(0)).to_s))
    h = c.buffer(8).littleEndian()
    h.putFloat(0, g.getFloat(0))
    DatawireQuarkCore.print(("float LE ") + (c.toHexdump(h, 0, 8, 1)))


    nil
end
end # module MODULE_builtin_codec_lib
end # module Quark
