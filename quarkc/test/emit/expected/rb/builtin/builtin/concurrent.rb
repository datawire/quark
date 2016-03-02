require "datawire-quark-core"
require "../../builtin"
require "../../builtin_md"


class Event < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def getContext()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def fireEvent()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class FutureListener < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def onFuture(future)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class FutureCompletion < Object
    attr_accessor :future, :listener

    
    def initialize(future, listener)
        
        self.__init_fields__
        (self).future = future
        (self).listener = listener

        nil
    end



    
    def getContext()
        
        return (self).future

        nil
    end

    def fireEvent()
        
        (self).listener.onFuture((self).future)

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.FutureCompletion"

        nil
    end

    def _getField(name)
        
        if ((name) == ("future"))
            return (self).future
        end
        if ((name) == ("listener"))
            return (self).listener
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("future"))
            (self).future = value
        end
        if ((name) == ("listener"))
            (self).listener = value
        end

        nil
    end

    def __init_fields__()
        

        self.future = nil
        self.listener = nil

        nil
    end


end

class EventContext < Object
    attr_accessor :_context

    
    def initialize()
        
        self.__init_fields__
        (self)._context = Context.current()

        nil
    end



    
    def getContext()
        
        return (self)._context

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.EventContext"

        nil
    end

    def _getField(name)
        
        if ((name) == ("_context"))
            return (self)._context
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("_context"))
            (self)._context = value
        end

        nil
    end

    def __init_fields__()
        

        self._context = nil

        nil
    end


end

class Future < EventContext
    attr_accessor :_finished, :_error, :_callbacks, :_lock

    
    def initialize()
        
        super()
        (self)._finished = false
        (self)._callbacks = nil
        (self)._lock = .new()

        nil
    end



    
    def onFinished(callback)
        
        (self)._lock.acquire()
        if ((self)._finished)
            ((self)._context).collector.put(FutureCompletion.new(self, callback))
        else
            if (((self)._callbacks) == (nil))
                (self)._callbacks = DatawireQuarkCore::List.new([])
            end
            ((self)._callbacks) << (FutureCompletion.new(self, callback))
        end
        (self)._lock.release()

        nil
    end

    def finish(error)
        
        callbacks = nil
        (self)._lock.acquire()
        if (!((self)._finished))
            (self)._finished = true
            (self)._error = error
            callbacks = (self)._callbacks
            (self)._callbacks = nil
        end
        (self)._lock.release()
        if ((callbacks) != (nil))
            i = 0
            while ((i) < ((callbacks).size)) do
                ((self)._context).collector.put((callbacks)[i])
                i = (i) + (1)
            end
        end

        nil
    end

    def isFinished()
        
        (self)._lock.acquire()
        finished = (self)._finished
        (self)._lock.release()
        return finished

        nil
    end

    def getError()
        
        (self)._lock.acquire()
        error = (self)._error
        (self)._lock.release()
        return error

        nil
    end

    def await(timeout)
        
        FutureWait.new().wait(self, timeout)

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.Future"

        nil
    end

    def _getField(name)
        
        if ((name) == ("_context"))
            return (self)._context
        end
        if ((name) == ("_finished"))
            return (self)._finished
        end
        if ((name) == ("_error"))
            return (self)._error
        end
        if ((name) == ("_callbacks"))
            return (self)._callbacks
        end
        if ((name) == ("_lock"))
            return (self)._lock
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("_context"))
            (self)._context = value
        end
        if ((name) == ("_finished"))
            (self)._finished = value
        end
        if ((name) == ("_error"))
            (self)._error = value
        end
        if ((name) == ("_callbacks"))
            (self)._callbacks = value
        end
        if ((name) == ("_lock"))
            (self)._lock = value
        end

        nil
    end

    def __init_fields__()
        

        self._finished = nil
        self._error = nil
        self._callbacks = nil
        self._lock = nil

        nil
    end


end

class FutureWait < Object
    attr_accessor :_lock, :_future

    
    def initialize()
        
        self.__init_fields__
        (self)._lock = .new()
        (self)._future = nil

        nil
    end



    
    def wait(future, timeout)
        
        if (future.isFinished())
            return
        end
        (self)._future = future
        (self)._future.onFinished(self)
        rounded = ((1000.0) * (timeout)).round)
        deadline = (DatawireQuarkCore.now) + (rounded)
        while (!((self)._future.isFinished())) do
            remaining = (deadline) - (DatawireQuarkCore.now)
            if ((rounded) != (0))
                if ((remaining) <= ((0)))
                    break
                end
            else
                remaining = (3141)
            end
            (self)._lock.acquire()
            (self)._lock.waitWakeup(remaining)
            (self)._lock.release()
        end
        (self)._future = nil

        nil
    end

    def onFuture(future)
        
        (self)._lock.acquire()
        (self)._lock.wakeup()
        (self)._lock.release()

        nil
    end

    def self.waitFor(future, timeout)
        
        if (false)
            w = FutureWait.new()
            w.wait(future, timeout)
            if (!(future.isFinished()))
                nil
            end
        end
        return future

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.FutureWait"

        nil
    end

    def _getField(name)
        
        if ((name) == ("_lock"))
            return (self)._lock
        end
        if ((name) == ("_future"))
            return (self)._future
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("_lock"))
            (self)._lock = value
        end
        if ((name) == ("_future"))
            (self)._future = value
        end

        nil
    end

    def __init_fields__()
        

        self._lock = nil
        self._future = nil

        nil
    end


end

class Queue < Object
    attr_accessor :items, :head, :tail

    
    def initialize()
        
        self.__init_fields__
        (self).items = DatawireQuarkCore::List.new()
        (self).head = 0
        (self).tail = 0

        nil
    end



    
    def put(item)
        
        if (((self).tail) < (((self).items).size))
            ((self).items)[(self).tail] = (item)
        else
            ((self).items) << (item)
        end
        (self).tail = ((self).tail) + (1)

        nil
    end

    def get()
        
        item = nil
        if (((self).head) < ((self).tail))
            item = ((self).items)[(self).head]
            (self).head = ((self).head) + (1)
        else
            if (((self).head) > (0))
                (self).head = 0
                (self).tail = 0
            end
        end
        return item

        nil
    end

    def size()
        
        return ((self).tail) - ((self).head)

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.Queue<builtin.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("items"))
            return (self).items
        end
        if ((name) == ("head"))
            return (self).head
        end
        if ((name) == ("tail"))
            return (self).tail
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("items"))
            (self).items = value
        end
        if ((name) == ("head"))
            (self).head = value
        end
        if ((name) == ("tail"))
            (self).tail = value
        end

        nil
    end

    def __init_fields__()
        

        self.items = nil
        self.head = nil
        self.tail = nil

        nil
    end


end

class CollectorExecutor < Object
    attr_accessor :events, :collector

    
    def initialize(collector)
        
        self.__init_fields__
        (self).events = Queue.new()
        (self).collector = collector

        nil
    end



    
    def _start()
        
        (self).events = (self).collector._swap((self).events)
        if (((self).events.size()) > (0))
            Context.runtime().schedule(self, 0.0)
        end

        nil
    end

    def onExecute(runtime)
        
        next = (self).events.get()
        old = Context.current()
        while ((next) != (nil)) do
            Context.swap(next.getContext().getContext())
            next.fireEvent()
            next = (self).events.get()
        end
        Context.swap(old)
        (self).collector._poll()

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.CollectorExecutor"

        nil
    end

    def _getField(name)
        
        if ((name) == ("events"))
            return (self).events
        end
        if ((name) == ("collector"))
            return (self).collector
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("events"))
            (self).events = value
        end
        if ((name) == ("collector"))
            (self).collector = value
        end

        nil
    end

    def __init_fields__()
        

        self.events = nil
        self.collector = nil

        nil
    end


end

class Collector < Object
    attr_accessor :lock, :pending, :executor, :idle

    
    def initialize()
        
        self.__init_fields__
        (self).lock = .new()
        (self).pending = Queue.new()
        (self).executor = CollectorExecutor.new(self)
        (self).idle = true

        nil
    end



    
    def put(event)
        
        (self).lock.acquire()
        (self).pending.put(event)
        if ((self).idle)
            (self).executor._start()
        end
        (self).lock.release()

        nil
    end

    def _swap(drained)
        
        pending = (self).pending
        (self).idle = (pending.size()) == (0)
        (self).pending = drained
        return pending

        nil
    end

    def _poll()
        
        (self).lock.acquire()
        (self).executor._start()
        (self).lock.release()

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.Collector"

        nil
    end

    def _getField(name)
        
        if ((name) == ("lock"))
            return (self).lock
        end
        if ((name) == ("pending"))
            return (self).pending
        end
        if ((name) == ("executor"))
            return (self).executor
        end
        if ((name) == ("idle"))
            return (self).idle
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("lock"))
            (self).lock = value
        end
        if ((name) == ("pending"))
            (self).pending = value
        end
        if ((name) == ("executor"))
            (self).executor = value
        end
        if ((name) == ("idle"))
            (self).idle = value
        end

        nil
    end

    def __init_fields__()
        

        self.lock = nil
        self.pending = nil
        self.executor = nil
        self.idle = nil

        nil
    end


end

class TimeoutListener < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def onTimeout(timeout)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class TimeoutExpiry < Object
    attr_accessor :timeout, :listener

    
    def initialize(timeout, listener)
        
        self.__init_fields__
        (self).timeout = timeout
        (self).listener = listener

        nil
    end



    
    def getContext()
        
        return (self).timeout

        nil
    end

    def fireEvent()
        
        (self).listener.onTimeout((self).timeout)

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.TimeoutExpiry"

        nil
    end

    def _getField(name)
        
        if ((name) == ("timeout"))
            return (self).timeout
        end
        if ((name) == ("listener"))
            return (self).listener
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("timeout"))
            (self).timeout = value
        end
        if ((name) == ("listener"))
            (self).listener = value
        end

        nil
    end

    def __init_fields__()
        

        self.timeout = nil
        self.listener = nil

        nil
    end


end

class Timeout < EventContext
    attr_accessor :timeout, :lock, :listener

    
    def initialize(timeout)
        
        super()
        (self).timeout = timeout
        (self).listener = nil
        (self).lock = .new()

        nil
    end



    
    def start(listener)
        
        (self).listener = listener
        delay = (self).timeout
        Context.runtime().schedule(self, delay)

        nil
    end

    def cancel()
        
        (self).lock.acquire()
        (self).listener = nil
        (self).lock.release()

        nil
    end

    def onExecute(runtime)
        
        (self).lock.acquire()
        if (((self).listener) != (nil))
            ((self)._context).collector.put(TimeoutExpiry.new(self, (self).listener))
            (self).listener = nil
        end
        (self).lock.release()

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.Timeout"

        nil
    end

    def _getField(name)
        
        if ((name) == ("_context"))
            return (self)._context
        end
        if ((name) == ("timeout"))
            return (self).timeout
        end
        if ((name) == ("lock"))
            return (self).lock
        end
        if ((name) == ("listener"))
            return (self).listener
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("_context"))
            (self)._context = value
        end
        if ((name) == ("timeout"))
            (self).timeout = value
        end
        if ((name) == ("lock"))
            (self).lock = value
        end
        if ((name) == ("listener"))
            (self).listener = value
        end

        nil
    end

    def __init_fields__()
        

        self.timeout = nil
        self.lock = nil
        self.listener = nil

        nil
    end


end

class TLSContextInitializer < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def getValue()
        
        return Context.new(Context.global())

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.TLSContextInitializer"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class Context < Object
    attr_accessor :_parent, :_runtime, :collector

    
    def initialize(parent)
        
        self.__init_fields__
        (self)._parent = parent
        if ((parent) == (nil))
            (self)._runtime = 
            (self).collector = Collector.new()
        else
            (self)._runtime = (parent)._runtime
            (self).collector = (parent).collector
        end

        nil
    end



    
    def self.current()
        
        return Context._current.getValue()

        nil
    end

    def self.global()
        
        return Context._global

        nil
    end

    def self.runtime()
        
        return (Context.current())._runtime

        nil
    end

    def self.swap(c)
        
        Context._current.setValue(c)

        nil
    end

    def _getClass()
        
        return "builtin.concurrent.Context"

        nil
    end

    def _getField(name)
        
        if ((name) == ("_global"))
            return Context._global
        end
        if ((name) == ("_current"))
            return Context._current
        end
        if ((name) == ("_parent"))
            return (self)._parent
        end
        if ((name) == ("_runtime"))
            return (self)._runtime
        end
        if ((name) == ("collector"))
            return (self).collector
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("_global"))
            Context._global = value
        end
        if ((name) == ("_current"))
            Context._current = value
        end
        if ((name) == ("_parent"))
            (self)._parent = value
        end
        if ((name) == ("_runtime"))
            (self)._runtime = value
        end
        if ((name) == ("collector"))
            (self).collector = value
        end

        nil
    end

    def __init_fields__()
        

        self._parent = nil
        self._runtime = nil
        self.collector = nil

        nil
    end


end
