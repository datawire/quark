package quark;

public class Client implements io.datawire.quark.runtime.QObject {
    public static io.datawire.quark.runtime.Logger logger = (quark.concurrent.Context.runtime()).logger("quark.client");
    public static quark.reflect.Class quark_Map_quark_String_quark_ServiceInstance__ref = quark_md.Root.quark_Map_quark_String_quark_ServiceInstance__md;
    public static quark.reflect.Class quark_Client_ref = quark_md.Root.quark_Client_md;
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
        if (!((failureLimit)==(null) || ((Object)(failureLimit) != null && ((Object) (failureLimit)).equals(null)))) {
            (this)._failureLimit = failureLimit;
        }
        (Client.logger).info(((("" + (this))) + (" failureLimit ")) + (Integer.toString((this)._failureLimit)));
        Double retestDelay = (Double) (((io.datawire.quark.runtime.QObject) (this))._getField("retestDelay"));
        if (!((retestDelay)==(null) || ((Object)(retestDelay) != null && ((Object) (retestDelay)).equals(null)))) {
            (this)._retestDelay = retestDelay;
        }
        (Client.logger).info(((("" + (this))) + (" retestDelay ")) + (Double.toString((this)._retestDelay)));
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
        Integer next = io.datawire.quark.runtime.Builtins.modulo(((this).counter), ((urls).size()));
        (this).counter = ((this).counter) + (1);
        Integer idx = next;
        while (true) {
            String url = (urls).get(idx);
            ServiceInstance instance = ((this).instanceMap).get(url);
            if ((instance)==(null) || ((Object)(instance) != null && ((Object) (instance)).equals(null))) {
                instance = new ServiceInstance((this).serviceName, url, this._failureLimit, this._retestDelay);
                ((this).instanceMap).put((url), (instance));
            }
            if ((instance).isActive()) {
                (Client.logger).info(((((("- ") + ((this).serviceName)) + (" using instance ")) + (Integer.toString((idx) + (1)))) + (": ")) + (url));
                result = instance;
                break;
            }
            idx = io.datawire.quark.runtime.Builtins.modulo(((idx) + (1)), ((urls).size()));
            if ((idx)==(next) || ((Object)(idx) != null && ((Object) (idx)).equals(next))) {
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
        return "quark.Client";
    }
    public Object _getField(String name) {
        if ((name)==("logger") || ((Object)(name) != null && ((Object) (name)).equals("logger"))) {
            return Client.logger;
        }
        if ((name)==("resolver") || ((Object)(name) != null && ((Object) (name)).equals("resolver"))) {
            return (this).resolver;
        }
        if ((name)==("serviceName") || ((Object)(name) != null && ((Object) (name)).equals("serviceName"))) {
            return (this).serviceName;
        }
        if ((name)==("_timeout") || ((Object)(name) != null && ((Object) (name)).equals("_timeout"))) {
            return (this)._timeout;
        }
        if ((name)==("_failureLimit") || ((Object)(name) != null && ((Object) (name)).equals("_failureLimit"))) {
            return (this)._failureLimit;
        }
        if ((name)==("_retestDelay") || ((Object)(name) != null && ((Object) (name)).equals("_retestDelay"))) {
            return (this)._retestDelay;
        }
        if ((name)==("mutex") || ((Object)(name) != null && ((Object) (name)).equals("mutex"))) {
            return (this).mutex;
        }
        if ((name)==("instanceMap") || ((Object)(name) != null && ((Object) (name)).equals("instanceMap"))) {
            return (this).instanceMap;
        }
        if ((name)==("counter") || ((Object)(name) != null && ((Object) (name)).equals("counter"))) {
            return (this).counter;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("logger") || ((Object)(name) != null && ((Object) (name)).equals("logger"))) {
            Client.logger = (io.datawire.quark.runtime.Logger) (value);
        }
        if ((name)==("resolver") || ((Object)(name) != null && ((Object) (name)).equals("resolver"))) {
            (this).resolver = (Resolver) (value);
        }
        if ((name)==("serviceName") || ((Object)(name) != null && ((Object) (name)).equals("serviceName"))) {
            (this).serviceName = (String) (value);
        }
        if ((name)==("_timeout") || ((Object)(name) != null && ((Object) (name)).equals("_timeout"))) {
            (this)._timeout = (Double) (value);
        }
        if ((name)==("_failureLimit") || ((Object)(name) != null && ((Object) (name)).equals("_failureLimit"))) {
            (this)._failureLimit = (Integer) (value);
        }
        if ((name)==("_retestDelay") || ((Object)(name) != null && ((Object) (name)).equals("_retestDelay"))) {
            (this)._retestDelay = (Double) (value);
        }
        if ((name)==("mutex") || ((Object)(name) != null && ((Object) (name)).equals("mutex"))) {
            (this).mutex = (io.datawire.quark.runtime.Lock) (value);
        }
        if ((name)==("instanceMap") || ((Object)(name) != null && ((Object) (name)).equals("instanceMap"))) {
            (this).instanceMap = (java.util.HashMap<String,ServiceInstance>) (value);
        }
        if ((name)==("counter") || ((Object)(name) != null && ((Object) (name)).equals("counter"))) {
            (this).counter = (Integer) (value);
        }
    }
}
