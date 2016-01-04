Creating the Python Client
==========================

Let's start by creating a simple Hello World client using the compiled Hello contract in Python.

Note: If you don't want step-by-step guidance about how to create the client and just want to start from a completed client, there is a :ref:`link to the full Python client file <fullExamplePythonClient2>` at the bottom of this page.

.. _part1PythonImport:

Part 1: Importing the Quark Pieces
----------------------------------

This section shows you how to import the Quark integration and the HelloRPC contract into your Python client.

Relevant code:

.. code-block:: none
   :emphasize-lines: 2,3

   # Python Hello Client example
   
   from quark_threaded_runtime import get_runtime
   import hello
   
   
   def main():

The line ``from quark_threaded_runtime import get_runtime`` imports the user-visible portions of the datawire_quark_threaded runtime integration into your client. Note that although the integration is called datawire_quark_threaded, the module name is quark_threaded_runtime

The line ``import hello`` imports the service contract library created and built in previous steps of the tutorial.

.. _part2PythonClientInstantiation:

Part 2: Initializing the Client
-------------------------------

This section initializes the client so the client knows how to set up and send requests to the server.

Relevant code:

.. code-block:: none
   :emphasize-lines: 6,8

   # Python Hello Client example
   
   from quark_threaded_runtime import get_runtime
   import hello
   
   
   def main():
      runtime = get_runtime()
      
      client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")
      request = hello.Request()


The line ``runtime=get_runtime()`` instantiates an instance of the quark runtime integration imported in the earlier step and allows access to the integration types defined within such as the Server and Client classes and the Service interface.


The line ``client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")``


.. _part3PythonRequest2:

Part 3: Setting Up the Request
------------------------------

This sets up the request to the server.

Step 1: Create a Request object associated with the client using the Request value class we defined in the service contract in the previous section of the tutorial.

Step 2: Set the text property of the request to "Hello from Python!" so we know the request came from the Python client. This will help illustrate the interoperability of languages later.

Step 3: Print the request text to standard out so we know what's happening when we run the client.

See :ref:`this page <part3PythonClientFinished>` for the file state at the end of Part 3.

.. _part4PythonSendRequest2:

Part 4: Sending the Request and Processing the Response
-------------------------------------------------------

This actually sends the request to the server, receives the response, and displays it from the client.

Step 1: Send the request using the hello method of the Client (defined within the Hello interface in the service contract). This method takes the request object as an input parameter and returns a response object (as defined in the Response value class in the service contract).

Step 2: Print the value of the result property of the response object so we can see that the server operated on the request and returned the requested information.

That's it! The Python client is fully defined now. You can follow the link below to a copy of the full client in the Quark Examples repository.

.. _fullExamplePythonClient2:

Full Python Client
------------------

A full copy of the Python client for this example can be found `in GitHub <https://github.com/datawire/quark/blob/master/examples/helloRPC/pyclient.py>`_ - the file you constructed following the instructions on this page should match it exactly barring differences in the content of the print requests.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]