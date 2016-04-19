include io/datawire/quark/runtime/Condition.java;
include io/datawire/quark/runtime/Lock.java;
include io/datawire/quark/runtime/Mutex.java;
include io/datawire/quark/runtime/TLS.java;
include io/datawire/quark/runtime/TLSInitializer.java;

namespace quark {
namespace concurrent {

    @doc("The contract between event implementations and Collector")
    interface Event {
        EventContext getContext();
        void fireEvent();
    }

    @doc("event handler for a future completion")
    interface FutureListener {
        void onFuture(Future future) {}
    }

    @doc("internal class that binds a listener to a future")
    class FutureCompletion extends Event {
        Future future;
        FutureListener listener;
        FutureCompletion(Future future, FutureListener listener) {
            self.future = future;
            self.listener = listener;
        }
        EventContext getContext() {
            return self.future;
        }
        void fireEvent() {
            self.listener.onFuture(self.future);
        }
    }

    @doc("Captures the current context, base class for all event source implementations")
    class EventContext {
        Context _context;
        EventContext() {
            self._context = Context.current();
        }
        Context getContext() { return self._context; }
    }

    @doc("The base class for value objects")
    class Future extends EventContext {
        bool _finished;
        String _error;
        List<FutureCompletion> _callbacks;
        Lock _lock;
        Future() {
            self._finished = false;
            self._callbacks = null;
            self._lock = new Lock();
        }
        void onFinished(FutureListener callback) {
            self._lock.acquire(); // XXX: block-scoped locks, pleeze
            if (self._finished) {
                self._context.collector.put(new FutureCompletion(self, callback));
            } else {
                if (self._callbacks == null) {
                    self._callbacks = [];
                }
                self._callbacks.add(new FutureCompletion(self, callback));
            }
            self._lock.release();
        }
        void finish(String error) {
            List<FutureCompletion> callbacks = null;
            self._lock.acquire();
            if (!self._finished) {
                self._finished = true;
                self._error = error;
                callbacks = self._callbacks; // transfer to local
                self._callbacks = null;
            }
            self._lock.release();
            if (callbacks != null) {
                int i = 0;
                while (i < callbacks.size()) {
                    self._context.collector.put(callbacks[i]);
                    i = i + 1;
                }
            }
        }
        bool isFinished() {
            self._lock.acquire();
            bool finished = self._finished;
            self._lock.release();
            return finished;
        }

        String getError() {
            self._lock.acquire();
            String error = self._error;
            self._lock.release();
            return error;
        }

        void await(float timeout) {
            new FutureWait().wait(self, timeout);
        }
    }

    @doc("Synchronization point for a Future.)")
    class FutureWait extends FutureListener {
        Condition _lock;
        Future _future;
        FutureWait() {
            self._lock = new Condition();
            self._future = null;
        }
        // TODO: make sure not to call from a runtime thread (implies
        // anywhere in Node
        void wait(Future future, float timeout) {
            if (future.isFinished()) {
                return;
            }
            self._future = future;
            self._future.onFinished(self);
            long rounded = (1000.0*timeout).round();
            long deadline = now() + rounded;
            while(!self._future.isFinished()) {
                long remaining = deadline - now();
                if (rounded != 0) {
                    if (remaining <= 0) {
                        break;
                    }
                } else {
                    remaining = 3141;
                }
                self._lock.acquire();
                self._lock.waitWakeup(remaining);
                self._lock.release();
            }
            self._future = null;
        }
        void onFuture(Future future) {
            self._lock.acquire();
            self._lock.wakeup();
            self._lock.release();
        }

        static Future waitFor(Future future, float timeout) {
            // XXX: probably check if current thread is allowed to
            // wait -- which should never be true for quark threads
            // and configurable for user threads, probably through a
            // context, or through a dedicated TLS
            if (false) {
                // TODO: it should be possible to reuse a FutureWait and have one per thread
                FutureWait w = new FutureWait();
                w.wait(future, timeout);
                if (!future.isFinished()) {
                    // XXX: sync contract is broken if there was timeout. fail the future?
                }
            }
            return future;
        }
    }

    @doc("A simple FIFO")
    class Queue<T> {
        List<T> items;
        int head;
        int tail;
        Queue() {
            self.items = new List<T>();
            self.head = 0;
            self.tail = 0;
        }
        void put(T item) {
            if (self.tail < self.items.size()) {
                self.items[self.tail] = item;
            } else {
                self.items.add(item);
            }
            self.tail = self.tail + 1;
        }

        T get() {
            T item = null;
            if (self.head < self.tail) {
                item = self.items[self.head];
                self.head = self.head + 1;
            } else {
                if (self.head > 0) {
                    self.head = 0;
                    self.tail = 0;
                }
            }
            return item;
        }
        int size() {
            return self.tail - self.head;
        }
    }

    @doc("Fire events one by one with no locks held")
    class CollectorExecutor extends Task {
        Queue<Event> events;
        Collector collector;
        CollectorExecutor(Collector collector) {
            self.events = new Queue<Event>();
            self.collector = collector;
        }
        void _start() {
            // internal method, always called under a collector lock
            self.events = self.collector._swap(self.events);
            if (self.events.size() > 0) {
                concurrent.Context.runtime().schedule(self, 0.0);
            }
        }
        void onExecute(Runtime runtime) {
            Event next = self.events.get();
            Context old = Context.current();
            while(next != null) {
                Context.swap(next.getContext().getContext());
                next.fireEvent();
                next = self.events.get();
            }
            Context.swap(old);
            self.collector._poll(); // rearm for events that accumulated in the meantime
        }
    }

    @doc("An active queue of events. Each event will fire sequentially, one by one. Multiple instances of Collector are not serialized with eachother and may run in parallel.")
    class Collector {
        Lock lock;
        Queue<Event> pending;
        CollectorExecutor executor;
        bool idle;
        Collector() {
            self.lock = new Lock();
            self.pending = new Queue<Event>();
            self.executor = new CollectorExecutor(self);
            self.idle = true;
        }
        void put(Event event) {
            self.lock.acquire();
            self.pending.put(event);
            if (self.idle) {
                self.executor._start();
            }
            self.lock.release();
        }
        Queue<Event> _swap(Queue<Event> drained) {
            // internal method, always called under a lock
            Queue<Event> pending = self.pending;
            self.idle = pending.size() == 0;
            self.pending = drained;
            return pending;
        }
        void _poll() {
            // internal method
            self.lock.acquire();
            self.executor._start();
            self.lock.release();
        }
    }

    @doc("Timeout expiry handler")
    interface TimeoutListener {
        void onTimeout(Timeout timeout);
    }

    @doc("Timeout expiry event")
    class TimeoutExpiry extends Event {
       Timeout timeout;
       TimeoutListener listener;
       TimeoutExpiry(Timeout timeout, TimeoutListener listener) {
           self.timeout = timeout;
           self.listener = listener;
       }
       EventContext getContext() {
           return self.timeout;
       }
       void fireEvent() {
           self.listener.onTimeout(self.timeout);
       }
    }

    @doc("Timeout")
    class Timeout extends EventContext, Task {
        float timeout;
        Lock lock;
        TimeoutListener listener;
        Timeout(float timeout) {
            self.timeout = timeout;
            self.listener = null;
            self.lock = new Lock();
        }
        void start(TimeoutListener listener) {
            self.listener = listener;
            float delay = self.timeout;
            concurrent.Context.runtime().schedule(self, delay);
        }
        void cancel() {
            self.lock.acquire();
            self.listener = null;
            self.lock.release();
        }

        void onExecute(Runtime runtime) {
            self.lock.acquire();
            if (self.listener != null) {
                self._context.collector.put(new TimeoutExpiry(self, self.listener));
                self.listener = null;
            }
            self.lock.release();
        }
    }

    @doc("internal")
    class TLSContextInitializer extends TLSInitializer<Context> {
        Context getValue() {
            return new Context(Context.global());
        }
    }

    @doc("The logical stack for async stuff.")
    class Context {
        static Context _global = null;
        static TLS<Context> _current = new TLS<Context>(new TLSContextInitializer());
        static Context current() {
            return _current.getValue();
        }
        static Context global() {
            if (_global == null) {
                _global = new Context(null);
            }
            return _global;
        }

        static Runtime runtime() {
            return current()._runtime;
        }

        static void swap(Context c) {
            _current.setValue(c);
        }

        // XXX: push / pop ?  seems like it would be best if
        // push/pop were balanced automatically -- they only need to
        // be balanced at the point of push, async method will be
        // switch-to the right leaf by the collector

        // nested Context leave cleanup to GC -- we do not track events associated with a context

        // XXX: user data storage: a map?
        //  - keyed by Object?
        //  - by string?
        //  - by class?
        //  - hidden by flyweight accessor / annotations (key object offering typesafe get/set methods)
        //  - magically mapped to static-like properties? "<magic> String foo;" carries enough information

        Context(Context parent) {
            self._parent = parent;
            if (parent == null) {
                // global context
                self._runtime = spi.RuntimeFactory.factory.makeRuntime();
                self.collector = new Collector();
            } else {
                self._runtime = parent._runtime;
                self.collector = parent.collector;
            }
        }

        // XXX: should these be also stored using the same mechanism as user data?
        Context _parent;
        Runtime _runtime;
        Collector collector;
    }

    @mapping($java{io.datawire.quark.runtime.TLSInitializer} $py{_TLSInitializer} $js{_qrt.TLSInitializer}  $rb{::DatawireQuarkCore::TLSInitializer})
    primitive TLSInitializer<T> {
        T getValue();
    }

    @mapping($java{io.datawire.quark.runtime.TLS} $py{_TLS} $js{_qrt.TLS} $rb{::DatawireQuarkCore::TLS})
    primitive TLS<Context> {
        // FIXME: work around the compiler bug by renaming the template parameter to the only user
        macro TLS(TLSInitializer<Context> initializer) $java{new io.datawire.quark.runtime.TLS($initializer)}
                                                       $py{_TLS($initializer)}
                                                       $rb{::DatawireQuarkCore::TLS.new($initializer)}
                                                       $js{new _qrt.TLS($initializer)};
        Context getValue();
        void setValue(Context c);
    }

    @mapping($java{io.datawire.quark.runtime.Mutex} $py{_Mutex} $js{_qrt.Mutex} $rb{::DatawireQuarkCore::Mutex})
    primitive Mutex {
        void acquire();
        void release();
    }

    @mapping($java{io.datawire.quark.runtime.Lock} $py{_Lock} $js{_qrt.Lock} $rb{::DatawireQuarkCore::Lock})
    primitive Lock extends Mutex {
    }

    @mapping($java{io.datawire.quark.runtime.Condition} $py{_Condition} $js{_qrt.Condition} $rb{::DatawireQuarkCore::Condition})
    primitive Condition extends Mutex {
        void waitWakeup(long timeout) {}
        void wakeup() {}
    }
}}
