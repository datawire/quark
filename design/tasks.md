### Tasks

- Spec out [concurrency model](concurrency.md) in more detail in quark:
  + event queues
  + event sources
  + contexts
  + locks
  + thread locals
- Build out backend support for [concurrency model](concurrency.md):
  + java
  + python
  + node
  + ruby
- Build out the quark [distributable](packaging.md) story:
  + compiler support for alias/import statement
  + distributable unit manager
    - sucks down .q files and figures out if local artifact is installed or not
  + (re)installs local artifacts
- Write the client and server skeletons (in quark):
  + timeout
  + circuit breaker
  + load balancing
- Update hub.q to use new model
- [Cosmetics](cosmetics.md)
  + desmell RPC syntax
- Exceptions/Errors
  + ???
