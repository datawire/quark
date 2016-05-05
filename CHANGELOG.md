CHANGELOG
=========

Breaking changes are marked with (!)

0.5.3 (upcoming)
-----

### Language

* #129 Binary literals: `0b0101_0101`
* (!) #127 It is a compiler error to export two symbols that that differ in
  case only. This is done to be able to provide idiomatic interoperability with
  case-insensitive languages and languages who restrict the casing of public
  symbols (for example Ruby and Go).

### Standard library

* #129 New methods on `byte`, `short`, `int`, and `long`:
  `bitwise_not`, `bitwise_or`, `bitwise_xor`, `bitwise_and`
* (!) #127 Macro `quark.logging.config` renamed to `makeConfig` to avoid name
  collision with `Config` interface

### Other

* Changelog, with format inspired by OCaml compiler changelog
