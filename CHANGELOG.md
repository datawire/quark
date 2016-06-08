CHANGELOG
=========

Breaking changes are marked with (!)

Latest
------

### Language

* (!) Quark files now require compiler version declaration, e.g.
  `quark 0.7.0;`. Compiler will decide if it is compatible with the source
  file based on the rules of [semantic versioning](http://semver.org).
  Programs missing this declaration are rejected.

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

* Quark String objects have `toUpper()` and `toLower()` methods.

* Ruby backend handles HTTPS and WSS client requests

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
