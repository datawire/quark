# Hello RPC Example

This example demonstrates how Quark can implement cross-language RPC.

## Hello Service Contract

The Hello service contract is expressed in hello.q. The service
contract includes the service interface (hello.Hello) along with the
value classes (hello.Request and hello.Response) used to interact with
the service. The hello.q file also defines the names of the client and
server stubs (hello.HelloClient, and hello.HelloServer).

### Writing a client

The example provides two clients written to use the service
(pyclient.py, HelloRPCClient.java). Both these clients follow the same
basic pattern. A client instance can be constructed by passing in to
the client constructor the runtime integration and the URL of the
server.

### Writing a server

The server code files (pyserver.py, jsserver.js, HelloRPCServer.java)
also follow the same basic pattern. A server instance can be
constructed by passing in to the server constructor the runtime
integration and the implementation of the contract interface. Then the
integration can serve the service on the given URL.

## Running this example

The clients expect to find the service on http://127.0.0.1:8910/hello
and each server runs there. Thus you may run a single server at a
time, as well as any number of clients.

To get started, download the example by cloning its git repository as
follows:

        git clone https://github.com/datawire/quark.git

All of the directions below assume you are starting from
*repoBase*/examples/helloRPC where *repoBase* is the location where
you cloned the repository above.

### Python

Compile and install the Service Contract in hello.q:

        quark install hello.q --python

Run the Python server with

        python pyserver.py

Run the Python client with

        python pyclient.py

### Java

Compile and install the Service Contract in hello.q:

        quark install hello.q --java

Compile the Java server and client with

        mvn compile

Run the Java server with

        mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer

Run the Java client with

        mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient

### JavaScript using Node

Compile and install the Service Contract in hello.q:

        quark install hello.q --javascript

Run the Javascript server with

        node jsserver.js

Run the Javascript client with

        node jsclient.js

### JavaScript from the browser

To use Quark from the browser, you compile to JavaScript as above, but then bundle up the JavaScript to allow the browser to use `require()` to load them. We presently use `browserify` for this step.

# The easy way

You can run `make browser` and the included Makefile will

- create a local `node_modules` directory for you, to avoid cluttering up anything else on your system,
- install `browserify`, to bundle up the modules we need for the browser,
- install `uglifyjs`, to minify the bundled-up JavaScript,
- compile Quark to JavaScript, and finally
- bundle the JavaScript up for the browser.

Note that compiling to JavaScript will install to the local `node_modules` when you do this.

# By hand

To do all the above by hand:

        mkdir node_modules
        npm install browserify uglifyjs
        quark install --javascript hello.q
        node_modules/.bin/browserify -d -o bhello.js -x ws -r quark -r quark/quark_node_runtime -r hello
        node_modules/.bin/uglifyjs --mangle --compress -o bhello-min.js bhello.js

Note that you can skip creating a local `node_modules` directory if you don't mind installing `browserify`, `uglifyjs`, and `hello` into your existing npm environment, but that you'll have change the path to `browserify` and `uglifyjs` above if you do.

Note also that if you do create a local `node_modules` directory then Quark will install `hello` into it.

Finally, note that you can skip running `uglifyjs` if you edit the appropriate `<script>` tag in `hello.html`.

# Once built

However you build things, once you're ready to go you'll need to first start any of the RPC servers. The easiest way is just to run the JavaScript server, since we've just built that!

        node jsserver.js

Finally, open `hello.html` in your Web browser.

### Ruby (a non-pollutive method, does not install gems in system ruby install)

Compile and install the Service Contract in hello.q:

        quark compile hello.q --ruby
        bundle install

Run the Ruby server with

        bundle exec ruby rbserver.rb

Run the Ruby client with

        bundle exec ruby rbclient.rb
