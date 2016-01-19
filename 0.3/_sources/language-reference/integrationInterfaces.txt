Integration Interfaces
----------------------

Integration interfaces are {{{language}}} interfaces that use integration types within their definition and thus require a runtime integration when used. You must install the runtime integration matching your development environment to use any of these interfaces.

More information about the available integrations and how to install them can be found :doc:`here <../install/integration>`.

{{{language}}} defines the following integration interfaces:

.. toctree::
   :maxdepth: 1

.. _ServiceInterface:

Service
~~~~~~~

The Service interface is used to define a set of methods required by services using RPC for communications between their clients and their server. These methods typically won't be called directly from any class; this interface should be extended within RPC contracts to select and configure the desired interaction patterns then used by the client and server definitions inside the contract to glue everything together.