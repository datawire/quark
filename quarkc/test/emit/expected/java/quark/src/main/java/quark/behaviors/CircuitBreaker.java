package quark.behaviors;

public class CircuitBreaker implements io.datawire.quark.runtime.Task, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_behaviors_CircuitBreaker_ref = quark_md.Root.quark_behaviors_CircuitBreaker_md;
    public String id;
    public Integer failureLimit;
    public Double retestDelay;
    public Boolean active = true;
    public Integer failureCount = 0;
    public io.datawire.quark.runtime.Lock mutex = new io.datawire.quark.runtime.Lock();
    public CircuitBreaker(String id, Integer failureLimit, Double retestDelay) {
        (this).id = id;
        (this).failureLimit = failureLimit;
        (this).retestDelay = retestDelay;
    }
    public void succeed() {
        ((this).mutex).acquire();
        if (((this).failureCount) > (0)) {
            (quark.Client.logger).info(("- CLOSE breaker on ") + ((this).id));
        }
        (this).failureCount = 0;
        ((this).mutex).release();
    }
    public void fail() {
        Boolean doSchedule = false;
        ((this).mutex).acquire();
        (this).failureCount = ((this).failureCount) + (1);
        if (((this).failureCount) >= ((this).failureLimit)) {
            (this).active = false;
            doSchedule = true;
            (quark.Client.logger).warn(("- OPEN breaker on ") + ((this).id));
        }
        ((this).mutex).release();
        if (doSchedule) {
            (quark.concurrent.Context.runtime()).schedule(this, (this).retestDelay);
        }
    }
    public void onExecute(io.datawire.quark.runtime.Runtime runtime) {
        ((this).mutex).acquire();
        (this).active = true;
        (quark.Client.logger).warn(("- RETEST breaker on ") + ((this).id));
        ((this).mutex).release();
    }
    public String _getClass() {
        return "quark.behaviors.CircuitBreaker";
    }
    public Object _getField(String name) {
        if ((name)==("id") || ((name) != null && (name).equals("id"))) {
            return (this).id;
        }
        if ((name)==("failureLimit") || ((name) != null && (name).equals("failureLimit"))) {
            return (this).failureLimit;
        }
        if ((name)==("retestDelay") || ((name) != null && (name).equals("retestDelay"))) {
            return (this).retestDelay;
        }
        if ((name)==("active") || ((name) != null && (name).equals("active"))) {
            return (this).active;
        }
        if ((name)==("failureCount") || ((name) != null && (name).equals("failureCount"))) {
            return (this).failureCount;
        }
        if ((name)==("mutex") || ((name) != null && (name).equals("mutex"))) {
            return (this).mutex;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("id") || ((name) != null && (name).equals("id"))) {
            (this).id = (String) (value);
        }
        if ((name)==("failureLimit") || ((name) != null && (name).equals("failureLimit"))) {
            (this).failureLimit = (Integer) (value);
        }
        if ((name)==("retestDelay") || ((name) != null && (name).equals("retestDelay"))) {
            (this).retestDelay = (Double) (value);
        }
        if ((name)==("active") || ((name) != null && (name).equals("active"))) {
            (this).active = (Boolean) (value);
        }
        if ((name)==("failureCount") || ((name) != null && (name).equals("failureCount"))) {
            (this).failureCount = (Integer) (value);
        }
        if ((name)==("mutex") || ((name) != null && (name).equals("mutex"))) {
            (this).mutex = (io.datawire.quark.runtime.Lock) (value);
        }
    }
}
