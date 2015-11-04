# Quark

Quark lets you define and implement rich (micro)service APIs that work
with your existing application frameworks. Quark lets you:

* Rapidly prototype and iterate service APIs
* Build service APIs with rich protocol semantics
* Support multiple programming languages and application frameworks

In addition to developing and implementing APIs, Quark also offers a packaging service for each of its component languages, allowing easy distribution and advertising of service availability to potential users. Quark also generates API documentation for your libraries in standard formats for each language (when they exist) including Javadoc for Java and Sphinx for Python.

##Rapid Prototyping

Quark is designed to rapidly prototype and iterate service APIs. In a typical use case, the service developer writes both the server component and a client library allowing other  applications (or services) to use their service. With Quark, the client component can be written quickly and much of the specifics of how calls are processed is abstracted away from the client. This allows for rapid iteration of APIs with many service changes requiring little or no modifications to the calls themselves or the code written by users of the service to access it. Just update the service and the client libraries within user applications and it all works seamlessly. 

### Example

The Datawire Directory service allows client applications to obtain and store data within complex data structures from a central source, replicating the data with an eventual consistency model. Clients can subscribe to get notifications when data is updated or added to the central directory; the directory pushes the new or modified data to subscribers asynchronously in an eventual consistency model. The service author can iterate on the protocol without changing the application interface presented by the Quark-generated client libraries. In other words, client authors can take advantage of new enhancements to the Quark API without changing any of the client code -- they just need to update the library.

##Rich Semantics

Quark supports request/response and event-driven programming models. It also supports many modern features including idempotency, RPC, flow controls, timeouts, and one-way asynchronous processing.

###Example

Examples of many of the features Quark supports can be found in the Examples Repository.

## Multiple Language and Framework Support

Quark lets you write once and generate working code in multiple output languages. Because the same Quark code can be easily generated into multiple languages, each service developer can choose their language of choice without worrying about whether they'll be able to talk to each other - a service primarily using Java can easily handle requests from applications or services built in Python or Javascript. Further, instead of just publishing their API contract and forcing the developers in each language to figure out how to implement code around the specified rules, services built with Quark can generate a client library native to each supported language to be directly included in the services wishing to use it. Using the accompanying generated documentation those client developers can quickly start communicating with a minimal level of effort or need to learn new languages or tooling. 

### Example

The Slack service includes a real-time API for processing messages (https://api.slack.com/rtm). Quark lets the service author easily create and maintain clients for the API. By defining the API using Quark, the service author can quickly produce clients in multiple languages that interface directly with this API.

## Installation and Configuration

This section provides an overview of the prerequisites, installation, and compilation process for Quark meant to get you started. Some features and target output languages have additional requirements. For full installation and documentation instructions, see the Quark Installation and Configuration Guide.

### Prerequisites

Quark requires a modern Linux distribution or Mac OS X. It has been successfully tested on the following:

* Mac OS 10.10 (Yosemite)
* Mac OS 10.11 (El Capitain)
* Ubuntu 14.04 (Trusty)
* Fedora 22

Quark also requires the following:

* Python 2.7+
* pip
* a local git installation (to access the code base)

### Installation

To install Quark, do the following:

1. Pull the quark repository from GitHub using the following command:

`git clone https://github.com/datawire/quark.git`

2. Run the following command from the top-level quark directory:

`python setup.py develop`

### Compiling Quark Files

The Quark compiler can perform four distinct functions: generating code in one or more target languages, compiling and running the generated code, generating HTML documentation based on annotations in the code, and generating distribution packages for one or more target languages.

The simplest command generates code in all supported target languages in default output directories. It is:

`quark compile <files>`

where <files> is a space-separated list of the Quark files to compile.

This will output code in a subdirectory of your base quark directory (given the name of the first file in the <files> list) and put generated Java, Javascript, and Python code in java, js, and py subdirectories.

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