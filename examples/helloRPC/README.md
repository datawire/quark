# Hello RPC Example

This example demonstrates how Quark can implement cross-language RPC.

## Hello Service Contract

The Hello service contract is expressed in hello.q. The service
contract includes the service interface (hello.Hello) along with the
value classes (hello.Request and hello.Response) used to interact with
the service. The hello.q file also defines the names of the client and
server stubs (hello.HelloClient, and hello.HelloServer).

### Writing a client

The example provides two clients written to use the service
(pyclient.py, HelloRPCClient.java). Both these clients follow the same
basic pattern. A client instance can be constructed by passing in to
the client constructor the runtime integration and the URL of the
server.

### Writing a server

The server code files (pyserver.py, jsserver.js, HelloRPCServer.java)
also follow the same basic pattern. A server instance can be
constructed by passing in to the server constructor the runtime
integration and the implementation of the contract interface. Then the
integration can serve the service on the given URL.

## Running this example

The clients expect to find the service on http://127.0.0.1:8910/hello
and each server runs there. Thus you may run a single server at a
time, as well as any number of clients.

To get started, download the example by cloning its git repository as
follows:

        git clone https://github.com/datawire/quark.git

All of the directions below assume you are starting from
*repoBase*/examples/helloRPC where *repoBase* is the location where
you cloned the repository above.

### Python

Make sure the python-threaded integration is installed (`pip install
-U datawire-quark-threaded`).

Compile and install the Service Contract in hello.q:

        quark --python package hello.q
        pip install hello/py/dist/hello-0.1.0-py2-none-any.whl

Run the Python server with

        python pyserver.py

Run the Python client with

        python pyclient.py

### Java

Note: This example requires the datawire-quark-netty integration. It
will be installed automatically if you do not already have it
installed.

Compile and install the Service Contract in hello.q:

        quark --java package hello.q
        (cd hello/java && mvn install)

Compile the Java server and client with 

        mvn compile

Run the Java server with

        mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer

Run the Java client with

        mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient

### JavaScript

Make sure the JS/Node setup has been completed:

        npm install datawire-quark-node

Compile and install the Service Contract in hello.q:

        quark --javascript package hello.q
        npm install hello/js/hello.tgz

Run the Javascript server with

        node jsserver.js

JavaScript client support is coming soon!
