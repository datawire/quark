class TestByte {
    void run() {
        Map<byte,byte> map = new Map<byte,byte>();
        byte b = 3;
        print(b.toString());
        print(self.func().toString());
    }
    byte func() {
        return new byte();
    }
}

class TestShort {
    void run() {
        Map<short,short> map = new Map<short,short>();
        short b = 3;
        print(b.toString());
        print(self.func().toString());
    }
    short func() {
        return new short();
    }
}

class TestInt {
    void run() {
        Map<int,int> map = new Map<int,int>();
        int b = 3;
        print(b.toString());
        print(self.func().toString());
    }
    int func() {
        return new int();
    }
}

class TestLong {
    void run() {
        Map<long,long> map = new Map<long,long>();
        // the following declaration does not translate to java
        // xfail:java
        long b = 3;
        print(b.toString());
        print(self.func().toString());
    }
    long func() {
        return new long();
    }
}

void main(List<String> args) {
    new TestByte().run();
    new TestShort().run();
    new TestInt().run();
    new TestLong().run();
}
