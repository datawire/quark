Integration Interfaces
----------------------

Integration interfaces are Quark interfaces that use integration types within their definition and thus require code defined within each specific integration module. You must be using an integration module to use any of these interfaces.

Quark defines the following integration interfaces:

.. toctree::
   :maxdepth: 1

.. _ServiceInterface:

Service
~~~~~~~

The Service interface is used to define a set of methods required by services using RPC for communications between their clients and their server. These methods typically won't be called directly from any class; this interface should be extended within RPC contracts to select and configure the desired interaction patterns then used by the client and server definitions inside the contract to glue everything together.

[[JMK This description needs some work]]