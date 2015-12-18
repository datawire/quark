Integrations
------------

Quark defines a variety of :doc:`integration types <../language-reference/integrationTypes>` that use communication protocols that differ for different languages and frameworks. These types are defined like interfaces with just method signatures; you must use a specific runtime integration matching your development environment to get a working method; these integrations contain code specific to each environment and how it manages communications.

You do not need to install a runtime integration if you are not using any integration types in your code.

Quark supports four runtime integrations:

* datawire-quark-netty for Java and Netty
* datawire-quark-twisted for Python and Twisted
* datawire-quark-threaded for Python
* datawire-quark-node for Javascript and Node.js

These runtime integrations are installable through the normal install mechanism for your language of choice - pip for Python, npm for Javascript, and maven for Java (The Java integrations are pulled from Maven Central automatically as needed by the code you generate and compile and do not require manual installation). Any dependencies are automatically installed when you install the runtime integration so there is no need to worry about prerequisites beyond those needed for download. Once you've installed the appropriate runtime integration or integrations for your development environment, the integration types should be fully functional and work just like any other data types in Quark.

To install the datawire-quark-twisted runtime integration run the following command:

``pip install datawire-quark-twisted``

To install the datawire-quark-threaded runtime integration run the following command:

``pip install datawire-quark-threaded``

To install the datawire-quark-node runtime integration run the following command:

``npm install datawire-quark-node``