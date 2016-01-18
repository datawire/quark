Running the Java Client and Server
==================================

We now have all of the pieces needed for a simple working RPC example. The instructions on this page assume you have already followed the directives for building and installing the HelloRPC service contract in Java as outlined on the :doc:`Compiling and Installing the Library page <javaBuild>` earlier in the tutorial. If you have not done this, please do so now before trying the steps below.

To run the HelloRPC example with a Java client and Java Server do the following:

Step 1: Open a new terminal window

Step 2: Move to the HelloRPC directory within your local {{{product}}} git repository if you are not already there. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``.

Note: You must edit the prebuilt client file to point to the local helloRPC server instead of the helloRPC server in the Datawire cloud. To do this, do the following after Step 2:

Step 2.1: Move to the Java source directory (``cd src/main/java/helloRPC``)

Step 2.2: Open HelloRPCClient.java in the text editor of your choice

Step 2.3: Change the URL passed when instantiating the client object from ``http://hello.datawire.io`` to ``http://127.0.0.1:8910/hello``.

[[JMK the current expectation is that everyone will use the prebuilt Java client if they use Java at all as we are not telling them how to write their own yet. However, I am presenting the instructions this way in preparation for having a populated Java section of the walkthrough - this entire page is more-or-less forward looking.]]

Step 3: Run the following command to build the client and the server: ``mvn compile``

Step 4: Run the following command to start the Java server: ``mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer``

Step 5: Open a new terminal window

Step 6: Move to the HelloRPC directory within your local {{{product}}} git repository if you are not already there. If you use the default location, do the following: ``cd ~/{{{github_directory}}}/examples/helloRPC``.

Step 7: Run the following command to start the Java client: ``mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient``

After some log lines outlining the processing, you should see the following in the terminal window (stdout):

.. code-block:: none

   Request says: Hello from Java!
   Response says: Responding to [Hello from Java!] from Java

The content of the second line is the server regurgitating what the client sent it then identifying its own language. In this case, the Java client sent "Hello from Java!" to the Java server so both language identifiers are Java.

That's it! You should now understand how to define clients and servers to use the basic RPC interaction pattern defined in {{{product}}} and have seen those clients and servers in action in Java. You can see the clients and servers running in multiple languages :doc:`here <try>`. or just experiment some more on your own with Java!
