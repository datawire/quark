=================================
Getting Started with RPC Tutorial
=================================

Suppose you want a method of looking up users in your user account database. You may want to be able to do this by name or by phone number. One way of setting this up is by defining separate getUserId(name) and getUserId(phone) methods that each return the user's ID in the system. This ID can then be used to look up other information about the user as needed by calling other methods.

A more efficient way to do this is to define a generic request like getUserInfo(query) that returns matching userInfo objects containing various information about the user. The entire process of getting information is encapsulated into a single call in this case rather than the slower, multi-call process described above. Further, if the userInfo object definition is extended or changes this interaction still works without any modification or need for new code (unless you want to do something further with the new information). It also supports adding new lookup criteria easily as the query is set within client code and not part of the API contract between the client and the server.

In the second model we're using RPC interactions to define a set of information we want to receive in response to a variable request. [[JMK I'm having trouble labeling this/determining the exact language to use]]

There are three components when using RPC:

1. A value class: This is a class containing properties representing the information being requested or the information being sent during an interaction

2. An interface: The interface consists solely of method signatures defining the action part of the interaction - what can actually be done as the client and server communicate.

3. An interaction pattern: The directives indicating how to process the interaction defined in the specified interface. [[JMK annotations or rpc method or?? TBD]]

[[JMK I am going to disregard methods and delegation unless someone complains]]

There are a lot of possible interaction patterns. The most basic is a simple request/response pattern that sends one request and expects a single response in return. Variations on this pattern include a single request that expects a series of responses, multiple requests that expect a single response, and multiple requests expecting multiple responses.

You can also have requests that do not expect any response at all or requests with streamed responses. Subscription models that request later push notice when a particular criteria is met are also common patterns.

Other interaction patterns can add things like caching, timeouts, retry directives, and default values to any of the variations on request-response.

Quark supports XXX interactions [[JMK TBD]]. In order to use RPC with Quark you must have a Quark integration module installed matching the development environment you're using to write your clients. [[JMK None of the integration modules are documented yet]]

The basic interaction pattern is the rpc() function. This offers a simple request/response interaction pattern.

[[JMK Using this TBD, example (probably the lead in example) TODO]]
