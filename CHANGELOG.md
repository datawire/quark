CHANGELOG
=========

Breaking changes are marked with (!)

Latest
------

### Command line

* The compiler now emits warnings in addition to errors. Warnings do
  not abort the compilation.

### Language

* classes now inherit static fields of interfaces

* constructor name must match class name. For now this is a warning.

* The compiler now enforces that an implementation signature matches the
  declaration in the interface. Some code that compiled/ran successfully in
  the past may fail to compile; we assert said code is incorrect and was
  relying on a compiler bug.

### Standard Library

* Added `String.ordAt`
* Added `String.strip`
* Added `String.parseInt` and `String.parseLong`

* Returning `undefined` from a Javascript function used as a `Promise` callback
  no longer blows up.

* Added `quark.uuid`, which calls `Runtime.uuid`, to generate a UUID v4 string.

* Changed `quark.sleep` and `quark.now` to delegate to methods on `Runtime` so
  that they can be replaced with mock versions.

* Added `MockRuntime.advanceClock()` to control mock time. Scheduled
  tasks now get executed when their time comes.

* Ensures the logging is configured upon first log

* `long.__to_int__()` is now deprecated and emits a warning.

1.0.282
------

### Command line

* The compiler is now roughly 2-3 times faster due to a change in the way
  reflection code is generated.

* `quark install` tries to run in offline mode by default as most
  quark generated packages do not have external dependencies. To force
  online mode use `quark install --online`.

* The `quark docs` command by default no longer generates documentation
  for any named element (namespaces, classes, functions, methods,
  fields) that begins with a single `_` followed by an alphanumeric
  character. Note that documentation for things like `__add__` will
  still be included. Use `quark docs --include-private` to change this
  behavior.

### Language

* Fixed precedence of `import` statements. Later `import`s are searched first.

### Standard Library

* Added `quark.Promise`, allowing chaining and error handling of asynchronous
  results. `quark.bind` is a utility to make class methods into callbacks suitable
  for use with `quark.Promise`. `quark.IO` provides utilities for doing HTTP
  HTTP requests and scheduling tasks with results returned as `Promise` instances.

* Setting the environment variable `QUARK_TRACE` modifies logging done by
  libraries written in Quark.
  * Setting `QUARK_TRACE` to a filename redirects all logging to that
    file.
  * Setting `QUARK_TRACE` to "1" or "TRUE" redirects all logging to
    stderr.
  * Setting `QUARK_TRACE` as above enables additional logging output from
    within Quark's standard library to help trace network I/O.
  * Setting `QUARK_TRACE` to the empty string, to "0", or to "FALSE" will
    allow logging to function as normal, just as if the environment
    variable were not set.

* String relational operators `<`, `<=`, `>`, `>=` compare two strings
  lexicographically

* Fixed a major regression in JSON generation introduced in 1.0.133.

* Fixed a long-standing bug in deserialization of longs.

* Fixed Future.wait in Ruby.

1.0.133
-------

### Standard Library

* Added `parents` field and `hasInstance` and `isSubclassOf` methods to
  `quark.reflect.Class`.

1.0.74
------

### Language

* (!) Compiler version declaration is restricted to 3 forms:
   * `quark x.y.z;` like `quark 1.2.3;`,
   * `quark x.y;` like `quark 1.2;`, semantically same as `quark x.y.0;`,
   * `quark *;` which disables version checking.
  See detailes of the new [version comparison rules](
    https://github.com/datawire/quark/wiki/Compiler-Versioning).

* Multiline string literals delimited by tripple double-quotes,
  supporting same escape-sequences as existing string literals:
  `\n`, `\r`, `\t`, `\"`, `\\`, `\x00`, `\u0000`. Although allowed,
  a single double quote does not need escaping.

### Standard Library

* (!) Add Error class and subclasses for various quark subsystems

  BREAKING CHANGE

  This is a breaking change as signatures of existing methods are changed.
  Affected classes are:

 *  `HTTPHandler#onHTTPError` changed second parameter type from `String to `HTTPError`
 *  `WSHandler#onWSError` added second parameter of type `WSError`
 *  `HTTPServlet#onServletError` and `WSServlet#onServletError` changed second parameter type from `String` to `ServletError`
 *  `Future#getError` changed return type from `String` to `Error`
 *  `os.FileContents#getError` changed return type from `String` to `OSError`

  The original `String` is now accessible as `Error#getMessage()`

* Ruby backend handles HTTPS and WSS client requests

* `Runtime.open` invokes `onWSError` when socket establishment fails

### Other

* Testing of quark is now simplified with docker. See [TESTING.md]().
* CI runs pyflakes and pylint on quark compiler code

0.7.6
-----

### Language

* (!) Quark files now require compiler version declaration, e.g.
  `quark 0.7.0;`. Compiler will decide if it is compatible with the source
  file based on the rules of [semantic versioning](http://semver.org).
  Programs missing this declaration are rejected.

### Standard Library

* Quark String objects have `toUpper()` and `toLower()` methods.

### Other

* Quark compiler generates an error when a type parameter is missing

* Internal compile errors now report which part of the source file
  confused the compiler

0.6.100
-------

### Standard Library

* (!) Revised `quark.os` APIs for future expansion.
  * `quark.os.Env.get(...)` is now `quark.os.Environment.ENV[...]`.
  * `quark.os.FS.fileContents(...)` is now `quark.os.readFileAsString(...)`.
  * `quark.os.FS.userHomeDir()` is now `quark.os.getUserHomeDir()`.
  * `quark.os.Environment.ENV.get(key, default_value)` added.
* New `remove(...)` method to remove items from Maps and Lists

### Foreign-function interface

* (!) Change how cast operator (`?`) works on dynamically-typed back-ends
  (Python, Ruby, JavaScript). Previously casting on dynamically-typed back-ends
  had no effect, now it is translated into an assertion that the value is
  of that type which it is being cast into. The effect on FFI is that now,
  you are required to subclass classes/interfaces if you implement them,
  instead of relying on duck-typing.
* Calling abstract/interface methods produces a readable error message,
  instead of a simple assertion failure.

### Other

* New documents CONTRIBUTING.md and CODE_OF_CONDUCT.md
* README.md points to the latest (0.6) documentation
* document the preferred install method using install.sh

0.6.74
------

Released on 2016-05-20

### Command line

* `quark run` now advises `quark install` if the target is not installed
* `quark install --python` gives a more helpful message when `wheel`
  package is missing

### Language

* (!) #141 Bitwise methods are removed in favor of operators `~&^|` with same
  precedence as in C
* (!) #141 Precedence of `!` operator is raised to match that of C

### Standard Library

* Support for read-only interaction with the process environment using
  `quark.os.Env.get(...)` and friends.
* Support for reading an entire UTF-8-encoded file into a string in
  `quark.os.FS.fileContents(...)`.
* Support for adding an element to a list, `List.insert(idx, elt)`

### Other

* New installation process
* new document TESTING.md

0.6.40
------

Released on 2016-05-11

### Command line

* New `quark docs` command generates a file containing JSON describing the API
  of the specified Quark files. It also generates rudimentary API documentation
  in HTML.

### Language

* #129 Binary literals: `0b0101_0101`
* (!) #127 It is a compiler error to export two symbols that that differ in
  case only. This is done to be able to provide idiomatic interoperability with
  case-insensitive languages and languages who restrict the casing of public
  symbols (for example Ruby and Go).

### Standard library

* #129 New methods on `byte`, `short`, `int`, and `long`:
  `bitwise_not`, `bitwise_or`, `bitwise_xor`, `bitwise_and`
* #128 Bug fixes in logging
* (!) #127 Macro `quark.logging.config` renamed to `makeConfig` to avoid name
  collision with `Config` interface
* Additional datatype support in Quark's JSON library

### Other

* Changelog, with format inspired by OCaml compiler changelog
* Automated testing using Travis
* Automated testing of Quark examples
