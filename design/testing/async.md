The Problem
-----------

Quark test harness is currently implemented in a synchronous way.

Quark `Runtime` is asynchronous by design. On single-threaded
backends, like Javascript it is currently not possible to test the
`Runtime` functionality using the `quark.test` harness because a test
cannot wait for the callbacks to fire (in JS) and if the tests just
schedules the callbacks to fire the callbacks are not executed in the
context of the test-case and so the harness cannot associate results
of `check` and `checkEquals` invoked in the callbacks with the
test-case that asynchronously triggered them.

For an example of the issue see [`ws_error_test.q`][testcase].


Proposals
---------

## option 1: Use a `concurrent.Future` to run asynchronous tests ##

We teach the test harness to recognize an additional method signature
for the test cases:

    void test.*(TestResultFuture future)

Then the harness could wait for the future before running the next
test.

### Gap ###

- `concurrent.Context` nesting
- `test` harness fixups

## option 2: Wait until there are no more active or pending event emitters ##

For definition of *event emitter* see [`../concurrency.md`][concurrency].

The only way for the test-case to do work beyond end of the test
function is if it (directly or indirectly) asked the Runtime to call
back later.

The test harness continues to wait for the testcase to complete until
number of event sources falls down to the same level as before the
test was started.

### Gap ###

- `Runtime` can report the current number of active and pending event sources.
- _[optional]_ `Runtime` can call back when the there is only the
  specified number of event sources left
- `test` harness fixups


----

[testcase]: https://github.com/datawire/quark/blob/websocket-errors/quarkc/test/lib/ws_error_test.q
[concurrency]: ../concurrency.md
