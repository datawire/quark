Putting It All Together
=======================

We now have all of the pieces needed for a simple working RPC example. The instructions on this page assume you have already followed the directives for building and installing the HelloRPC service contract in Python, Java, and Javascript as outlined earlier in the tutorial (separately for each language). If you have not done this, please do so now before trying the steps below.

* :doc:`Building and installing in Python<pythonBuild>`
* :doc:`Building and installing in Java<javaBuild>`
* :doc:`Building and installing in Javascript<javascriptBuild>`

If you completed the previous portions of the RPC walkthrough in your language of choice, you've already seen one example of a helloRPC client talking to a local helloRPC server in the same language. If you skipped that step, would like to review it, or if you chose a different language to work in and would like to see the Python example running, Part 1 reviews how to use a Python client to talk to a local Python server (using the examples supplied in the {{{product}}} GitHub repository). Otherwise, feel free to skip to :ref:`Part 2<part2TryRPC>` and the additional examples that follow. 

Part 1: Python Client and Python Server
---------------------------------------

To run the HelloRPC example with a Python client and Python Server do the following:

Step 1: Move to the HelloRPC directory within your local {{{product}}} git repository. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``

Step 2: Run the server by executing the following command: ``python pyserver.py``. This will result in a blocking wait state - there is no direct output to stdout from the Python server.

Step 3: Open a second terminal window

Step 4: Move to the HelloRPC directory within your local product git repository. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``

Note: You must edit the supplied client file (pyclient.py) to point to the local helloRPC server instead of the helloRPC server in the Datawire cloud. To do this, change the URL passed when instantiating the client object from ``http://hello.datawire.io`` to ``http://127.0.0.1:8910/hello``. For more information, refer to the :ref:`client instantiation section of the walkthrough<part2PythonClientInstantiation>`.

Step 4: Run the client by executing the following command: ``python pyclient.py``

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

.. _part2TryRPC:

Part 2: Running Two Local Servers
---------------------------------

The local Hello RPC service is hard coded to run at http://127.0.0.1:8910/hello. All of the servers and clients assume the service is there. Because all three servers use the same URI, only one server can be running at any given time. Try to launch a second server in Javascript while the Python server is still running as follows:

Step 1: Open a new terminal window

Step 2: Move to the HelloRPC directory within your local {{{product}}} git repository if you are not already there. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``.

Step 3: Run the Javascript server by executing the following command: ``node jsserver.js``.

You should get the following error indicating that the service URI is already in use and the server cannot be started:

.. code-block:: none

   RPC Server failed to register http://127.0.0.1:8910/hello due to: 
   listen EADDRINUSE 127.0.0.1:8910

Note: There is no line break in the real error

You will get a similar error if you try to start a second Python server or a Java server.

Part 3: Mixing Client and Server Languages
------------------------------------------

You can run either client (Java or Python) against any of the three servers (Java, Javascript, or Python). The only rule is that only one local server can be running at a time (as illustrated in Part 2).

You should already have the local Python server running if you completed Part 1 of this page. Let's use the Java client to connect to that server as follows:

Step 1: Open a new terminal window

Step 2: Move to the HelloRPC directory within your local {{{product}}} git repository if you are not already there. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``.

Note: You must edit the prebuilt client file to point to the local helloRPC server instead of the helloRPC server in the Datawire cloud. To do this, do the following after Step 2:

Step 2.1: Move to the Java source directory (``cd src/main/java/helloRPC``)

Step 2.2: Open HelloRPCClient.java in the text editor of your choice

Step 2.3: Change the URL passed when instantiating the client object from ``http://hello.datawire.io`` to ``http://127.0.0.1:8910/hello``.

Step 3: Run the following command to build the client: ``mvn compile``

Step 4: Run the following command to start the Java client: ``mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient``

After some log lines outlining the processing, you should see the following in the terminal window (stdout):

.. code-block:: none

   Request says: Hello from Java!
   Response says: Responding to [Hello from Java!] from Python

Remember, the content of the second line is the server regurgitating what the client sent it then identifying its language. In this case, the Java client sent "Hello from Java!" to the Python server.

You can get similar results from any of the six language combinations. Using the Python client to talk to the Javascript server would yield the following text:

.. code-block:: none

   Request says 'Hello from Python!'
   Response says u'Responding to [Hello from Python!] from JS'

Note that there are subtle differences in the output from different combinations above - the Python client places a single quote around request.text and response.result when printing them while the Java client doesn't use the quotation marks. Conversely, the Java client uses a colon before the stored text while the Python client does not. Also, Java doesn't indicate that the response is in Unicode by prepending a u to the output from the server. The client does all of the actual printing, so the format only depends on which client is being used and not which server is running at the time.

.. 
   JMK I'm not sure if I should keep or kill the above observation - it's interesting but
   possibly overkill. Also, we should probably clean up the inconsistency and use the same
   text/formatting from all of the clients so this is not a distraction.

That's it! You should now understand how to define clients and servers to use the basic RPC interaction pattern defined in {{{product}}} and have seen those clients and servers in action in multiple languages. Time to experiment some more on your own!
