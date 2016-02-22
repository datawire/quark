package builtin;

public class Client implements io.datawire.quark.runtime.QObject {
    public static io.datawire.quark.runtime.Logger logger = (builtin.concurrent.Context.runtime()).logger("quark.client");
    public static builtin.reflect.Class builtin_Map_builtin_String_builtin_ServiceInstance__ref = builtin_md.Root.builtin_Map_builtin_String_builtin_ServiceInstance__md;
    public static builtin.reflect.Class builtin_Client_ref = builtin_md.Root.builtin_Client_md;
    public Resolver resolver;
    public String serviceName;
    public Double _timeout;
    public Integer _failureLimit = 3;
    public Double _retestDelay = 30.0;
    public io.datawire.quark.runtime.Lock mutex;
    public java.util.HashMap<String,ServiceInstance> instanceMap;
    public Integer counter;
    public Client(String serviceName) {
        (this).serviceName = serviceName;
        (this).resolver = new DegenerateResolver();
        (this)._timeout = 0.0;
        (this).mutex = new io.datawire.quark.runtime.Lock();
        (this).instanceMap = io.datawire.quark.runtime.Builtins.map(new Object[]{});
        (this).counter = 0;
        Integer failureLimit = (Integer) (((io.datawire.quark.runtime.QObject) (this))._getField("failureLimit"));
        if (!((failureLimit)==(null) || ((failureLimit) != null && (failureLimit).equals(null)))) {
            (this)._failureLimit = failureLimit;
        }
        (Client.logger).info((((this).toString()) + (" failureLimit ")) + (Integer.toString((this)._failureLimit)));
        Double retestDelay = (Double) (((io.datawire.quark.runtime.QObject) (this))._getField("retestDelay"));
        if (!((retestDelay)==(null) || ((retestDelay) != null && (retestDelay).equals(null)))) {
            (this)._retestDelay = retestDelay;
        }
        (Client.logger).info((((this).toString()) + (" retestDelay ")) + (Double.toString((this)._retestDelay)));
    }
    public void setResolver(Resolver resolver) {
        (this).resolver = resolver;
    }
    public ServiceInstance getInstance() {
        java.util.ArrayList<String> urls = ((this).resolver).resolve((this).serviceName);
        if (((urls).size()) <= (0)) {
            return (ServiceInstance) (null);
        }
        java.util.Collections.sort(urls, null);
        ((this).mutex).acquire();
        ServiceInstance result = (ServiceInstance) (null);
        Integer next = Math.floorMod(((this).counter), ((urls).size()));
        (this).counter = ((this).counter) + (1);
        Integer idx = next;
        while (true) {
            String url = (urls).get(idx);
            ServiceInstance instance = ((this).instanceMap).get(url);
            if ((instance)==(null) || ((instance) != null && (instance).equals(null))) {
                instance = new ServiceInstance((this).serviceName, url, this._failureLimit, this._retestDelay);
                ((this).instanceMap).put((url), (instance));
            }
            if ((instance).isActive()) {
                (Client.logger).info(((((("- ") + ((this).serviceName)) + (" using instance ")) + (Integer.toString((idx) + (1)))) + (": ")) + (url));
                result = instance;
                break;
            }
            idx = Math.floorMod(((idx) + (1)), ((urls).size()));
            if ((idx)==(next) || ((idx) != null && (idx).equals(next))) {
                (Client.logger).info((("- ") + ((this).serviceName)) + (": no live instances! giving up."));
                break;
            }
        }
        ((this).mutex).release();
        return result;
    }
    public String getName() {
        return (this).serviceName;
    }
    public Double getTimeout() {
        return (this)._timeout;
    }
    public void setTimeout(Double timeout) {
        (this)._timeout = timeout;
    }
    public String _getClass() {
        return "builtin.Client";
    }
    public Object _getField(String name) {
        if ((name)==("logger") || ((name) != null && (name).equals("logger"))) {
            return Client.logger;
        }
        if ((name)==("resolver") || ((name) != null && (name).equals("resolver"))) {
            return (this).resolver;
        }
        if ((name)==("serviceName") || ((name) != null && (name).equals("serviceName"))) {
            return (this).serviceName;
        }
        if ((name)==("_timeout") || ((name) != null && (name).equals("_timeout"))) {
            return (this)._timeout;
        }
        if ((name)==("_failureLimit") || ((name) != null && (name).equals("_failureLimit"))) {
            return (this)._failureLimit;
        }
        if ((name)==("_retestDelay") || ((name) != null && (name).equals("_retestDelay"))) {
            return (this)._retestDelay;
        }
        if ((name)==("mutex") || ((name) != null && (name).equals("mutex"))) {
            return (this).mutex;
        }
        if ((name)==("instanceMap") || ((name) != null && (name).equals("instanceMap"))) {
            return (this).instanceMap;
        }
        if ((name)==("counter") || ((name) != null && (name).equals("counter"))) {
            return (this).counter;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("logger") || ((name) != null && (name).equals("logger"))) {
            Client.logger = (io.datawire.quark.runtime.Logger) (value);
        }
        if ((name)==("resolver") || ((name) != null && (name).equals("resolver"))) {
            (this).resolver = (Resolver) (value);
        }
        if ((name)==("serviceName") || ((name) != null && (name).equals("serviceName"))) {
            (this).serviceName = (String) (value);
        }
        if ((name)==("_timeout") || ((name) != null && (name).equals("_timeout"))) {
            (this)._timeout = (Double) (value);
        }
        if ((name)==("_failureLimit") || ((name) != null && (name).equals("_failureLimit"))) {
            (this)._failureLimit = (Integer) (value);
        }
        if ((name)==("_retestDelay") || ((name) != null && (name).equals("_retestDelay"))) {
            (this)._retestDelay = (Double) (value);
        }
        if ((name)==("mutex") || ((name) != null && (name).equals("mutex"))) {
            (this).mutex = (io.datawire.quark.runtime.Lock) (value);
        }
        if ((name)==("instanceMap") || ((name) != null && (name).equals("instanceMap"))) {
            (this).instanceMap = (java.util.HashMap<String,ServiceInstance>) (value);
        }
        if ((name)==("counter") || ((name) != null && (name).equals("counter"))) {
            (this).counter = (Integer) (value);
        }
    }
}
