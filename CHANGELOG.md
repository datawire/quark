CHANGELOG
=========

Breaking changes are marked with (!)

0.5.3 (upcoming)
-----

### Language

* #XXX Binary literals: `0b0101`
* (!) #127 It is a compiler error to export two symbols that that differ in
  case only. This is done to be able to provide idiomatic interoperability with
  case-insensitive languages and languages who restrict the casing of public
  symbols (for example Ruby and Go).

### Standard library

* (!) #127 Macro `quark.logging.config` renamed to `makeConfig` to avoid name
  collision with `Config` interface

### Other

* Changelog, with format inspired by OCaml compiler changelog
