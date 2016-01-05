Compiling and Installing the Library in Java
============================================

The next step is compiling the service contract and installing the resulting library in Java:

``quark package --java hello.q``

This command will generate a hello directory at the current location with a java subdirectory. The build artifacts are within the subdirectory. Information on other build options and the behavior of the default options including the location of all of the generated artifacts is available on the Compilation page of the Quark Installation and Configuration Guide.

To install the resulting library in Java, do the following:

``(cd hello/java && mvn install)``

