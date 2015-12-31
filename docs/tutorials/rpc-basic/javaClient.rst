Creating the Clients
====================

Let's start by creating a simple Hello World client using the compiled Hello contract in Java.

Note: If you don't want step-by-step guidance about how to create the client and just want to start from a completed client, there is a :ref:`link to the full Java client file <fullExampleJavaClient>` at the bottom of this page.

.. _part1JavaClientFramework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your Java client.

See :ref:`this page <part1JavaClientFinished>` for the file state at the end of Part 1.

.. _part2JavaClientInitialization:

Part 2: Initializing the Client
-------------------------------

This section initializes the client so the client knows how to set up and send requests to the server.


See :ref:`this page <part2JavaClientFinished>` for the file state at the end of Part 2.

.. _part3JavaRequest:

Part 3: Setting Up the Request
------------------------------

This sets up the request to the server.

See :ref:`this page <part3JavaClientFinished>` for the file state at the end of Part 3.

.. _part4JavaSendRequest:

Part 4: Sending the Request and Processing the Response
-------------------------------------------------------

This actually sends the request to the server, receives the response, and displays it from the client.


That's it! The Java client is fully defined now. You can follow the link below to a copy of the full client in the Quark Examples repository.

.. _fullExampleJavaClient:

Full Java Client
----------------

A full copy of the Java client for this example can be found `in GitHub <https://github.com/datawire/quark/blob/master/examples/helloRPC/src/main/java/helloRPC/HelloRPCClient.java>`_ - the file you constructed following the instructions on this page should match it exactly barring differences in the content of the print requests.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]