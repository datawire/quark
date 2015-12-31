Writing a Server
================

Let's start by creating a simple Hello World server using the compiled Hello contract in Javascript.

Note: If you don't want step-by-step guidance about how to create the server and just want to start from a completed server, there is a :ref:`link to the full Python server file <fullExampleJavascriptServer>` at the bottom of this page.

.. _part1JavascriptServerFramework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your Javascript server.



See :ref:`this page <part1JavascriptServerFinished>` for the file state at the end of Part 1.

.. _part2JavascriptResponseDefinition:

Part 2: Defining the Response
-----------------------------

This section defines the response using the Response value class defined in the service contract.


See :ref:`this page <part2JavascriptServerFinished>` for the file state at the end of Part 2.

.. _part3JavascriptProcessRequest:

Part 3: Processing the Request
------------------------------

This section defines main module of the server, the code that calls the RPC processing defined within Quark and actually generates the response based on the request and returns it to the client application.



That's it! The Javascript server is complete. Again, note that we don't actually see the processing of the request; that's handled under the covers by the code inside the node integration according to RPC handling directives defined within Quark. The user-defined portions of the server just indicate the specific format desired for the response text and passes that directive along with the received request object to the underlying processing code.

.. _fullExampleJavascriptServer:

Full Javascript Server
----------------------

A full copy of the Javascript server for this example can be found `in GitHub <https://github.com/datawire/quark/blob/master/examples/helloRPC/jsserver.js>`_ - the file you constructed following the instructions on this page should match it exactly barring differences in the content of the print requests.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]