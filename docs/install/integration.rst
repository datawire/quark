Integrations
------------

Quark defines a variety of :doc:`integration types <../language-reference/integrationTypes>` that use communication protocols that differ for different languages and frameworks. These are defined like interfaces with just method signatures; you must use a specific integration matching your development environment to get a working method; these integrations contain code specific to each environment and how it manages communications.

You do not need to install an integration if you are not using any integration types in your code.

Quark supports four integrations:

* quark-netty
* quark-python-twisted
* quark-python-threaded
* quark-node

The Java integrations assume you are using Netty (tested with version 4.0.32.Final). The Javascript integration assumes you're using Node.js (version XXX). The Python-twisted integration assumes you are using Twisted (version XXX). The Python-threaded integration assumes XXX.

[[JMK prerequisites TBD, are there other requirements?]

These integrations are installable through the normal install mechanism for your language of choice - pip for Python, npm for Javascript, and maven for Java (The Java integrations are pulled from Maven Central automatically as needed by the code you generate and compile and do not require manual installation). Once you've installed the appropriate integration, the integration types should be fully functional and work just like any other data types in Quark.