Quickly Trying RPC
==================

Before building your own RPC client and servers, you can see RPC with {{{product}}} in action using a provided client and an RPC server in the Datawire cloud.

Step 1: Run the following command to install the {{{product}}} Python threaded integration:

``pip install {{{threaded_integration}}}``

Step 2: Move to the HelloRPC directory within your local {{{product}}} git repository. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``

Step 3: Run the client by executing the following command: ``python pyclient.py``

You should see the following in your terminal window (stdout):

.. code-block:: none

   Request says 'Hello from Python!'
   Response says u"Responding to 'Hello from Python!' from Datawire Cloud!"

You just used the provided Python helloRPC client to communicate with the helloRPC server in the Datawire cloud. Now, let’s see how to write a client that performs the same functionality as well as a local server that sends similar responses to that client via RPC. You’ll be able to switch your client back and forth so it communicates with either the local server or the server in the cloud.
