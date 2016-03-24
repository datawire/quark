package quark;

public class ServiceInstance implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_ServiceInstance_ref = quark_md.Root.quark_ServiceInstance_md;
    public String serviceName;
    public String url;
    public quark.behaviors.CircuitBreaker breaker;
    public ServiceInstance(String serviceName, String url, Integer failureLimit, Double retestDelay) {
        (this).serviceName = serviceName;
        (this).url = url;
        (this).breaker = new quark.behaviors.CircuitBreaker((((("[") + (serviceName)) + (" at ")) + (url)) + ("]"), failureLimit, retestDelay);
    }
    public Boolean isActive() {
        return ((this).breaker).active;
    }
    public String getURL() {
        return (this).url;
    }
    public void succeed(String info) {
        if (!((this).isActive())) {
            (Client.logger).info(((("- CLOSE breaker for ") + ((this).serviceName)) + (" at ")) + ((this).url));
        }
        ((this).breaker).succeed();
    }
    public void fail(String info) {
        if (!((this).isActive())) {
            (Client.logger).warn(((("- OPEN breaker for ") + ((this).serviceName)) + (" at ")) + ((this).url));
        }
        ((this).breaker).fail();
    }
    public String _getClass() {
        return "quark.ServiceInstance";
    }
    public Object _getField(String name) {
        if ((name)==("serviceName") || ((Object)(name) != null && ((Object) (name)).equals("serviceName"))) {
            return (this).serviceName;
        }
        if ((name)==("url") || ((Object)(name) != null && ((Object) (name)).equals("url"))) {
            return (this).url;
        }
        if ((name)==("breaker") || ((Object)(name) != null && ((Object) (name)).equals("breaker"))) {
            return (this).breaker;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("serviceName") || ((Object)(name) != null && ((Object) (name)).equals("serviceName"))) {
            (this).serviceName = (String) (value);
        }
        if ((name)==("url") || ((Object)(name) != null && ((Object) (name)).equals("url"))) {
            (this).url = (String) (value);
        }
        if ((name)==("breaker") || ((Object)(name) != null && ((Object) (name)).equals("breaker"))) {
            (this).breaker = (quark.behaviors.CircuitBreaker) (value);
        }
    }
}
