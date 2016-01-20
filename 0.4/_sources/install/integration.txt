Runtime Integrations
--------------------

{{{language}}} defines a variety of :doc:`integration types <../language-reference/integrationTypes>` and :doc:`integration interfaces <../language-reference/integrationInterfaces>`that use or rely on communication protocols that differ for different languages and frameworks. These types are defined like interfaces with just method signatures. You must use a specific {{{product}}} runtime integration matching your development environment to get a working method - these integrations contain code specific to each environment and how it manages communications.

You do not need to install a runtime integration if you are not using any integration types or integration interfaces in your {{{language}}} code.

{{{product}}} supports four runtime integrations:

* {{{netty_integration}}} for Java and Netty
* {{{twisted_integration}}} for Python and Twisted
* {{{threaded_integration}}} for Python
* {{{node_integration}}} for Javascript and Node.js

These runtime integrations are installable through the normal install mechanism for your language of choice - pip for Python, npm for Javascript, and Maven for Java (The Java integrations are pulled from Maven Central automatically as needed by the code you generate and compile and do not require manual installation). Any dependencies are automatically installed when you install the runtime integration so there is no need to worry about prerequisites beyond those needed for download. Once you've installed the appropriate runtime integration or integrations for your development environment, the integration types should be fully functional and work just like any other data types in Quark.

To install the {{{twisted_integration}}} runtime integration run the following command:

``pip install {{{twisted_integration}}}``

To install the {{{threaded_integration}}} runtime integration run the following command:

``pip install {{{threaded_integration}}}``

To install the {{{node_integration}}} runtime integration run the following command:

``npm install {{{node_integration}}}``