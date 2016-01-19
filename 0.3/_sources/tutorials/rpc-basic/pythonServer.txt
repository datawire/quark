Writing a Python Server
=======================

Let's start by creating a simple Hello World server using the compiled Hello service contract in Python.

Note: If you don't want step-by-step guidance about how to create the server and just want to start from a completed server, there is a :ref:`link to the full Python server file <fullExamplePythonServer>` at the bottom of this page.

.. _part1PythonServerImport:

Part 1: Importing the {{{product}}} Pieces
------------------------------------------

This section shows you how to import the {{{product}}} integration and the HelloRPC contract into your Python server.

Relevant code:

.. code-block:: none
   :emphasize-lines: 3,4

   # Python Hello Server example
   
   from {{{threaded_import}}} import get_runtime
   import hello
   
   
   def main():

The line ``from {{{threaded_import}}} import get_runtime`` imports the user-visible portions of the {{{threaded_integration}}} runtime integration into your client. Note that although the integration is called {{{threaded_integration}}}, the module name is {{{threaded_import}}}.

The line ``import hello`` imports the service contract library created and built in previous steps of the tutorial.

.. _part2PythonResponseDefinition:

Part 2: Defining the Response
-----------------------------

This section defines the response using the Response value class defined in the service contract.

Relevant code:

.. code-block:: none
   :emphasize-lines: 7,8,9,10,11,12

   # Python Hello Server example
   
   from {{{threaded_import}}} import get_runtime
   import hello
   
   
   class HelloImpl(object):
   
      def hello(self, request):
           res = hello.Response()
           res.result = "Responding to [%s] from Python" % request.text
           return res
   
   
   def main():

The HelloImpl class essentially defines a hello() method that defines the response to be sent back to the client given the request received. It instantiates a Response object (as defined in the service contract), populates its result property with the response text, and returns the object for further processing.

[[JMK It looks like using self as the first input parameter is a general python thing so I don't have to explain it. It seems weird to me. Adding this comment to remind myself I don't need to figure out why it's there.]]

.. _part3PythonProcessRequest:

Part 3: Processing the Request
------------------------------

This section defines main module of the server, the code that calls the RPC processing defined within {{{product}}} and actually generates the response based on the request and returns it to the client application.

.. _fullExamplePythonServer:

Relevant code:

.. code-block:: none
   :emphasize-lines: 15,16,17,18,19

   # Python Hello Server example
   
   from {{{threaded_import}}} import get_runtime
   import hello
   
   
   class HelloImpl(object):
   
      def hello(self, request):
           res = hello.Response()
           res.result = "Responding to [%s] from Python" % request.text
           return res
   
   
   def main():
      runtime = get_runtime()
      implementation = HelloImpl()
      server = hello.HelloServer(runtime, implementation)
      runtime.serveHTTP("http://127.0.0.1:8910/hello", server)
   
   
   if __name__ == '__main__':
      main()


The line ``runtime = get_runtime()`` instantiates an instance of the {{{product}}} runtime integration imported in the earlier step.

The line ``implementation = HelloImpl()`` instatiates an implementation object, in this case an instance of the HelloImpl class defined above.


The line ``server = hello.HelloServer(runtime, implementation)`` instantiates the server itself, passing the runtime and implementation arguments as input parameters to the constructor. The server stub is defined within the service contract expanding upon a default {{{language}}} server definition. The constructor defines how the runtime and implementation objects are used to launch the server process and perform the requested work of the server - this is all abstracted away from the user.

The line ``runtime.serveHTTP("http://127.0.0.1:8910/hello", server)`` binds the server to the defined port and URL for the hello service. This is done by passing the service URI (``http://127.0.0.1:8910/hello``) and the server instance to the serveHTTP() method of the runtime object instantiated above. The work of listening on that port, recognizing incoming requests to be processed by the server, and sending the actual responses to those requests is all abstracted away from the user.

That's it! The Python server is complete. Again, note that we don't actually see the processing of the request; that's handled under the covers by the code inside the Python threaded integration according to RPC handling directives defined within {{{product}}}. The user-defined portions of the server just indicate the specific format desired for the response text and passes that directive along with the received request object to the underlying processing code.
