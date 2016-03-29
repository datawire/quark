# Fallback Example

This example demonstrates how Quark can be used to implement fallback
behavior in a communication endpoint.

## Fallback Behavior

The fallback.q file describes a simple communication endpoint that
implements fallback behavior. The interface takes a list of urls and
fetches them in order returning content from the first and then
providing a dynamically generated fallback if none are available.

## Running this example

First run a simple local web server using Python:

        python -m SimpleHTTPServer 8000

### Python

Compile and install the endpoint in fallback.q:

        quark install fallback.q --python

Run the Python client with:

        python get.py http://127.0.0.1:8001 http://127.0.0.1:8000

### Java

Compile and install the endpoint in fallback.q:

        quark install fallback.q --java

Compile the Java client with:

        mvn compile

Run the Java client with

        mvn exec:java -Dexec.mainClass=get.Main -Dexec.args="http://127.0.0.1:8001 http://127.0.0.1:8000"

### JavaScript

Compile and install the endpoint in fallback.q:

        quark install fallback.q --javascript

Run the Javascript client with:

        node get.js http://127.0.0.1:8001 http://127.0.0.1:8000
