SimpleRPC is an example of a RPC service definition

Java
====

To use the java sample run `mvn compile` followed by

        mvn exec:java -Dexec.mainClass=simpleRPC.SimpleRPCServer

in one terminal window, and

        mvn exec:java -Dexec.mainClass=simpleRPC.SimpleRPCClient

in the other terminal window
