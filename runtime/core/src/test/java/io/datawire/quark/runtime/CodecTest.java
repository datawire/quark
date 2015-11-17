package io.datawire.quark.runtime;

import static org.junit.Assert.*;

import javax.xml.ws.ServiceMode;

import org.junit.Before;
import org.junit.Test;

public class CodecTest  {

    Codec c;

    @Before
    public void setup() {
        c = Builtins.defaultCodec();
    }

    @Test
    public void testBuffer() {
        assertNotNull(c.buffer(7));
    }

    @Test
    public void testToHexdump() {
        Buffer b = c.buffer(10);
        b.putByte(0, 0x42);
        String h = c.toHexdump(b, 0, 1, 5);
        assertEquals("42", h);
    }

    @Test
    public void testFromHexdump() {
        Buffer b = c.fromHexdump("01020304");
        int i  = b.getInt(0);
        assertEquals(0x01020304, i);
    }

    @Test
    public void testToBase64() {
        Buffer b = c.fromHexdump("01020304");
        String actual = c.toBase64(b, 0, 4);
        assertEquals("AQIDBA==", actual);
    }

    @Test
    public void testFromBase64() {
        Buffer b = c.fromBase64("EBESExQ=");
        int i = b.getInt(0);
        assertEquals(0x10111213, i);
        int j = b.getInt(1);
        assertEquals(0x11121314, j);
    }

}
