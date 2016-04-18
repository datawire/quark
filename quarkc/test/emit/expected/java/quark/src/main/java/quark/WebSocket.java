package quark;

public interface WebSocket {
    public static quark.reflect.Class quark_WebSocket_ref = quark_md.Root.quark_WebSocket_md;
     Boolean send(String message);
     Boolean sendBinary(io.datawire.quark.runtime.Buffer bytes);
     Boolean close();
}
