Introduction to RPC
===================

Note: feel free to skip this if you are already familiar with RPC.

There are three main elements controlling an RPC interaction:

1. A value class: This is a class containing properties representing the information being requested or the information being sent during an interaction

2. An interface: The interface consists solely of method signatures defining the action part of the interaction - what can actually be done as the client and server communicate.

3. An interaction pattern: The directives indicating how to process the interaction defined in the specified interface.

Interaction Patterns
--------------------

There are a lot of possible interaction patterns. The most basic is a simple request/response pattern that sends one request and expects a single response in return. Variations on this pattern include a single request that expects a series of responses, multiple requests that expect a single response, and multiple requests expecting multiple responses.

You can also have requests that do not expect any response at all or requests with streamed responses. Subscription models that request later push notice when a particular criteria is met are also common patterns.

Other interaction patterns can add things like caching, timeouts, retry directives, and default values to any of the variations on request-response.