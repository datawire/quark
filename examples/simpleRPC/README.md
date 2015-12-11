# Simple RPC Example

SimpleRPC demonstrates how Quark can implement cross-language RPC with very little boilerplate code.

## RPC Contract

The RPC contract is expressed in simpleRPC.q. There are two value classes (Request and Response) and a service interface (Hello). The Quark code also contains the names of the client class (HelloClient) and the server stub class (HelloServer).

### Writing a client

The client code files (pyclient.py, SimpleRPCClient.java) follow the same basic pattern. A client instance can be constructed by passing in to the client constructor the runtime integration and the URL of the server. The only defined function (hello) requires an argument, an instance of Request, and returns an instance of Response. The code `response = client.hello(request)` is what causes the remote procedure call to take place.

### Writing a server

The server code files (pyserver.py, jsserver.js, SimpleRPCServer.java) also follow the same basic pattern. A server instance can be constructed by passing in to the server constructor the runtime integration and the implementation of the contract interface. Then the integration can serve the service on the given URL.

## Running this example

The clients expect to find the service on http://127.0.0.1:8910/hello and each server runs there. Thus you may run a single server at a time, as well as any number of clients.

### Python

Make sure the python-threaded runtime integration is installed (`pip install -U datawire-quark-threaded`).

Compile and install the RPC Contract in simpleRPC.q:

        quark --python package simpleRPC.q
        pip install simpleRPC/py/dist/hello-0.1.0-py2-none-any.whl

Run the Python server with

        python pyserver.py

Run the Python client with

        python pyclient.py

### Java

Compile and install the RPC Contract in simpleRPC.q:

        quark --java package simpleRPC.q
        (cd simpleRPC/java && mvn install)

Compile the Java server and client with 

        mvn compile

Run the Java server with

        mvn exec:java -Dexec.mainClass=simpleRPC.SimpleRPCServer

Run the Java client with

        mvn exec:java -Dexec.mainClass=simpleRPC.SimpleRPCClient

### JavaScript

Make sure the JS/Node setup has been completed:

        npm install ws
        npm install datawire-quark-core
        npm install datawire-quark-node

Compile and install the RPC Contract in simpleRPC.q:

        quark --javascript package simpleRPC.q
        npm install simpleRPC/js/hello.tgz

Run the Javascript server with

        node jsserver.js

JavaScript client support is coming soon!

# FIXME

- Better answer for JS clients.
- Any answer for failures. Right now client code hangs forever if the server is unavailable.
- `mvn` stuff does not work for everybody.
