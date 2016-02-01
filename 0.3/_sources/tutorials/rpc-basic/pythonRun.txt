Running the Python Client and Server
====================================

We now have all of the pieces needed for a simple working RPC example. The instructions on this page assume you have already followed the directives for building and installing the HelloRPC service contract in Python as outlined on the :doc:`Compiling and Installing the Library page <pythonBuild>` earlier in the tutorial. If you have not done this, please do so now before trying the steps below.

To run the HelloRPC example with a Python client against a local Python Server do the following:

Step 1: Move to the location where you saved the Python server you wrote earlier in the tutorial. Alternately, move to the HelloRPC directory within your local {{{product}}} git repository. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``

Step 2: Run the server by executing the following command: ``python pyserver.py``. This will result in a blocking wait state - there is no direct output to stdout from the Python server.

Step 3: Open a second terminal window

Step 4: Move to the location where you saved the Python client you wrote earlier in the tutorial. Alternately, move to the HelloRPC directory within your local {{{product}}} git repository. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``

Note: If you use the supplied client file from the GitHub repository (pyclient.py), you must edit it to point to the local helloRPC server instead of the helloRPC server in the Datawire cloud. To do this, change the URL passed when instantiating the client object from ``http://hello.datawire.io`` to ``http://127.0.0.1:8910/hello``. For more information, refer to the :ref:`client instantiation section of the walkthrough<part2PythonClientInstantiation>`.

Step 5: Run the client by executing the following command: ``python pyclient.py``

You should see the following in your terminal window (stdout):

.. code-block:: none

   Request says 'Hello from Python!'
   Response says u'Responding to [Hello from Python!] from Python'

.. 
   JMK why is the u only present on the second line? I need to understand this better

The u in the response text indicates that the response is in Unicode. The first line is defined and printed by these two lines in the Python client we wrote:

.. code-block:: none

   request.text = "Hello from Python!"
   print "Request says %r" % request.text

The second line is printed by this line in the Python client we wrote:

.. code-block:: none

   print "Response says %r" % response.result

The value of response.result is set in the server inside the implementation definition (HelloImpl class) using this line:

.. code-block:: none

   res.result = "Responding to [%s] from Python" % request.text

[[JMK note that the %r in the client print lines should likely be %s and the %s in the server code should likely be %s. See issue #85]]

That's it! You should now understand how to define clients and servers to use the basic RPC interaction pattern defined in {{{product}}} and have seen those clients and servers in action in Python. You can see the clients and servers running in multiple languages :doc:`here <try>`. or just experiment some more on your own with Python!
