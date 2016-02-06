# Binary 

This example illustrates how Quark can be used to provide an
implementation of an arbitrary binary websocket protocol that is
accessible from multiple languages.

## Running this example

The clients expect to find the service on http://127.0.0.1:8910/binary
and each server runs there. Thus you may run a single server at a
time, as well as any number of clients.

To get started, download the example by cloning its git repository as
follows:

        git clone https://github.com/datawire/quark.git

All of the directions below assume you are starting from
*repoBase*/examples/binary where *repoBase* is the location where you
cloned the repository above.

### Java

Compile and install the protocol implementation in binary.q:

        quark install binary.q --java

Compile the Java server and client with 

        mvn compile

Run the Java server with

        mvn exec:java -Dexec.mainClass=binary.ServerMain

Run the Java client with

        mvn exec:java -Dexec.mainClass=binary.ClientMain

### Python

Coming soon!

### Javascript

Coming soon!
