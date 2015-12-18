package binary;

import io.datawire.quark.netty.QuarkNettyRuntime;
import binary.Binary;

public class ServerMain {

    public static void main(String[] args) {
        QuarkNettyRuntime runtime = QuarkNettyRuntime.getRuntime();
        runtime.serveWS("ws://127.0.0.1:8910/binary", new Binary(runtime));
    }

}
