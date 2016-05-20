CHANGELOG
=========

Breaking changes are marked with (!)

Latest
------

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

### Other

* New installation process

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
