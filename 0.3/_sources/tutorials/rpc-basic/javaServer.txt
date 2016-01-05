Writing a Java Server
=====================

Let's start by creating a simple Hello World server using the compiled Hello contract in Java.

Note: If you don't want step-by-step guidance about how to create the server and just want to start from a completed server, there is a :ref:`link to the full Java server file <fullExampleJavaServer>` at the bottom of this page.

.. _part1JavaServerFramework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your Java server.

See :ref:`this page <part1JavaServerFinished>` for the file state at the end of Part 1.

.. _part2JavaResponseDefinition:

Part 2: Defining the Response
-----------------------------

This section defines the response using the Response value class defined in the service contract.


See :ref:`this page <part2JavaServerFinished>` for the file state at the end of Part 2.

.. _part3JavaProcessRequest:

Part 3: Processing the Request
------------------------------

This section defines main module of the server, the code that calls the RPC processing defined within Quark and actually generates the response based on the request and returns it to the client application.


That's it! The Java server is complete. Again, note that we don't actually see the processing of the request; that's handled under the covers by the code inside the Netty integration according to RPC handling directives defined within Quark. The user-defined portions of the server just indicate the specific format desired for the response text and passes that directive along with the received request object to the underlying processing code.

.. _fullExampleJavaServer:

Full Java Server
----------------

A full copy of the Java server for this example can be found `in GitHub <https://github.com/datawire/quark/blob/master/examples/helloRPC/src/main/java/helloRPC/HelloRPCServer.java>`_ - the file you constructed following the instructions on this page should match it exactly barring differences in the content of the print requests.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]