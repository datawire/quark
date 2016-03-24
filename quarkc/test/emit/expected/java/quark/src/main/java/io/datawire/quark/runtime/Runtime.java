package io.datawire.quark.runtime;



public interface Runtime {
    public final class Factory {
        public static Runtime create() {
            String className = "io.datawire.quark.netty.QuarkNettyRuntime";
            // TODO: SPI things
            Class<? extends Runtime> runtimeClass;
            Runtime ret;
            try {
                 runtimeClass = Class.forName(className).asSubclass(Runtime.class);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("Cannot find quark runtime " + className, e);
            }
            try {
                ret = runtimeClass.getConstructor().newInstance();
            } catch (Exception e) {
                throw new RuntimeException("Cannot instantiate quark runtime " + className, e);
            }
            return ret;
        }
    }
    void open(String url, WSHandler handler);
    void request(HTTPRequest request, HTTPHandler handler);
    void schedule(Task handler, Double delayInSeconds);
    Codec codec();
    void serveHTTP(String url, HTTPServlet servlet);
    void serveWS(String url, WSServlet server);
    void respond(HTTPRequest request, HTTPResponse response);
    void fail(String message);
    Logger logger(String topic);
}
