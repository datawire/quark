# Quark

Quark is a lightweight programming language that lets you define and implement rich (micro)service APIs that work with your existing application frameworks. Quark lets you:

* Rapidly prototype and iterate service APIs
* Build service APIs with rich protocol semantics, e.g., request/response, event-driven, idempotency
* Support multiple programming languages and application frameworks

## Examples

The Slack service includes a real-time API for processing messages (https://api.slack.com/rtm). Quark lets the service author easily create and maintain clients for the API. By defining the API using Quark, the service author can quickly produce clients in multiple languages that interface directly with this API.

The Datawire Directory service replicates an application-specific data structure to its clients. Quark lets the service author define an API for replicating this data, and create clients that support this API. The service author can iterate on the protocol without changing the application interface presented by the Quark-generated client libraries. In other words, client authors can take advantae of new enhancements to the Quark API without changing any of the client code -- they just need to update the library.






Quark is a lightweight programming language that lets you write once and generate working code in multiple output languages. It is designed primarily for use in developing microservice communication pathways. It can be used to develop APIs a microservice makes available to other microservices within an application ecosystem or as a mechanism for advertising the features of a new service through simple library publication with automatic documentation generation in the native format used for automated API documentation in the relevant language (if one exists).

Because the same Quark code can be easily generated into multiple languages, each service developer can choose their language of choice without worrying about whether they'll be able to talk to each other - a service primarily using Java can easily handle requests from applications or services built in Python or Javascript. Further, instead of just publishing their API contract and forcing the developers in each language to figure out how to implement code around the specified rules, services built with Quark can generate a client library native to each supported language to be directly included in the services wishing to use it. Using the accompanying generated documentation those client developers can quickly start communicating with a minimal level of effort or need to learn new languages or tooling. 

Quark also allows developers to architect microservices through code.
