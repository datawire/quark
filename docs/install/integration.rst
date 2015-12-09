Integrations
------------

Quark defines a variety of integration types that use communication protocols that differ for different languages and frameworks. These are defined like interfaces with just method signatures; you must use a specific integration matching your development environment to get a working method; these integrations contain code specific to each environment and how it manages communications.

You do not need to install an integration if you are not using any integration types in your code.

Quark supports five integrations:

* java-netty-threaded
* java-netty-unthreaded
* python-twisted
* python-threaded
* node

[[JMK exact names TBD]]

These integrations are installable through the normal install mechanism for your language of choice - pip for Python, npm for Javascript, and maven for Java. Once you've installed the appropriate integration, the integration types should be fully functional and work just like any other data types in Quark.