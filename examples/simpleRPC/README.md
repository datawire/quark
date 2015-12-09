# Simple RPC Example

SimpleRPC demonstrates how Quark can implement cross-language RPC with very little boilerplate code.

## RPC Contract

### Writing a client

### Writing a server

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

Compile the Java server and client with `mvn compile`.

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
