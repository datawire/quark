Appendix B: Interim Example States - Client
===========================================

This file provides cross-checks for users who want to ensure they have properly followed the instructions for a particular stage of the tutorial. The sections below show the proper file state at the end of each part of the instructions. If needed, the contents below can be copied into a client code file as a starting point before trying the next section's instructions.

.. _part1ClientFinished:

Part 1 pyclient.py Initial Setup
--------------------------------

At the end of part 1 of the client creation, your file should contain the following:

.. code-block:: none

   from quark_threaded_runtime import get_runtime
   import hello
   
   
   def main():
   
   if __name__ == '__main__':
        main()

:ref:`Return to Part 2 <part2ClientInitialization>` of the client definition to continue the tutorial.

.. _part2ClientFinished:

Part 2 Client Initialization
----------------------------

At the end of part 2 of the client creation, your file should contain the following:

.. code-block:: none

   from quark_threaded_runtime import get_runtime
   import hello
   
   
   def main():
       runtime = get_runtime()

       client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")   


   if __name__ == '__main__':
        main()


:ref:`Return to Part 3 <part3Request>` of the client definition to continue the tutorial.

.. _part3ClientFinished:

Part 3 Setting Up the Request
-----------------------------

At the end of part 3 of the client creation, your file should contain the following:

.. code-block:: none

   from quark_threaded_runtime import get_runtime
   import hello
   
   
   def main():
       runtime = get_runtime()

       client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")
       request = hello.Request()
       request.text = "Hello from Python!"
       print "Request says %r" % request.text   


   if __name__ == '__main__':
        main()

:ref:`Return to Part 4 <part4SendRequest>` of the client definition to continue the tutorial.


A full copy of the client for this example can be found `here <https://github.com/datawire/quark/blob/master/examples/helloRPC/pyclient.py>`_ - the file you constructed following the instructions in parts 1-4 of the client definition page should match it exactly barring differences in the content of the print requests.

[[JMK The url above should be branch-specific; once the branch variable is in place and working this can be handled automagically as part of the build.]]