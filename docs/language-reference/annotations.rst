:tocdepth: 2

Annotations
-----------

Annotations are compiler directives used to add additional functionality or perform a specific task during code generation.

Unlike most Quark code, annotations do not use the standard end of line character and should not be followed by a semi-colon (;).

Quark defines the following annotations:

.. toctree::
  :maxdepth: 1

  @doc
  @version

.. _docAnnotation:

@doc
~~~~

.. _versionAnnotation:

@version
~~~~~~~~

@version allows users to specify a version for a package or group of packages. If no version is specified, the version is set to the default "0.0". Versions will be set in a global pom.xml for all generated Java, a global setup.py for all generated Python, and package.json inside each Javascript package.

Syntax
++++++

**@version(** *versionNumber* **)**

where *versionNumber* is a string representing the version number.

Constraints
+++++++++++

@version must be defined at the top level of a Quark file. It should be used directly above a package declaration. By default it applies to all packages defined underneath it in a file. If more than one @version annotation is included in a Quark file, each annotation applies only to the package it directly proceeds; any package without its own @version annotation will default to version "0.0".