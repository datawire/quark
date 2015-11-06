
Scenarios to consider for java backend


Writing a brand new client.q incrementally from scratch
======================================

assumptions
------

- service already exists
- client.q does not exist
- developing client.q means developing client API in quark and the client unit tests in java 
- should support developing in an IDE

user deliverables
-------

- client.q
- client unit tests
- useable development source tree

### setup a new project

        quark --java develop --java-package org.foo.api client.q

produces the following layout:

        client/
          + -- pom.xml
          + -- src/main/quark/client.q
          + -- src/test/java/org/foo/api/ClientTest.java

The `pom.xml` references a `quark-maven-plugin` that will invoke
`quark compile --out ${project-build-directory}/generated-sources/quark`

### define a mocked API in client.q

API is developed using a text editor

### implement a test for the API

The test template can contain a factory method to instantiate the default quark runtime

API tests are written by the user using a text editor

### replace the mock API implementation in client.q with a real implementation

user implements API in quark against the server and tests 

 Quark gaps
----------

### quark develop

   A new quark sub-command to generate the above structure

### quark-maven-plugin

  A simple maven plugin that integrates quark compilation into the maven build process. Good examples to adapt is [protobuf-maven-plugin](https://github.com/igor-petruk/protobuf-maven-plugin)


Taking an existing example client.q and tweaking it to fit another problem
============================================

delta to above is that client.q already exists.

        quark develop --java client.q

the command notices that client.q already exists and it can either:

- generate the pom.xml with a different source location for the client.q, or 
- ask user for permission to move client.q into the 'standard location' as per above scenario

no other changes to above are needed

Taking an existing/debugged client.q and building an app on top of it
================================================

        quark install --java client.q

emits dependency section to put into your pom.xml


        quark install --java client.q --into path/to/users/pom.xml

same as above, but quark modifies users pom.xml

Taking an existing/debugged client.q and easily distributing all packages that can be produced from it
========

        quark publish --java client.q

emits dependency and repository sections to put into your pom.xml


Taking the output package from client.q (Wheel or JAR or NPM package) and building an app on top of it
=========

no client.q file required. Can Quark help on this end at all?

Maybe generate a skeleton for the user code? Boilerplate? See also: Adaptive (or Thrift or GRPC).

