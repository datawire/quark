Defining the Service Contract
=============================

The first step when working with RPC is to define a contract in Quark. This contract defines the value classes, interfaces, and interaction patterns as well as how they can be used together.

Note: If you don't want step-by-step guidance about how to create the contract and just want to start from a completed contract, there is a :ref:`link to the full contract file <fullExampleContract>` at the bottom of this page.

.. _part1Framework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your service contract.

Step 1: Create a text file in your favorite editor called hello.q

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

b. Add a String property called text to the class. This will hold the contents of the request body.

Step 2: Add a Response value class

Do the following:

a. Define a class called Response inside the hello package

b. Add a String property called result to the class. This will hold the contents of the response body.

See :ref:`this page <part2ContractFinished>` for the file state at the end of Part 2.

.. _part3Interface:

Part 3: Interface
-----------------

This section defines the interface needed by the Hello World RPC service. The interface contains the details of the interaction pattern being used, in this case a single request that generates a single response.

Step 1: Define an interface called Hello

a. Hello should extend the Service interface supplied by Quark. This interface uses Quark integration types to define the actual communication mechanism between the client and the server.

b. Hello should specify use of the rpc interaction pattern by including ``@delegate(self.rpc)``. Note that this is a workaround; the preferred method for specifying the simple rpc interaction pattern is ``@delegate(rpc)`` but it is not currently working.

c. Hello should define a method named hello() that expects a request as an input parameter and returns a response object. This is the method that glues together the request and response.

[[JMK not quite following the magic that makes this method work - I'd like to say a bit more here. I need to actually compile the .q file and run the example which I haven't managed yet]]

See :ref:`this page <part3ContractFinished>` for the file state at the end of Part 3.


.. _part4Client:

Part 4: Client
--------------

This section defines the example client in Quark. This definition will be used to generate client code in each supported target language.

Step 1: Define an empty class named HelloClient that extends the Quark Client integration type and uses the Hello interface we just defined.

See :ref:`this page <part4ContractFinished>` for the file state at the end of Part 4.

.. _part5Server:

Part 5: Server Stubs
--------------------

This section defines the example server APIs in Quark. This definition will be used to generate server stubs in each supported target language.

Step 1: Define an empty class named HelloServer that extends the Quark Server integration type.

That's it! The contract is fully defined now. You can follow the link below to a copy of the full contract in the Quark Examples repository.

.. _fullExampleContract:

Full Contract
-------------

A full copy of the RPC contract for this example can be found `here <https://github.com/datawire/quark/blob/master/examples/helloRPC/helloRPC.q>`_ - the file you constructed following the instructions on this page should match it exactly.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]