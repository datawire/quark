Appendix A: Interim Example States - RPC Contract
=================================================

This file provides cross-checks for users who want to ensure they have properly followed the instructions for a particular stage of the tutorial. The sections below show the proper file state at the end of each part of the instructions. If needed, the contents below can be copied into a simpleRPC.q file as a starting point before trying the next section's instructions.

.. _part1ContractFinished:

Part 1 simpleRPC.q contract
---------------------------

At the end of part 1 of the contract creation, your file should contain the following:

.. code-block:: none

   @version(0.1.0)
   package hello {}

:ref:`Return to Part 2 <part2Classes>` of the contract definition to continue the tutorial.

.. _part2ContractFinished:

Part 2 simpleRPC.q contract
---------------------------

.. code-block:: none

   @version(0.1.0)
   package hello {
   
       class Request {
           String requestyStuff;
       }

       class Response {
           String responsyStuff;
       }
   
   }


:ref:`Return to Part 3 <part3Interface>` of the contract definition to continue the tutorial.