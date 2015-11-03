Compilation
===========

The Quark compiler can perform four distinct functions: generating code in one or more target languages, compiling and running the generated code, generating HTML documentation based on annotations in the code, and generating distribution packages for one or more target languages. These are ordered tasks; each requires that the previous task was performed as a prerequisite. To make this easier to manage, the command to run each task automatically runs the previous tasks in the chain before running the requested task.

Syntax
------

Commands
--------

Compile
~~~~~~~

The Quark compile command is used to generate code in one or more target languages. In addition to code, it also creates some supporting files including a Quark runtime file, documentation source files (if needed for the target languages), and package definition files (if needed for the target languages).

Quark supports two compilation modes: generating code for all target languages (used by default) or generating code for one or more specific target languages.

Build
~~~~~

Doc
~~~

Package
~~~~~~~

Command Options
---------------

Quark supports a variety of options that provide additional instructions to the compiler while it runs commands. These options all act upon the compile step to control how target code is generated. However, because the execution of all of the commands starts with compilation, the options are valid with any Quark command.

Other Options
-------------

Quark supports two top-level options that are independent of compiler commands: help and version

Help
~~~~

Syntax
++++++

Version
~~~~~~~

Syntax
++++++
