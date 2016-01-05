Compiling and Installing the Library in Python
==============================================

The next step is compiling the service contract and installing the resulting library in Python:

``quark package --python hello.q``

This command will generate a hello directory at the current location with a py subdirectory. The build artifacts are within the subdirectory. Information on other build options and the behavior of the default options including the location of all of the generated artifacts is available on the Compilation page of the Quark Installation and Configuration Guide.

To install the resulting library in Python, do the following:

``pip install hello/py/dist/hello-0.1.0-py2-none-any.whl``
