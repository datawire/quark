# Quark Documentation

## Introduction

### What is Quark?

Quark is a DSL designed to provide a single source of truth for
programming logic and algorithms that may be required in multiple
languages. Any logic or algorithm written in quark can be compiled
into an idiomatic/easily used library in all the following languages:

  - Python (2/3)
  - Ruby
  - Java
  - Javascript (Node/Browser)
  - Go

### Why would you want to do this?

Applications today are increasingly built from business logic that is
not only distributed across networks, but also implemented in
different languages and/or frameworks. Building applications in this
way has numerious advantages, but to do it well requires that a robust
service to service communication layer be available in all the
languages used by the application. This sort of communication layer
typically depends on things like:

  - Service Discovery
  - Client-Side Load Balancing
  - Distributed Tracing & Logging
  - Deadlines (Distributed Timeouts)
  - Automatic Reconnect
  - Exponential Backoff
  - Rate Limiting
  - Retry Budgets
  - Circuit Breakers
  - Authentication
  - Shared Request Contexts
  - Async/Event Based APIs

This is a lot of functionality to deliver in a bug free, consistent,
and well supported way to multiple languages, and this list isn't even
complete. Normally if confronted with delivering this much
functionality to multiple languages, you might approach the problem by
offering it via a service, but obviously this doesn't work if you are
trying to provide the basis for service to service communication.

Quark provides a unique solution to this problem by allowing this sort
of functionality to be coded in a straightforward way in a single
place and then provided as a completely native library in each target
language.

### Alternatives

There are a number of alternatives to using a tool like Quark, each
with their own set of tradeoffs:

  - You could implement in C/C++ and use a tool like SWIG to generate
    bindings.

  - You could embed a sidecar process into your application and use an
    IDL to generate bindings.

  - You could hand code the necessary functionality in each language
    you need to use.

The bindings based options while allowing implementation to be shared,
have the drawback of forcing a lower level and generally non idiomatic
experience (both install and API) in the target languages.

The hand coding option while allowing a completely custom and
idiomatic experience in each language, requires significantly more
work and often suffers from inconsistent levels of quality and
completeness across the target languages.

Quark is intended to be used either stand alone or in combination with
these existing approaches to enable a fundamentally different
tradeoff. Quark can fully express an implementation including tests
and therefore provide a high quality, complete, native library and TCK
in all target languages from a single shared codebase. In addition,
the quark compiled API can use modern high level programming practices
that are not usually supported by pure binding based approaches,
e.g. events and callbacks.

The combination of these things enables quark to deliver high quality,
consistent, and idiomatic libraries in many different languages while
requiring only a fraction of the work of traditional techniques.

## Getting Started

The simplest quark library is a single function:

```java
void hello() {
    print("Hello World!");
}    
```

Something more interesting:

```java
int fib(int n) {
    if (n < 2) {
        return n;
    } else {
        return fib(n-1) + fib(n-2);
    }
}
```

## Builtin Types

### Scalars

#### int

#### float

#### String

### Collections

#### List&lt;T&gt;

#### Map&lt;K,V&gt;

## Control Flow

### if

### while

### switch

## User Defined Types

### Interfaces

#### Generics

## Testing

## API Mapping

### Java

### Python

### Ruby

### Javascript

### Go

## Extending Quark

### Dependency Injection

### External Definitions
