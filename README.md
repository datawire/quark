**Note**: This is the master branch, where fresh development occurs.

# Quark

Quark lets you define and implement rich (micro)service APIs that work
with your existing application frameworks and protocols. Quark lets
you:

* Easily define RPC or event based APIs on top of existing REST or
  websocket protocols
* Build service APIs with rich protocol semantics
* Support multiple programming languages and application frameworks

### Example

The Slack service includes both a JSON RPC over HTTP (https://api.slack.com) and a real-time API for processing messages (https://api.slack.com/rtm). Quark lets a service author easily create and maintain rich clients for both these APIs. By describing the API using Quark, the service author can quickly produce clients in multiple languages that interface directly with this API.

Examples of this and more can be found in the [Quark Examples repository](https://github.com/datawire/quark/tree/master/examples).

## Installation and Configuration

This section provides an overview of the prerequisites, installation, and compilation process for Quark meant to get you started. Some features and target output languages have additional requirements. For full installation and documentation instructions, see the [Quark Installation and Configuration Guide](http://datawire.github.io/quark/install/index.html).

### Prerequisites

Quark requires a modern Linux distribution or Mac OS X. It has been successfully tested on the following:

* Mac OS 10.10 (Yosemite)
* Mac OS 10.11 (El Capitain)
* Ubuntu 14.04 (Trusty)
* Fedora 22

Quark also requires the following:

* Python 2.7+
* pip

### Installation

To install Quark, run the following command:

        pip install datawire-quark

### Compiling Quark Files

The Quark compiler can perform four distinct functions: generating code in one or more target languages, compiling and running the generated code, generating HTML documentation based on annotations in the code, and generating distribution packages for one or more target languages.

The simplest command generates code in all supported target languages in default output directories. It is:

`quark compile <files>`

where <files> is a space-separated list of the Quark files to compile.

This will output code in a subdirectory of your base quark directory (given the name of the first file in the <files> list) and put generated Java, Javascript, and Python code in java, js, and py subdirectories.

## Quark Language Basics

Quark is a language designed primarily for facilitating microservice communication pathways.

Quark uses many of the standard elements of object-oriented programming languages including packages, interfaces, classes, methods, properties, functions, variables, annotations, operators, and keywords. It includes inheritance, operator overloading, and method overriding capabilities.

Quark code is stored in text files with a .q file extension.

See the [Quark Language Reference](http://datawire.github.io/quark/language-reference/index.html) for more specifics about language structure and language elements.

## Next Steps

Please read the [Quark Installation and Configuration Guide](http://datawire.github.io/quark/install/index.html) for more detailed information about installation, configuration, compilation, packaging, and documentation generation.

The [Quark Language Reference](http://datawire.github.io/quark/language-reference/index.html) provides information about how to code in Quark and specifics about individual language elements including keywords, operators, functions, data types, and annotations.

The [Quark Examples repository](https://github.com/datawire/quark/tree/master/examples) (located in the examples subdirectory of the quark github repository) includes a wide variety of examples illustrating both simple language features and full end-to-end service implementations.

The [Quark Issues list](https://github.com/datawire/quark/issues) provides a list of known issues - please feel free to add new issues or feature requests as you start to use Quark.
