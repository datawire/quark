package io.datawire.quark.runtime;

import java.nio.ByteOrder;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.util.CharsetUtil;

public class BufferImpl implements Buffer {

    private ByteBuf b;

    BufferImpl() {
        this(ByteBufAllocator.DEFAULT.buffer());
    }


    public BufferImpl(ByteBuf b) {
        this.b = b;
        b.writerIndex(b.capacity());
        b.retain();
    }

    public BufferImpl(int capacity) {
        this(ByteBufAllocator.DEFAULT.buffer(capacity));
    }


    ByteBuf buffer() { return b; }

    @Override
    protected void finalize() throws Throwable {
        b.release();
        super.finalize();
    }

    @Override
    public int capacity() {
        return b.capacity();
    }

    @Override
    public byte getByte(int index) {
        return b.getByte(index);
    }

    @Override
    public void putByte(int index, int value) {
        b.setByte(index, value);
    }

    @Override
    public short getShort(int index) {
        return b.getShort(index);
    }

    @Override
    public void putShort(int index, int value) {
        b.setShort(index, value);
    }

    @Override
    public int getInt(int index) {
        return b.getInt(index);
    }

    @Override
    public void putInt(int index, int value) {
        b.setInt(index, value);
    }

    @Override
    public long getLong(int index) {
        return b.getLong(index);
    }

    @Override
    public void putLong(int index, long value) {
        b.setLong(index, value);
    }

    @Override
    public Double getFloat(int index) {
        return b.getDouble(index);
    }

    @Override
    public void putFloat(int index, Double value) {
        b.setDouble(index, value);
    }

    @Override
    public String getStringUTF8(int index, int length) {
        return b.toString(index, length, CharsetUtil.UTF_8);
    }

    @Override
    public int putStringUTF8(int index, String value) {
        ByteBuf temp = b.alloc().buffer();
        int bytes = ByteBufUtil.writeUtf8(temp, value);
        b.setBytes(index, temp, 0, bytes);
        return bytes;
    }

    @Override
    public Buffer getSlice(int index, int length) {
        return new BufferImpl(b.slice(index, length));
    }

    @Override
    public void putSlice(int index, Buffer source, int offset, int length) {
        b.setBytes(index, ((BufferImpl)source).b, offset, length);

    }

    @Override
    public Buffer littleEndian() {
        return new BufferImpl(b.order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override
    public boolean isNetworkByteOrder() {
        return b.order().equals(ByteOrder.BIG_ENDIAN);
    }


    public ByteBuf data() {
        return this.b;
    }
}
