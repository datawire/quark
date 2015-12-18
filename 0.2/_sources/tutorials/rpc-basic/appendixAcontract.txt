Appendix A: Interim Example States - RPC Contract
=================================================

This file provides cross-checks for users who want to ensure they have properly followed the instructions for a particular stage of the tutorial. The sections below show the proper file state at the end of each part of the instructions. If needed, the contents below can be copied into a simpleRPC.q file as a starting point before trying the next section's instructions.

.. _part1ContractFinished:

Part 1 hello.q contract
---------------------------

At the end of part 1 of the contract creation, your file should contain the following:

.. code-block:: none

   @version(0.1.0)
   package hello {}

:ref:`Return to Part 2 <part2Classes>` of the contract definition to continue the tutorial.

.. _part2ContractFinished:

Part 2 hello.q contract
---------------------------

At the end of part 2 of the contract creation, your file should contain the following:

.. code-block:: none

   @version(0.1.0)
   package hello {
   
       class Request {
           String text;
       }

       class Response {
           String result;
       }
   
   }


:ref:`Return to Part 3 <part3Interface>` of the contract definition to continue the tutorial.

.. _part3ContractFinished:

Part 3 hello.q contract
---------------------------

At the end of part 3 of the contract creation, your file should contain the following:

.. code-block:: none

   @version(0.1.0)
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


:ref:`Return to Part 4 <part4Client>` of the contract definition to continue the tutorial.


.. _part4ContractFinished:

Part 4 hello.q contract
---------------------------

At the end of part 4 of the contract creation, your file should contain the following:

.. code-block:: none

   @version(0.1.0)
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



:ref:`Return to Part 5 <part5Server>` of the contract definition to continue the tutorial.


A full copy of the RPC contract for this example can be found `here <https://github.com/datawire/quark/blob/master/examples/helloRPC/hello.q>`_ - the file you constructed following the instructions in parts 1-5 of the contract definition page should match it exactly excepting comments and @doc annotations.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]