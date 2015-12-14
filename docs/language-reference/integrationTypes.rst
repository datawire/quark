Integration Types
-----------------

Integration types are Quark data types that depend on using an integration to execute. Typically these types are defines with method signatures rather than code because the code needed to execute the desired functionality is specific to a particular integration and is defined within that integration. However, some integration types may include method definitions that use other integration types - these look like normal Quark data types but can't be executed without an integration because of their dependencies. Essentially normal Quark data types can be used in code without installing an integration but integration types cannot. More information about the available integrations and how to install them can be found :doc:`here <../install/integration>`.

Quark defines the following integration types:

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
