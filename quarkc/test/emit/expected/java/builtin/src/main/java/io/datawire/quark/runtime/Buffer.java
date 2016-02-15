package io.datawire.quark.runtime;


/**
 * A stateless buffer of bytes. Default byte order is network byte order.
 * For little endian byte order buffer get a view of the buffer through littleEndian() accessor
 */
public interface Buffer {
    /**
     * capacity of the buffer
     */
    int capacity();

    /**
     * read a byte at the specified index
     */
    byte getByte(int index);
    /**
     * write a byte at the specified index
     */
    void putByte(int index, int value);

    /**
     * read a short at the specified index
     */
    short getShort(int index);
    /**
     * write a short at the specified index
     */
    void putShort(int index, int value);

    /**
     * read a int at the specified index
     */
    int getInt(int index);
    /**
     * write a int at the specified index
     */
    void putInt(int index, int value);

    /**
     * read a long at the specified index
     */
    long getLong(int index);
    /**
     * write a long at the specified index
     */
    void putLong(int index, long value);

    /**
     * read a float at the specified index
     */
    Double getFloat(int index);
    /**
     * write a float at the specified index
     */
    void putFloat(int index, Double value);

    /**
     * decode length bytes as a UTF8 string at the specified index
     */
    String getStringUTF8(int index, int length);
    /**
     * write a string encoded in UTF8 at the specified index and return encoded length
     */
    int putStringUTF8(int index, String value);

    /**
     * get a view of the range
     */
    Buffer getSlice(int index, int length);
    /**
     * copy length bytes from the source buffer starting at offset to the specified index
     */
    void putSlice(int index, Buffer source, int offset, int length);

    /**
     * get a littleEndian view of the same buffer
     */
    Buffer littleEndian();

    /**
     * true if the buffer decodes in network byte order
     */
    boolean isNetworkByteOrder();
}
