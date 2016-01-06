## Concurrency

### Issues:

 - Users need to be aware of the runtime object, this is more
   boilerplate than we would like.

 - We need a well defined model so users can use threads and know
   if/when they need to lock and what (if any) other locks are held.

 - We need to be able to exploit threads on backends that support
   them well.

 - We need our Quark-defined RPC skeleton to be able to access shared
   state such as the routing table supplied by the hub.

 - We need our Quark-defined RPC skeleton to be able to safely
   read-modify-write shared state such as the circuit-breaker that
   tracks whether a given service is up.

### Concurrency Model:

  - I/O Event Sources available to Quark
    + WebSocket, WebSocket Listener
    + HTTPRequest, HTTPRequest Listener
    + The clock

  - Services can be EventSources, and value objects can be
    EventSources.

  - EventQueues are a thing. Every Event Source is associated with a
    single EventQueue.

  - An EventQueue provides a serialized context for handling events
    from all associated sources.

  - When event handlers are fired, no user visible locks are
    held. This means users can reason about code inside handlers the
    same way they reason about code outside of handlers. This enables
    users to control the lock acquisition order explicitly and
    consistently.

  - There is a default EventQueue. This default event queue is
    generally available both to quark code and to user code.

  - Quark and user code can construct new EventQueues.

  - Quark and user code can temporarily override the default
    EventQueue.

### Scenarios:

  - Singleton Directory service creates its own EventQueue.

  - Statefull service (e.g. slack) can automatically use the default
    EventQueue. This allows two slack service instances to be paired
    in a bridge without any user locks.

  - A synchronous RPC service can use a new EventQueue for each RPC
    invocation. This allows the service instance to be safely shared
    between threads with no user locking.

  - An asynchronous RPC service can use a new EventQueue for each RPC
    invocation. This allows the service instance to be safely shared
    between threads with no user locking.

### Ardana Scenarios Issues:

  - We need a singleton directory.

  - We need to be able to write the circuit breaker state machine and
    put it in a singleton place and access it from multiple threads in
    a safe way.

### Ardana Scenario Solutions:

  - Quark needs static members and/or globals.

  - Quark will want static methods to go with static fields for
    idiomatic access to the singleton directory from non-quark code.

  - Quark needs locks.

### Async RPC Client:

  - Clients can be switched into async mode.

  - In async mode, client will return an empty value object.

  - All value objects will support wait and completion/error
    listeners.

```
Hello hello = new HelloClient();
hello.setSync(True);
hello.connect();

Response resp = hello.hello(new Request(...));
// resp.text is always filled in

hello.setSync(False);
hello.connect();
Respone resp = hello.hello(new Request(...));
resp.text is probably null; // or maybe we try to make it block if we feel like being fancy
resp.onComplete(...);
```

### Async RPC Server:

  - If Service Impl returns an empty value object. Skeleton will use
    completion/error listeners to trigger I/O when value object
    finally finishes.

  - Quark defined value objects need a finish() method.

  - Quark defined value objects need an isFinished() or something like
    that.

  - If a completion listener is registered after an object has been
    finished then the listener gets asynchronously scheduled.

### Context model:

  - There is a hierarchy of context objects. They are managed through
    thread locals where possible. Where not possible they need to be
    passed to all quark code.

  - These context objects can be used to propogate request contexts
    automatically between client and server.

  - These can control the policy around creating event queues. (For
    example shared event queues vs new per RPC.)

The context object holds information that is passed to functions
implicitly, transcending the call stack without adding clutter or
boilerplate. This can be implemented with a global variable, with
thread-local variables in certain cases, or by having the compiler
automatically generate code to pass around the object
explicitly. Context objects can be stacked, with the last object
overriding values in prior objects until the last object is popped
off.

The context object can be used to hold/track global or static values
such as singletons. For example, any program that uses Quark-based
libraries wants to have a singleton directory object. Circuit breakers
want to have global/shared state for each service being managed.

A thread-local context object, which would be stacked on top of the
global context, can be used to keep track of a thread-specific event
queue. For example, an application that spins out a 150 relatively
independent threads will likely want 150 independent event queues so
that each application thread can perform Quark-based I/O without
interfering with or waiting for sibling threads.

The current context object can be used to track application-specific
context as well. For example, consider a service that needs responses
from many outgoing requests to respond to each incoming request. This
service may want to include contextual information about the incoming
request, such as a request identifier, in each of its associated
outgoing requests; this would facilitate tracking request flow through
the system. The context object can hold the current request ID. If the
service needs to make an unrelated request (e.g., periodic maintenance
unrelated to the current request), it can push a new context object to
override the request ID temporarily and pop off that new context
object once the unrelated task has been completed.

Do parts of the system need to capture the current context object?
Should adding an event to an event queue capture the context present
when the event is added, so that it is available when the event queue
fires that event? In other words, do event handlers want the context
of the event queue's thread or the context that existed when the event
was set up to be fired?

```
state

hello(cb1)
hello(cb2)

main:
  evq = getEventQueue()
  slack = new Slack(evq);
  slack2 = new Slack(evq);
  slack.post("#lobby", "blah", cb1)


slack.onMessage() {
  slack.post("#lobby", "blah", cb2)
}

slack2.onMessage() {
  slack.post("#lobby", "blah", onMessageAckDequeueFromReplayQueue)
}

slack2.onMessageAckDequeueFromReplayQueue(slack1, msgid) {
  clock.schedule({
    slack2.messages.remove(msgid);
    slack1.post("#lobby", "hey, I got your ack", doSomethingElse);
    // wait for something else
  })
}

onExecute() {
  slack.post("#lobby", "blah", cb4)
}

// Concurrency/Eventing


// Can runtime be thread local?


interface Hello {

    int lastFailTime = 0;
    int failCount = 0;
    int state = 0; // 0 is up, 1 is down, 2 is testing

    void failed() {
        failCount = failCount + 1;
        lastFailTime = now();

        if (state == 0) {
            if (failCount > 3) {
                state = 1;
                runtime.schedule(self.testing, 30);
            }
        } else if (state == 1) {
            assert False;
        } else if (state == 2) {
            state == 1;
            runtime.schedule(self.testing, 30);
        }
    }

    void testing() {
        state = 2;
    }

    Object circuit(String name, Object request) {
        if (state == 0 || state == 2) {
            Object result = self.rpc(name, request);
            if (result == null) {
                self.failed();
                return self.default(name, request);
            }
        } else {
            return self.default(name, request);
        }
    }

}
```
