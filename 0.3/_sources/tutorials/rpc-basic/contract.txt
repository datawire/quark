Defining the Service Contract
=============================

The first step when working with RPC is to define a contract in {{{language}}}. This contract defines the value classes, interfaces, and interaction patterns as well as how they can be used together.

Note: If you don't want step-by-step guidance about how to create the contract and just want to start from a completed contract, there is a :ref:`link to the full contract file <fullExampleContract>` at the bottom of this page.

.. _part1Framework:

Part 1: Creating the framework
------------------------------

This section helps you define the necessary structure for your service contract.

Relevant code:

.. code-block:: none
   :emphasize-lines: 2,4

   @version("0.1.0")
   package hello {
   
   }

This creates a versioned {{{language}}} library in a package named hello.

.. _part2Classes:

Part 2: Adding value classes
----------------------------

This section defines the value classes needed by the Hello World RPC service. These classes hold the data that will be passed between the client and the server.

.. code-block:: none
   :emphasize-lines: 4,5,6,7,8,9
   
   @version("0.1.0")
   package hello {
   
      class Request {
         String text;
      }
   
      class Response {
         String result;
      }
   
   }

.. _part3Interface:

Part 3: Interface
-----------------

This section defines the interface needed by the Hello World RPC service. The interface contains the details of the interaction pattern being used, in this case a single request that generates a single response.

.. code-block:: none
   :emphasize-lines: 12,14,15,16
   
   @version("0.1.0")
   package hello {
   
      class Request {
         String text;
      }
   
      class Response {
         String result;
      }
   
      interface Hello extends Service {
   
         @delegate(self.rpc)
         Response hello(Request request);
      }
        
   }

The Hello interface extends the Service interface supplied by {{{language}}}. This interface defines the actual communication mechanism between the client and the server.

The Hello interface specifies the use of the rpc interaction pattern by including ``@delegate(self.rpc)``. Note that this is a workaround; the preferred method for specifying the simple rpc interaction pattern is ``@delegate(rpc)`` but it is not currently working.

The Hello interface define a method named hello() that expects a request as an input parameter and returns a response object. This is the method that glues together the request and response; It is used in both the client and the server implementations. In the client it is used to send a request to the server and in the server it determines the proper response to that request.

.. _part4Client:

Part 4: Client
--------------

This section defines the client processing code in {{{language}}}. This definition will be used within the client code in each supported target language to perform the actual communications work of the client.

Relevant code:

.. code-block:: none
   :emphasize-lines: 18
   
   @version("0.1.0")
   package hello {
   
      class Request {
         String text;
      }
   
      class Response {
         String result;
      }
   
      interface Hello extends Service {
   
         @delegate(self.rpc)
         Response hello(Request request);
      }
      
      class HelloClient extends Client, Hello {}     
   }


Define an empty class named HelloClient that extends the {{{language}}} Client integration type and uses the Hello interface we just defined. This class will be instantiated in the client code and used to send requests to the server. Most of the work of this class is abstracted away inside the {{{language}}} Client class.

.. _part5Server:

Part 5: Server
--------------

This section defines the server in {{{language}}}. This definition will be used within the server written in each supported language to access the code within {{{language}}} and the installed integration that accepts the client request and packages up the response to send back to the client.

.. _fullExampleContract:

Relevant code:

.. code-block:: none
   :emphasize-lines: 20
   
   @version("0.1.0")
   package hello {
   
      class Request {
         String text;
      }
   
      class Response {
         String result;
      }
   
      interface Hello extends Service {
   
         @delegate(self.rpc)
         Response hello(Request request);
      }
      
      class HelloClient extends Client, Hello {}
      
      class HelloServer extends Server<Hello> {}
   }


Define an empty class named HelloServer that extends the {{{language}}} Server implementation type. This type expects an implementation type, in this case the Hello interface defined above. This class will be instantiated in the server code and used to accept requests from the client and return responses to it based on those requests. Most of the work of this class is abstracted away inside the {{{language}}} Server class.

That's it! The contract is fully defined now and ready to be turned into a library for your Hello clients and servers to use.
