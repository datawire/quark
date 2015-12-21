Compiling and Installing the Library
====================================

The next step is compiling the service contract and installing the resulting library in each of the supported languages. We could do this separately in each language, but since we want all of the languages for this example, we can just use the default options which will compile, build, document, and package the library representing the contract in all three languages at once:

``quark package hello.q``

This command will generate a hello directory at the current location with js, py, and java subdirectories. The build artifacts for each language are within their respective subdirectories. Information on other build options and the behavior of the default options including the location of all of the generated artifacts is available on the Compilation page of the Quark Installation and Configuration Guide.

To install the resulting library in Python, do the following:

``pip install hello/py/dist/hello-0.1.0-py2-none-any.whl``

To install the resulting library in Javascript, do the following:

``npm install hello/js/hello.tgz``

To install the resulting library in Java, do the following:

``(cd hello/java && mvn install)``

