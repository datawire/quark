Requirements and Setup
======================

Quark currently supports one interaction pattern with the most basic request-response interaction where the client sends a single request and the server replies with a single response. This tutorial will show you how to define a simple contract for a Hello World server using that pattern, generate clients in each supported language, and generate server stubs in each supported language. It will also walk you through writing the actual server code for one language then how to package everything together into a working end-to-end example that sends simple requests from clients with direct responses to those requests from a server.

In order to use RPC with Quark you must have Quark installed and the Quark integration matching the development environment you're using to write your code (the Netty integration will be installed automatically as needed). The Quark core runtime is also needed but will be installed automatically by the integrations as a dependency.

This tutorial will build clients in Java and Python and a server in Javascript and will use already written servers in Java and Python. We expect you to have the following tools installed as prerequisites:

* Python (tested with version 2.7)
* pip
* Maven (tested with versions 3.1 and 3.3)
* node
* npm
* git
* tar

[[JMK maybe just Python as a first pass for both the client and server walkthroughs? Both Phil and Flynn prefer Python as a learning language. Abhay had previously suggested using Java if we just use one, but it's the hardest one to abstract out to the other cases/requires more setup and files so it wouldn't be my preference.]]

If you haven't already done so, run the following commands to install Quark and the integrations needed to follow along with this tutorial:

1. ``pip install datawire-quark``
2. ``pip install datawire-quark-threaded``
3. ``npm install datawire-quark-node``

You will also need to clone a local copy of the Quark examples repository. This tutorial will generally point to the remote GitHub repository when providing links to example files stored there, but you will need local copies to run the final stages of the tutorial. You can clone the repository using the following command:

``git clone https://github.com/datawire/quark.git``
