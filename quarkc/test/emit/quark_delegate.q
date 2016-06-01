quark 0.6.100;
class Message {
    String encode() {
        return "ENCODED";
    }
}

class Ping extends Message {}
class Pong extends Message {
    String toString() {
        return "PONG";
    }
}

class Test {

    Object bar(String name, List<Object> args, List<Object> options) {
        print(args);
        return null;
    }

    @delegate(self.bar)
    void foo(String foo, String bar, int baz);

    Message rpc(String name, Message msg, List<Object> options) {
        print(msg.encode());
        if (name == "hello") {
            return new Pong();
        } else {
            return null;
        }
    }

    @delegate(rpc)
    Pong hello(Ping ping);

}

void main(List<String> args) {
    Test t = new Test();
    t.foo("one", "two", 3);
    print(t.hello(new Ping()).toString());
}
