package binary;

import quark.concurrent.Context;
import binary.Binary;

public class ServerMain {

    public static void main(String[] args) {
        quark.Runtime runtime = Context.runtime();
        runtime.serveWS("ws://127.0.0.1:8910/binary", new Binary(runtime));
    }

}
