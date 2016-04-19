package binary;

import quark.concurrent.Context;
import binary.Binary;

public class ServerMain {

    public static void main(String[] args) {
        quark.Runtime runtime = Context.runtime();
        System.out.println("Java binary server starting");
        runtime.serveWS("ws://127.0.0.1:8910/binary", new Binary(runtime));
    }

}
