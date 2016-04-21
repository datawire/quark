package binary;

import quark.concurrent.Context;
import binary.BinaryClient;

public class ClientMain {

    public static void main(String[] args) {
        BinaryClient client = new binary.BinaryClient(Context.runtime(), "ws://127.0.0.1:8910/binary");
    }

}
