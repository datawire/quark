Defining the RPC Contract
=========================

The first step when working with RPC is to define a contract in Quark. This contract defines the value classes, interfaces, and interaction patterns as well as how they can be used together.

.. _part1Framework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your RPC contract.

Step 1: Create a text file in your favorite editor called simpleRPC.q

Step 2: Add ``@version(0.1.0)`` as the first line of the file. This sets the version number of the contract to 0.1.0

Step 3: Add a package called hello directly underneath the version. This package will contain the contract details.

See :ref:`this page <part1ContractFinished>` for the file state at the end of Part 1.

.. _part2Classes:

Part 2: Adding value classes
----------------------------

This section defines the value classes needed by the Hello World RPC service. These classes hold the data that will be passed between the client and the server.

Step 1: Add a Request value class

Do the following:

a. Define a class called Request inside the hello package

b. Add a String property called requestyStuff to the class. This will hold the contents of the request body.

Step 2: Add a Response value class

Do the following:

a. Define a class called Response inside the hello package

b. Add a String property called responsyStuff to the class. This will hold the contents of the response body.

See :ref:`this page <part2ContractFinished>` for the file state at the end of Part 2.

.. _part3Interface:

Part 3: Interface
-----------------



Full Contract
-------------

A full copy of the RPC contract for this example can be found `here <https://github.com/datawire/quark/tree/master/examples>`_ - the file you constructed following the instructions on this page should match it exactly.