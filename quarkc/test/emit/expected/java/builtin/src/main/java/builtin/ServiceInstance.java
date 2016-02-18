package builtin;

public class ServiceInstance implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class builtin_ServiceInstance_ref = builtin_md.Root.builtin_ServiceInstance_md;
    public String serviceName;
    public String url;
    public builtin.behaviors.CircuitBreaker breaker;
    public ServiceInstance(String serviceName, String url, Integer failureLimit, Double retestDelay) {
        (this).serviceName = serviceName;
        (this).url = url;
        (this).breaker = new builtin.behaviors.CircuitBreaker((((("[") + (serviceName)) + (" at ")) + (url)) + ("]"), failureLimit, retestDelay);
    }
    public Boolean isActive() {
        return ((this).breaker).active;
    }
    public String getURL() {
        return (this).url;
    }
    public void succeed(String info) {
        if (!((this).isActive())) {
            do{System.out.println(((("- CLOSE breaker for ") + ((this).serviceName)) + (" at ")) + ((this).url));System.out.flush();}while(false);
        }
        ((this).breaker).succeed();
    }
    public void fail(String info) {
        if (!((this).isActive())) {
            do{System.out.println(((("- OPEN breaker for ") + ((this).serviceName)) + (" at ")) + ((this).url));System.out.flush();}while(false);
        }
        ((this).breaker).fail();
    }
    public String _getClass() {
        return "builtin.ServiceInstance";
    }
    public Object _getField(String name) {
        if ((name)==("serviceName") || ((name) != null && (name).equals("serviceName"))) {
            return (this).serviceName;
        }
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            return (this).url;
        }
        if ((name)==("breaker") || ((name) != null && (name).equals("breaker"))) {
            return (this).breaker;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("serviceName") || ((name) != null && (name).equals("serviceName"))) {
            (this).serviceName = (String) (value);
        }
        if ((name)==("url") || ((name) != null && (name).equals("url"))) {
            (this).url = (String) (value);
        }
        if ((name)==("breaker") || ((name) != null && (name).equals("breaker"))) {
            (this).breaker = (builtin.behaviors.CircuitBreaker) (value);
        }
    }
}
