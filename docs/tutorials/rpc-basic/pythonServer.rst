Writing a Python Server
=======================

Let's start by creating a simple Hello World server using the compiled Hello contract in Python.

Note: If you don't want step-by-step guidance about how to create the server and just want to start from a completed server, there is a :ref:`link to the full Python server file <fullExamplePythonServer>` at the bottom of this page.

.. _part1PythonServerFramework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your Python server.

Step 1: Create a text file in your favorite editor called pyserver.py

Step 2: Import the portion of the integration needed to run your server, namely get_runtime in quark_threaded_runtime.

Step 3: Import the contract library (hello)

Step 4: Define an empty main function

Step 5: Run the main function. If you are new to Python, information about how to do this can be found `here <https://docs.python.org/2/library/__main__.html>`_.

See :ref:`this page <part1PythonServerFinished>` for the file state at the end of Part 1.

.. _part2PythonResponseDefinition:

Part 2: Defining the Response
-----------------------------

This section defines the response using the Response value class defined in the service contract.

Step 1: Define a HelloImpl class that inherits from the object class

Step 2: Define a hello method of the HelloImpl class with two input parameters: self and request

Step 3: Instantiate a Response object (as defined in the service contract)

Step 4: Set the result property to indicate that the Python server is reponding to the text sent in the request

Step 5: Set the Response object as the method response

[[JMK This could use some more explanation. I mostly follow the flow in the Server/Service stuff in builtins but not quite well enough to explain the exact flow/why HelloImpl needs the parameters/etc]]

See :ref:`this page <part2PythonServerFinished>` for the file state at the end of Part 2.

.. _part3PythonProcessRequest:

Part 3: Processing the Request
------------------------------

This section defines main module of the server, the code that calls the RPC processing defined within Quark and actually generates the response based on the request and returns it to the client application.

Step 1: Instantiate a runtime object using the get_runtime() constructor. The related class is defined in the code imported from the integration.

Step 2: Instantiate an implementation object. This is an instance of the HelloImpl class defined in Part 2 above.

Step 3: Instantiate the server itself, passing the runtime and implementation arguments as input parameters to the constructor. The server stub is defined within the service contract and the constructor defining how the runtime and implementation objects are used to launch the server process and perform the request work of the server is all abstracted away from the user.

Step 4: Bind the server to the defined port and URL for the hello service. This is done by passing the service URI (http://127.0.0.1:8910/hello) and the server instance to the serveHTTP() method of the runtime.

That's it! The Python server is complete. Again, note that we don't actually see the processing of the request; that's handled under the covers by the code inside the Python threaded integration according to RPC handling directives defined within Quark. The user-defined portions of the server just indicate the specific format desired for the response text and passes that directive along with the received request object to the underlying processing code.

[[JMK is there a better way to discuss this? Not sure that I go into enough detail or use the proper language]]

.. _fullExamplePythonServer:

Full Python Server
------------------

A full copy of the Python server for this example can be found `in GitHub <https://github.com/datawire/quark/blob/master/examples/helloRPC/pyserver.py>`_ - the file you constructed following the instructions on this page should match it exactly barring differences in the content of the print requests.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]