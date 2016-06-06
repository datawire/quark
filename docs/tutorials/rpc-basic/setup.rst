{{{product}}} RPC Support
=========================

{{{product}}} currently supports one interaction pattern with a simple request-response interaction where the client sends a single request and the server replies with a single response. This tutorial will show you how to define a simple contract for a Hello World server using that pattern, write clients in each supported language using the library created from that contract, and generate servers in each supported language using the same library. It will also walk you through how to package everything together into a working end-to-end example that sends simple requests from clients with direct responses to those requests from a server.

In order to use RPC with {{{product}}} you must have {{{product}}} installed and the {{{product}}} integration matching the development environment you're using to write your code (the Netty integration will be installed automatically as needed). The {{{product}}} core runtime is also needed but will be installed automatically by the integrations as a dependency.

We expect you to have the following tools installed as prerequisites:

* Python (tested with version 2.7)
* pip
* git
* tar

If you haven't already done so, run the following command to install {{{product}}}:

``curl -sL https://raw.githubusercontent.com/datawire/quark/master/install.sh | sh``

You will also need to clone a local copy of the {{{product}}} examples repository. This tutorial will generally point to the remote GitHub repository when providing links to example files stored there, but you will need local copies to run the final stages of the tutorial. You can clone the repository using the following command:

``git clone https://github.com/datawire/{{{github_directory}}}.git``

Additional requirements for specific languages will be outlined within the sections for those languages.