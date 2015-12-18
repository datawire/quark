package binary;

import io.datawire.quark.netty.QuarkNettyRuntime;
import binary.BinaryClient;

public class ClientMain {

    public static void main(String[] args) {
        BinaryClient client = new binary.BinaryClient(QuarkNettyRuntime.getRuntime(), "ws://127.0.0.1:8910/binary");
    }

}
