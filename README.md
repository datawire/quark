# Quark

Quark lets you define and implement rich (micro)service APIs that work
with your existing application frameworks. Quark lets you:

* Rapidly prototype and iterate service APIs
* Build service APIs with rich protocol semantics including request/response, event-driven, and idempotency
* Support multiple programming languages and application frameworks

In addition to developing and implementing APIs, Quark also offers a packaging service for each of its component languages, allowing easy distribution and advertising of service availability to potential users. Quark also generates API documentation for your libraries in standard formats for each language (when they exist) including Javadoc for Java and Sphinx for Python.

##Rapid Prototyping

Quark is designed to rapidly prototype and iterate service APIs. In a typical use case, the service developer writes both the server component and a client library allowing other  applications (or services) to use their service. With Quark, the client component can be written quickly and much of the specifics of how calls are processed is abstracted away from the client. This allows for rapid iteration of APIs with many service changes requiring little or no modifications to the calls themselves or the code written by users of the service to access it. Just update the service and the client libraries within user applications and it all works seamlessly. 

### Example

The Datawire Directory service replicates an application-specific data structure to its clients. Quark lets the service author define an API for replicating this data, and create clients that support this API. The service author can iterate on the protocol without changing the application interface presented by the Quark-generated client libraries. In other words, client authors can take advantage of new enhancements to the Quark API without changing any of the client code -- they just need to update the library.

[[JMK Need to clean this up a bit - needs clarification and expansion]]

##Rich Semantics

We support idempotency, one way async, RPC, flow control, timeouts

[[JMK Not sure what else to say here]]

###Example

Examples of many of the features Quark supports can be found in the Examples Repository.

## Multiple Language and Framework Support

Quark lets you write once and generate working code in multiple output languages. Because the same Quark code can be easily generated into multiple languages, each service developer can choose their language of choice without worrying about whether they'll be able to talk to each other - a service primarily using Java can easily handle requests from applications or services built in Python or Javascript. Further, instead of just publishing their API contract and forcing the developers in each language to figure out how to implement code around the specified rules, services built with Quark can generate a client library native to each supported language to be directly included in the services wishing to use it. Using the accompanying generated documentation those client developers can quickly start communicating with a minimal level of effort or need to learn new languages or tooling. 

### Example

The Slack service includes a real-time API for processing messages (https://api.slack.com/rtm). Quark lets the service author easily create and maintain clients for the API. By defining the API using Quark, the service author can quickly produce clients in multiple languages that interface directly with this API.

## Installation and Configuration

- Basic info here
- Reference to Install and Config guide for more info

### Prerequisites

- just the basics, no examples/extras

### Installation

python setup.py develop

### Compiling Quark Files

- just the basics, see guide for full options

## Quark Language Basics

Quark is a Turing-complete language designed primarily for facilitating microservice communication pathways although it is not limited to this function.

Quark uses many of the standard elements of object-oriented programming languages including packages, interfaces, classes, methods, properties, functions, variables, annotations, operators, and keywords. It includes inheritance, method and operator overloading, and property and method overriding capabilities.

Quark may be used to write libraries or applications. Applications must contain a single top-level main() function containing the executions structure for the application; this function may reference code from any defined class or package within the application.

Quark code is stored in text files with a .q file extension.

See the Quark Language Reference for more specifics about language structure and language elements.

## Next Steps

Please read the Quark Installation and Configuration Guide for more detailed information about installation, configuration, compilation, packaging, and documentation generation.

The Quark Language Reference provides information about how to code in Quark and specifics about individual language elements including keywords, operators, functions, data types, and annotations.

The Quark Examples repository (located in the examples directory) includes a wide variety of examples illustrating both simple language features and full end-to-end service implementations.

The Quark Issues list provides a list of known issues - please feel free to add new issues or feature requests as you start to use Quark.