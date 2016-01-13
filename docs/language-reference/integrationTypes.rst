Integration Types
-----------------

Integration types are {{{language}}} data types that depend on a runtime integration. These types are typically defined with method signatures rather than with full method code because the desired functionality cannot be consistently defined by {{{language}}} code. However, not all integration types use method signatures - some integration types may include method definitions that use other integration types. These integration types look like normal {{{language}}} data types but can't be executed without a runtime integration installed because of their dependencies. 

More information about the available integrations and how to install them can be found :doc:`here <../install/integration>`.

{{{language}}} defines the following integration types:

.. toctree::
   :maxdepth: 1

.. _Buffer:

Buffer
~~~~~~

Documentation coming soon

.. _Client:

Client
~~~~~~

A factory class that can be used to create generic clients. Typically this class will be extended to define a more specific client for a particular application or service.


.. _Codec:

Codec
~~~~~

Documentation coming soon

.. _HTTPHandler:

HTTPHandler
~~~~~~~~~~~

Documentation coming soon

.. _HTTPRequest:

HTTPRequest
~~~~~~~~~~~

Documentation coming soon

.. _HTTPResponse:

HTTPResponse
~~~~~~~~~~~~

Documentation coming soon

.. _HTTPServlet:

HTTPServlet
~~~~~~~~~~~

Documentation coming soon

.. _JSONObject:

JSONObject
~~~~~~~~~~

Documentation coming soon

.. _ResponseHolder:

ResponseHolder
~~~~~~~~~~~~~~

Holds a response while it is being formulated. This should only be used within types that are processing responses prior to their being sent to the client.

.. _Runtime:

Runtime
~~~~~~~

Documentation coming soon

.. _Server:

Server
~~~~~~

A factory class that can be used to create generic servers. Typically this class will be extended to define a more specific server for a particular application or service.

.. _Servlet:

Servlet
~~~~~~~

Documentation coming soon

.. _Task:

Task
~~~~

Documentation coming soon

.. _WebSocket:

WebSocket
~~~~~~~~~

Documentation coming soon

.. _WSHandler:

WSHandler
~~~~~~~~~

Documentation coming soon

.. _WSServlet:

WSServlet
~~~~~~~~~

Documentation coming soon
