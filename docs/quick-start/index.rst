=====================
|product| Quick Start
=====================

This page provides an overview of the basic installation requirements and process, basic compile commands, and the |language| programming language. If you have successfully run and understood any of the examples, you can probably skip this Quick Start.

Installation and Configuration
==============================

This section provides an overview of the prerequisites, installation, and compilation process for |product| meant to get you started. Some features and target output languages have additional requirements. For full installation and documentation instructions, see the `|product| Installation and Configuration Guide <http://datawire.github.io/|doc-directory|/install/index.html>`_.

Prerequisites
-------------

|product| requires a modern Linux distribution or Mac OS X. It has been successfully tested on the following:

* Mac OS 10.10 (Yosemite)
* Mac OS 10.11 (El Capitan)
* Ubuntu 14.04 (Trusty)
* Fedora 22

|product| also requires the following:

* Python 2.7+
* pip

Installation
------------

To install |product|, run the following command:

        pip install |main-module| 

Compiling |language| Files
--------------------------------

The |language| compiler can perform four distinct functions: generating code in one or more target languages, compiling and running the generated code, generating HTML documentation based on annotations in the code, and generating distribution packages for one or more target languages.

The simplest command generates code in all supported target languages in default output directories. It is:

``|command| compile <files>``

where <files> is a space-separated list of the Datawire Connect files to compile.

This will output code in a subdirectory of your base |product| directory (given the name of the first file in the <files> list) and put generated Java, Javascript, and Python code in java, js, and py subdirectories.

To generate installable versions of the examples or of your own code in all of the supported languages, use the package command as follows:

``|command| package <files>``

where <files> is a space-separated list of the |language| files to compile.

This does everything the compile command does but also builds the code in each language, generates documentation for each language, and creates installable packages. See the `Compilation page <http://datawire.github.io/|doc-directory|/install/compile.html>`_ of the |product| Installation and Configuration Guide for specific details on where the output artifacts are placed underneath each language's subdirectory.

|language| Language Basics
==========================

|language| is a language designed primarily for facilitating microservice communication pathways.

|language| uses many of the standard elements of object-oriented programming languages including packages, interfaces, classes, methods, properties, functions, variables, annotations, operators, and keywords. It includes inheritance, operator overloading, and method overriding capabilities.

|language| code is stored in text files with a |file-extension| file extension.

See the `|product| Language Reference <http://datawire.github.io/|doc-directory|/language-reference/index.html>`_ for more specifics about language structure and language elements.

Next Steps
==========

The `|product| Examples Repository <https://github.com/datawire/|github-directory|/tree/|branch|/examples>`_ (located in the examples subdirectory of the |github-directory| GitHub repository) includes a wide variety of examples illustrating both simple language features and full end-to-end service implementations.

Please read the `|product| Installation and Configuration Guide <http://datawire.github.io/|doc-directory|/install/index.html>`_ for more detailed information about installation, configuration, compilation, packaging, and documentation generation.

The `|language| Language Reference <http://datawire.github.io/|doc-directory|/language-reference/index.html>`_ provides information about how to code in |language| and specifics about individual language elements including keywords, operators, functions, data types, and annotations.

The `|product| Issues List <https://github.com/datawire/|github-directory|/issues>`_ provides a list of known issues - please feel free to add new issues or feature requests as you start to use |product|.

Document Version
================
|product| Quick Start |release|-|doc_version|
