=================
Quark Quick Start
=================

This page provides an overview of the basic installation requirements and process, basic compile commands, and the Quark language. If you have successfully run and understood any of the examples, you can probably skip this Quick Start.

Installation and Configuration
==============================

This section provides an overview of the prerequisites, installation, and compilation process for Quark meant to get you started. Some features and target output languages have additional requirements. For full installation and documentation instructions, see the `Quark Installation and Configuration Guide <http://datawire.github.io/quark/0.2/install/index.html>`_.

Prerequisites
-------------

Quark requires a modern Linux distribution or Mac OS X. It has been successfully tested on the following:

* Mac OS 10.10 (Yosemite)
* Mac OS 10.11 (El Capitan)
* Ubuntu 14.04 (Trusty)
* Fedora 22

Quark also requires the following:

* Python 2.7+
* pip

Installation
------------

To install Quark, run the following command:

        pip install datawire-quark 

Compiling Quark Files
---------------------

The Quark compiler can perform four distinct functions: generating code in one or more target languages, compiling and running the generated code, generating HTML documentation based on annotations in the code, and generating distribution packages for one or more target languages.

The simplest command generates code in all supported target languages in default output directories. It is:

``quark compile <files>``

where <files> is a space-separated list of the Quark files to compile.

This will output code in a subdirectory of your base quark directory (given the name of the first file in the <files> list) and put generated Java, Javascript, and Python code in java, js, and py subdirectories.

To generate installable versions of the examples or of your own code in all of the supported languages, use the package command as follows:

``quark package <files>``

where <files> is a space-separated list of the Quark files to compile.

This does everything the compile command does but also builds the code in each language, generates documentation for each language, and creates installable packages. See the `Compilation page <http://datawire.github.io/quark/0.2/install/compile.html>`_ of the Quark Installation and Configuration Guide for specific details on where the output artifacts are placed underneath each language's subdirectory.

Quark Language Basics
=====================

Quark is a language designed primarily for facilitating microservice communication pathways.

Quark uses many of the standard elements of object-oriented programming languages including packages, interfaces, classes, methods, properties, functions, variables, annotations, operators, and keywords. It includes inheritance, operator overloading, and method overriding capabilities.

Quark code is stored in text files with a .q file extension.

See the `Quark Language Reference <http://datawire.github.io/quark/0.2/language-reference/index.html>`_ for more specifics about language structure and language elements.

Next Steps
==========

The `Quark Examples Repository <https://github.com/datawire/quark/tree/master/examples>`_ (located in the examples subdirectory of the quark github repository) includes a wide variety of examples illustrating both simple language features and full end-to-end service implementations.

Please read the `Quark Installation and Configuration Guide <http://datawire.github.io/quark/0.2/install/index.html>`_ for more detailed information about installation, configuration, compilation, packaging, and documentation generation.

The `Quark Language Reference <http://datawire.github.io/quark/0.2/language-reference/index.html>`_ provides information about how to code in Quark and specifics about individual language elements including keywords, operators, functions, data types, and annotations.

The `Quark Issues List <https://github.com/datawire/quark/issues>`_ provides a list of known issues - please feel free to add new issues or feature requests as you start to use Quark.

Document Version
================
Quark Quick Start |release|-|doc_version|
