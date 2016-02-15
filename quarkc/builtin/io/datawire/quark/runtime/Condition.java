package io.datawire.quark.runtime;

import java.util.concurrent.TimeUnit;

public class Condition extends Lock implements Mutex {
    java.util.concurrent.locks.Condition condition = lock.newCondition();

    public void waitWakeup(long timeout) {
        if (!lock.isHeldByCurrentThread()) {
            String msg = "Illegal waitWakeup of a not-acquired quark Condition.";
            fail(msg);
        }
        try {
            condition.await(timeout, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            // ignore
        }
    }

    public void wakeup() {
        if (!lock.isHeldByCurrentThread()) {
            String msg = "Illegal wakeup of a not-acquired quark Condition.";
            fail(msg);
        }
        condition.signal();
    }
}
