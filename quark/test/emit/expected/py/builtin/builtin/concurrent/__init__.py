from quark_runtime import *

import builtin.reflect
import builtin_md


class Event(object):
    """
    The contract between event implementations and Collector
    """

    def getContext(self): assert False

    def fireEvent(self): assert False

class FutureListener(object):
    """
    event handler for a future completion
    """

    def onFuture(self, future):
        pass

class FutureCompletion(object):
    """
    internal class that binds a listener to a future
    """
    def _init(self):
        self.future = None
        self.listener = None

    def __init__(self, future, listener):
        self._init()
        (self).future = future
        (self).listener = listener

    def getContext(self):
        return (self).future

    def fireEvent(self):
        ((self).listener).onFuture((self).future);

    def _getClass(self):
        return u"builtin.concurrent.FutureCompletion"

    def _getField(self, name):
        if ((name) == (u"future")):
            return (self).future

        if ((name) == (u"listener")):
            return (self).listener

        return None

    def _setField(self, name, value):
        if ((name) == (u"future")):
            (self).future = value

        if ((name) == (u"listener")):
            (self).listener = value

    
FutureCompletion.builtin_concurrent_FutureCompletion_ref = builtin_md.Root.builtin_concurrent_FutureCompletion_md
class EventContext(object):
    """
    Captures the current context, base class for all event source implementations
    """
    def _init(self):
        self._context = None

    def __init__(self):
        self._init()
        (self)._context = Context.current()

    def getContext(self):
        return (self)._context

    def _getClass(self):
        return u"builtin.concurrent.EventContext"

    def _getField(self, name):
        if ((name) == (u"_context")):
            return (self)._context

        return None

    def _setField(self, name, value):
        if ((name) == (u"_context")):
            (self)._context = value

    
EventContext.builtin_concurrent_EventContext_ref = builtin_md.Root.builtin_concurrent_EventContext_md
class Future(EventContext):
    """
    The base class for value objects
    """
    def _init(self):
        EventContext._init(self)
        self._finished = None
        self._error = None
        self._callbacks = None
        self._lock = None

    def __init__(self):
        super(Future, self).__init__();
        (self)._finished = False
        (self)._callbacks = None
        (self)._lock = _Lock()

    def onFinished(self, callback):
        ((self)._lock).acquire();
        if ((self)._finished):
            (((self)._context).collector).put(FutureCompletion(self, callback));
        else:
            if (((self)._callbacks) == (None)):
                (self)._callbacks = _List([])

            ((self)._callbacks).append(FutureCompletion(self, callback));

        ((self)._lock).release();

    def finish(self, error):
        callbacks = None;
        ((self)._lock).acquire();
        if (not ((self)._finished)):
            (self)._finished = True
            (self)._error = error
            callbacks = (self)._callbacks
            (self)._callbacks = None

        ((self)._lock).release();
        if ((callbacks) != (None)):
            i = 0;
            while ((i) < (len(callbacks))):
                (((self)._context).collector).put((callbacks)[i]);
                i = (i) + (1)

        

    def isFinished(self):
        ((self)._lock).acquire();
        finished = (self)._finished;
        ((self)._lock).release();
        return finished

    def getError(self):
        ((self)._lock).acquire();
        error = (self)._error;
        ((self)._lock).release();
        return error

    def _getClass(self):
        return u"builtin.concurrent.Future"

    def _getField(self, name):
        if ((name) == (u"_context")):
            return (self)._context

        if ((name) == (u"_finished")):
            return (self)._finished

        if ((name) == (u"_error")):
            return (self)._error

        if ((name) == (u"_callbacks")):
            return (self)._callbacks

        if ((name) == (u"_lock")):
            return (self)._lock

        return None

    def _setField(self, name, value):
        if ((name) == (u"_context")):
            (self)._context = value

        if ((name) == (u"_finished")):
            (self)._finished = value

        if ((name) == (u"_error")):
            (self)._error = value

        if ((name) == (u"_callbacks")):
            (self)._callbacks = value

        if ((name) == (u"_lock")):
            (self)._lock = value

    
Future.builtin_concurrent_Future_ref = builtin_md.Root.builtin_concurrent_Future_md
class FutureWait(object):
    """
    Synchronization point for a Future.)
    """
    def _init(self):
        self._lock = None
        self._future = None

    def __init__(self):
        self._init()
        (self)._lock = _Condition()
        (self)._future = None

    def wait(self, future, timeout):
        if ((future).isFinished()):
            return

        (self)._future = future
        ((self)._future).onFinished(self);
        deadline = (long(time.time()*1000)) + (timeout);
        while (not (((self)._future).isFinished())):
            remaining = (deadline) - (long(time.time()*1000));
            if ((timeout) != (0)):
                if ((remaining) <= ((0))):
                    break;

            else:
                remaining = (3141)

            ((self)._lock).acquire();
            ((self)._lock).waitWakeup(remaining);
            ((self)._lock).release();

        (self)._future = None

    def onFuture(self, future):
        ((self)._lock).acquire();
        ((self)._lock).wakeup();
        ((self)._lock).release();

    @staticmethod
    def waitFor(future, timeout):
        if (False):
            w = FutureWait();
            (w).wait(future, timeout);
            if (not ((future).isFinished())):
                pass

        return future

    def _getClass(self):
        return u"builtin.concurrent.FutureWait"

    def _getField(self, name):
        if ((name) == (u"_lock")):
            return (self)._lock

        if ((name) == (u"_future")):
            return (self)._future

        return None

    def _setField(self, name, value):
        if ((name) == (u"_lock")):
            (self)._lock = value

        if ((name) == (u"_future")):
            (self)._future = value

    
FutureWait.builtin_concurrent_FutureWait_ref = builtin_md.Root.builtin_concurrent_FutureWait_md
class Queue(object):
    """
    A simple FIFO
    """
    def _init(self):
        self.items = None
        self.head = None
        self.tail = None

    def __init__(self):
        self._init()
        (self).items = _List()
        (self).head = 0
        (self).tail = 0

    def put(self, item):
        if (((self).tail) < (len((self).items))):
            ((self).items)[(self).tail] = (item);
        else:
            ((self).items).append(item);

        (self).tail = ((self).tail) + (1)

    def get(self):
        item = None;
        if (((self).head) < ((self).tail)):
            item = ((self).items)[(self).head]
            (self).head = ((self).head) + (1)
        else:
            if (((self).head) > (0)):
                (self).head = 0
                (self).tail = 0

        return item

    def size(self):
        return ((self).tail) - ((self).head)

    def _getClass(self):
        return u"builtin.concurrent.Queue<Object>"

    def _getField(self, name):
        if ((name) == (u"items")):
            return (self).items

        if ((name) == (u"head")):
            return (self).head

        if ((name) == (u"tail")):
            return (self).tail

        return None

    def _setField(self, name, value):
        if ((name) == (u"items")):
            (self).items = value

        if ((name) == (u"head")):
            (self).head = value

        if ((name) == (u"tail")):
            (self).tail = value

    

class CollectorExecutor(object):
    """
    Fire events one by one with no locks held
    """
    def _init(self):
        self.events = None
        self.collector = None

    def __init__(self, collector):
        self._init()
        (self).events = Queue()
        (self).collector = collector

    def _start(self):
        (self).events = ((self).collector)._swap((self).events)
        if ((((self).events).size()) > (0)):
            (Context.runtime()).schedule(self, 0.0);

    def onExecute(self, runtime):
        next = ((self).events).get();
        old = Context.current();
        while ((next) != (None)):
            Context.swap(((next).getContext()).getContext());
            (next).fireEvent();
            next = ((self).events).get()

        Context.swap(old);
        ((self).collector)._poll();

    def _getClass(self):
        return u"builtin.concurrent.CollectorExecutor"

    def _getField(self, name):
        if ((name) == (u"events")):
            return (self).events

        if ((name) == (u"collector")):
            return (self).collector

        return None

    def _setField(self, name, value):
        if ((name) == (u"events")):
            (self).events = value

        if ((name) == (u"collector")):
            (self).collector = value

    
CollectorExecutor.builtin_concurrent_Queue_builtin_concurrent_Event__ref = builtin_md.Root.builtin_concurrent_Queue_builtin_concurrent_Event__md
CollectorExecutor.builtin_concurrent_CollectorExecutor_ref = builtin_md.Root.builtin_concurrent_CollectorExecutor_md
class Collector(object):
    """
    An active queue of events. Each event will fire sequentially, one by one. Multiple instances of Collector are not serialized with eachother and may run in parallel.
    """
    def _init(self):
        self.lock = None
        self.pending = None
        self.executor = None
        self.idle = None

    def __init__(self):
        self._init()
        (self).lock = _Lock()
        (self).pending = Queue()
        (self).executor = CollectorExecutor(self)
        (self).idle = True

    def put(self, event):
        ((self).lock).acquire();
        ((self).pending).put(event);
        if ((self).idle):
            ((self).executor)._start();

        ((self).lock).release();

    def _swap(self, drained):
        pending = (self).pending;
        (self).idle = ((pending).size()) == (0)
        (self).pending = drained
        return pending

    def _poll(self):
        ((self).lock).acquire();
        ((self).executor)._start();
        ((self).lock).release();

    def _getClass(self):
        return u"builtin.concurrent.Collector"

    def _getField(self, name):
        if ((name) == (u"lock")):
            return (self).lock

        if ((name) == (u"pending")):
            return (self).pending

        if ((name) == (u"executor")):
            return (self).executor

        if ((name) == (u"idle")):
            return (self).idle

        return None

    def _setField(self, name, value):
        if ((name) == (u"lock")):
            (self).lock = value

        if ((name) == (u"pending")):
            (self).pending = value

        if ((name) == (u"executor")):
            (self).executor = value

        if ((name) == (u"idle")):
            (self).idle = value

    
Collector.builtin_concurrent_Collector_ref = builtin_md.Root.builtin_concurrent_Collector_md
class TimeoutListener(object):
    """
    Timeout expiry handler
    """

    def onTimeout(self, timeout): assert False

class TimeoutExpiry(object):
    """
    Timeout expiry event
    """
    def _init(self):
        self.timeout = None
        self.listener = None

    def __init__(self, timeout, listener):
        self._init()
        (self).timeout = timeout
        (self).listener = listener

    def getContext(self):
        return (self).timeout

    def fireEvent(self):
        ((self).listener).onTimeout((self).timeout);

    def _getClass(self):
        return u"builtin.concurrent.TimeoutExpiry"

    def _getField(self, name):
        if ((name) == (u"timeout")):
            return (self).timeout

        if ((name) == (u"listener")):
            return (self).listener

        return None

    def _setField(self, name, value):
        if ((name) == (u"timeout")):
            (self).timeout = value

        if ((name) == (u"listener")):
            (self).listener = value

    
TimeoutExpiry.builtin_concurrent_TimeoutExpiry_ref = builtin_md.Root.builtin_concurrent_TimeoutExpiry_md
class Timeout(EventContext):
    """
    Timeout
    """
    def _init(self):
        EventContext._init(self)
        self.timeout = None
        self.lock = None
        self.listener = None

    def __init__(self, timeout):
        super(Timeout, self).__init__();
        (self).timeout = timeout
        (self).listener = None
        (self).lock = _Lock()

    def start(self, listener):
        (self).listener = listener
        delay = (0.001) * (float((self).timeout));
        (Context.runtime()).schedule(self, delay);

    def cancel(self):
        ((self).lock).acquire();
        (self).listener = None
        ((self).lock).release();

    def onExecute(self, runtime):
        ((self).lock).acquire();
        if (((self).listener) != (None)):
            (((self)._context).collector).put(TimeoutExpiry(self, (self).listener));
            (self).listener = None

        ((self).lock).release();

    def _getClass(self):
        return u"builtin.concurrent.Timeout"

    def _getField(self, name):
        if ((name) == (u"_context")):
            return (self)._context

        if ((name) == (u"timeout")):
            return (self).timeout

        if ((name) == (u"lock")):
            return (self).lock

        if ((name) == (u"listener")):
            return (self).listener

        return None

    def _setField(self, name, value):
        if ((name) == (u"_context")):
            (self)._context = value

        if ((name) == (u"timeout")):
            (self).timeout = value

        if ((name) == (u"lock")):
            (self).lock = value

        if ((name) == (u"listener")):
            (self).listener = value

    
Timeout.builtin_concurrent_Timeout_ref = builtin_md.Root.builtin_concurrent_Timeout_md
class TLSContextInitializer(object):
    """
    internal
    """
    def _init(self):
        pass
    def __init__(self): self._init()

    def getValue(self):
        return Context(Context.global_())

    def _getClass(self):
        return u"builtin.concurrent.TLSContextInitializer"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
TLSContextInitializer.builtin_concurrent_TLSContextInitializer_ref = builtin_md.Root.builtin_concurrent_TLSContextInitializer_md
class Context(object):
    """
    The logical stack for async stuff.
    """
    def _init(self):
        self._parent = None
        self._runtime = None
        self.collector = None

    def __init__(self, parent):
        self._init()
        (self)._parent = parent
        if ((parent) == (None)):
            (self)._runtime = _RuntimeFactory.create()
            (self).collector = Collector()
        else:
            (self)._runtime = (parent)._runtime
            (self).collector = (parent).collector

    @staticmethod
    def current():
        return (Context._current).getValue()

    @staticmethod
    def global_():
        return Context._global

    @staticmethod
    def runtime():
        return (Context.current())._runtime

    @staticmethod
    def swap(c):
        (Context._current).setValue(c);

    def _getClass(self):
        return u"builtin.concurrent.Context"

    def _getField(self, name):
        if ((name) == (u"_global")):
            return Context._global

        if ((name) == (u"_current")):
            return Context._current

        if ((name) == (u"_parent")):
            return (self)._parent

        if ((name) == (u"_runtime")):
            return (self)._runtime

        if ((name) == (u"collector")):
            return (self).collector

        return None

    def _setField(self, name, value):
        if ((name) == (u"_global")):
            Context._global = value

        if ((name) == (u"_current")):
            Context._current = value

        if ((name) == (u"_parent")):
            (self)._parent = value

        if ((name) == (u"_runtime")):
            (self)._runtime = value

        if ((name) == (u"collector")):
            (self).collector = value

    
Context._global = Context(None)
Context._current = _TLS(TLSContextInitializer())
Context.builtin_concurrent_Context_ref = builtin_md.Root.builtin_concurrent_Context_md
