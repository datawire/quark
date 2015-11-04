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

@doc allows users to specify a description or public comment for packages, classes, properties, methods, and interfaces. The content inside @docs attributions will automatically be included in Javadoc comments for generated Java code, Sphinx source for generated Python code, and a README.md file for generated Javascript code.

Syntax
++++++

**@doc(** *content* **)**

*element*

where *versionNumber* is a string representing the version number and *element* is the language element being described. Note that there is no semi-colon (;) at the end of the line.

Constraints
+++++++++++

Support for automatic documentation generation in Quark is still in its early stages and will be improved in the future. Some currently known issues include:

* Generated Sphinx source does not include a make file. See `linkIssue48`_ for more information.

.. _linkIssue48: https://github.com/datawire/quark/issues/48

* Javadoc does not include content of @doc annotations for methods. See `linkIssue46`_ for more information.

.. _linkIssue48: https://github.com/datawire/quark/issues/46

* If not starting from a clean output directory prior to code generation Javadoc may pick up extraneous outdated content. See `linkIssue45`_ for more information.

.. _linkIssue48: https://github.com/datawire/quark/issues/45

* Javascript documentation is very basic and omits many @doc annotations. See `linkIssue47`_ for more information.

.. _linkIssue48: https://github.com/datawire/quark/issues/47

[[JMK I have not seen actual generated Sphinx doc; I see a compiler directive to automatically pull content from the source directory but have not written a make file to generate actual doc to see what gets included so there may also be missing content]]

.. _versionAnnotation:

@version
~~~~~~~~

@version allows users to specify a version for a package or group of packages. If no version is specified, the version is set to the default "0.0". Versions will be set in a global pom.xml for all generated Java, a global setup.py for all generated Python, and package.json inside each Javascript package.

Syntax
++++++

**@version(** *versionNumber* **)**

where *versionNumber* is a string representing the version number. Note that there is no semi-colon (;) at the end of the line.

Constraints
+++++++++++

@version must be defined at the top level of a Quark file. It should be used directly above a package declaration. By default it applies to all packages defined underneath it in a file. If more than one @version annotation is included in a Quark file, each annotation applies only to the package it directly proceeds; any package without its own @version annotation will default to version "0.0".