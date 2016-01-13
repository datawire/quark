Creating the Python Client
==========================

Let's start by creating a simple Hello World client using the compiled Hello contract in Python.

Note: If you don't want step-by-step guidance about how to create the client and just want to start from a completed client, there is a :ref:`link to the full Python client file <fullExamplePythonClient>` at the bottom of this page.

.. _part1PythonImport:

Part 1: Importing the {{{product}}} Pieces
------------------------------------------

This section shows you how to import the {{{product}}} integration and the HelloRPC contract into your Python client.

Relevant code:

.. code-block:: none
   :emphasize-lines: 3,4

   # Python Hello Client example
   
   from {{{threaded_import}}} import get_runtime
   import hello
   
   
   def main():

The line ``from {{{threaded_import}}} import get_runtime`` imports the user-visible portions of the {{{threaded_integration}}} runtime integration into your client. Note that although the integration is called {{{threaded_integration}}}, the module name is {{{threaded_import}}}.

The line ``import hello`` imports the service contract library created and built in previous steps of the tutorial.

.. _part2PythonClientInstantiation:

Part 2: Initializing the Client
-------------------------------

This section initializes the client so the client knows how to set up and send requests to the server.

Relevant code:

.. code-block:: none
   :emphasize-lines: 8,10

   # Python Hello Client example
   
   from {{{threaded_import}}} import get_runtime
   import hello
   
   
   def main():
      runtime = get_runtime()
      
      client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")
      request = hello.Request()


The line ``runtime=get_runtime()`` instantiates an instance of the {{{product}}} runtime integration imported in the earlier step.


The line ``client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")`` instantiates a HelloRPC client object (as defined in the service contract) and tells it to use the runtime instance created in the previous line and to send requests to a server instance running at ``http://127.0.0.1:8910/hello``.


.. _part3PythonRequest:

Part 3: Setting Up the Request
------------------------------

This section sets up the request to the server.

Relevant code:

.. code-block:: none
   :emphasize-lines: 11,12

   # Python Hello Client example
   
   from {{{threaded_import}}} import get_runtime
   import hello
   
   
   def main():
      runtime = get_runtime()
      
      client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")
      request = hello.Request()
      request.text = "Hello from Python!"
      print "Request says %r" % request.text

The line ``request=hello.Request()`` instantiates a Request object (as defined in the service contract).

The line ``request.text = "Hello from Python!"`` sets the message to be sent to the server in the request.

The print statement provides visual feedback within the client that the request was set. It is not essential to the interaction but helps illustrate the communications in the example.

.. _part4PythonSendRequest:

Part 4: Sending the Request and Processing the Response
-------------------------------------------------------

This section sends the request to the server, receives the response, and displays it from the client.

.. _fullExamplePythonClient:

Relevant code:

.. code-block:: none
   :emphasize-lines: 15

   # Python Hello Client example
   
   from {{{threaded_import}}} import get_runtime
   import hello
   
   
   def main():
      runtime = get_runtime()
      
      client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")
      request = hello.Request()
      request.text = "Hello from Python!"
      print "Request says %r" % request.text
      
      response = client.hello(request)
      print "Response says %r" % response.result
      
      
   if __name__ == '__main__':
      main()

The line ``response = client.hello(request)`` uses the hello method of the Client object (as defined within the Hello interface in the service contract) to send the actual request. This method takes the request object as an input parameter and returns a response object (as defined in the Response value class in the service contract).

The print statement below it provides visual feedback within the client that the request was sent to the server and a response was received. It is not essential to the interaction but helps illustrate the communications in the example. 

That's it! The Python client is fully defined now - the code above is all that's needed to run the client and visually see the results sent back from the server piece defined in the next stage of this walkthrough.