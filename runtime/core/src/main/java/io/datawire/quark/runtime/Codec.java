package io.datawire.quark.runtime;


/**
 * Various String and Buffer conversion routines
 */
public interface Codec {
    /**
     * Create an empty buffer with the specified capacity
     */
    Buffer buffer(int capacity);
    /**
     * Encode the specified slice of the buffer and insert a space every 2^spaceScale bytes
     */
    String toHexdump(Buffer buffer, int offeset, int length, int spaceScale);

    /**
     * decode the hexdump ignoring leading 0x and any intervening spaces
     */
    Buffer fromHexdump(String hex);

    /**
     * Encode the specified slice of the buffer as Base64
     */
    String toBase64(Buffer buffer, int offset, int length);

    /**
     * decode the Base64 enccoded string
     */
    Buffer fromBase64(String base64);
}
