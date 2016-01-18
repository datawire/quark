package io.datawire.quark.runtime;

import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Lock implements Mutex {
    protected ReentrantLock lock = new ReentrantLock();
    @Override
    public void acquire() {
        if (lock.isHeldByCurrentThread()) {
            String msg = "Illegal re-acquisition of a quark Lock.";
            fail(msg);
        }
        lock.lock();
    }

    @Override
    public void release() {
        if (!lock.isHeldByCurrentThread()) {
            String msg = "Illegal release of a not-acquired quark Lock.";
            fail(msg);
        }
        lock.unlock();
    }

    protected void fail(String msg) {
        Logger.getLogger(Lock.class.getName()).log(Level.SEVERE, msg, new IllegalStateException(this.lock.toString()));
        System.exit(1); // XXX: we should go via Quark runtime, but need to develop a method to query it, Context is not yet exposed to the native code...
    }
}
