Creating the Clients
====================

Let's start by creating a simple Hello World client using the compiled Hello contract in Python.

Note: If you don't want step-by-step guidance about how to create the client and just want to start from a completed client, there is a :ref:`link to the full Python client file <fullExampleClient>` at the bottom of this page.

.. _part1Framework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your Python client.

Step 1: Create a text file in your favorite editor called pyclient.py

Step 2: Import the portion of the integration needed to run your client, namely get_runtime in quark_threaded_runtime.

Step 3: Import the contract library (hello)

Step 4: Define an empty main function

Step 5: Run the main function. If you are new to Python, information about how to do this can be found `here <https://docs.python.org/2/library/__main__.html>`_.

See :ref:`this page <part1ClientFinished>` for the file state at the end of Part 1.

.. _part2ClientInitialization:

Part 2: Initializing the Client
-------------------------------

This section initializes the client so the client knows how to set up and send requests to the server.

Step 1: Initialize the runtime variable using get_runtime()

Step 2: Initialize a client instance passing it the runtime variable and the URL of the server (http://127.0.0.1:8910/hello)

See :ref:`this page <part2ClientFinished>` for the file state at the end of Part 2.

Part 3: Setting Up the Request
------------------------------

This sets up the request to the server.

Step 1: Create a Request object associated with the client using the Request value class we defined in the service contract in the previous section of the tutorial.

Step 2: Set the text property of the request to "Hello from Python!" so we know the request came from the Python client. This will help illustrate the interoperability of languages later.

Step 3: Print the request text to standard out so we know what's happening when we run the client.

See :ref:`this page <part3ClientFinished>` for the file state at the end of Part 3.

Part 4: Sending the Request and Processing the Response
-------------------------------------------------------

This actually sends the request to the server, receives the response, and displays it from the client.

Step 1: Send the request using the hello method of the Client (defined within the Hello interface in the service contract). This method takes the request object as an input parameter and returns a response object (as defined in the Response value class in the service contract).

Step 2: Print the value of the result property of the response object so we can see that the server operated on the request and returned the requested information.

That's it! The Python client is fully defined now. You can follow the link below to a copy of the full client in the Quark Examples repository.

.. _fullExampleClient:

Full Python Client
------------------

A full copy of the Python client for this example can be found `here <https://github.com/datawire/quark/blob/master/examples/helloRPC/pyclient.py>`_ - the file you constructed following the instructions on this page should match it exactly barring differences in the content of the print requests.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]