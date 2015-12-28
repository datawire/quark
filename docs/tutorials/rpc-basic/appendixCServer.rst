Appendix C: Interim Example States - Server
===========================================

This file provides cross-checks for users who want to ensure they have properly followed the instructions for a particular stage of the tutorial. The sections below show the proper file state at the end of each part of the instructions. If needed, the contents below can be copied into a client code file as a starting point before trying the next section's instructions.

.. _part1ServerFinished:

Part 1 pyserver.py Initial Setup
--------------------------------

At the end of part 1 of the contract creation, your file should contain the following:

.. code-block:: none

   from quark_threaded_runtime import get_runtime
   import hello
   
   
   def main():
   
   if __name__ == '__main__':
        main()

:ref:`Return to Part 2 <Part2ResponseDefinition>` of the server definition to continue the tutorial.

Part 2 Response Definition
--------------------------

At the end of part 2 of the contract creation, your file should contain the following:

.. code-block:: none

   from quark_threaded_runtime import get_runtime
   import hello
   
   class HelloImpl(object):

       def hello(self, request):
           res = hello.Response()
           res.result = "Responding to [%s] from Python" % request.text
           return res
   
   def main():
   
   if __name__ == '__main__':
        main()

:ref:`Return to Part 3 <part3ProcessRequest>` of the server definition to continue the tutorial.

A full copy of the Python server for this example can be found `here <https://github.com/datawire/quark/blob/master/examples/helloRPC/pyserver.py>`_ - the file you constructed following the instructions in parts 1-5 of the server definition page should match it exactly excepting comments and @doc annotations.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]