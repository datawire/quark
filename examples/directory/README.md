## Directory example

Start by grabbing JavaScript and Python dependencies. The ws package for JavaScript will be placed in the node_modules folder already present here. The Python dependencies will be installed in your current virtualenv.

```
$ npm install ws
[...]

$ pip install Twisted autobahn
[...]
```

Run the directory server in its own window.

```
$ node directory_server.js
[2015-10-28 21:58:09] Server created
[2015-10-28 21:58:09] Waiting...
```

In a separate window, build and run the JS and Python clients.

```
$ quark --in-place compile directory.q
quark (compiler): wrote ./src/main/java/io/datawire/quark_runtime.java
quark (compiler): wrote ./src/main/java/directory/Entry.java
quark (compiler): wrote ./src/main/java/directory/Directory.java
quark (compiler): wrote ./src/main/java/directory/LookupCallback.java
quark (compiler): wrote ./src/main/java/directory/AsyncLookup.java
quark (compiler): wrote ./quark_runtime.py
quark (compiler): wrote ./directory/__init__.py
quark (compiler): wrote ./setup.py
quark (compiler): wrote ./docs/conf.py
quark (compiler): wrote ./docs/index.rst
quark (compiler): wrote ./docs/_static/.keep
quark (compiler): wrote ./docs/_templates/.keep
quark (compiler): wrote ./node_modules/quark_runtime.js
quark (compiler): wrote ./directory/index.js
quark (compiler): wrote ./directory/README.md
quark (compiler): wrote ./directory/package.json
$ for i in A B ; do (node jsClient.js $i > /dev/null &) ; done
$ for i in C D ; do (python pyClient.py $i > /dev/null &) ; done
```

Take a look in the server window. You should see the four connected clients listed every five seconds.

```
[2015-10-28 22:08:05] Client 0 staleness=2306ms svc=service-B subscribed
[2015-10-28 22:08:05] Client 1 staleness=2306ms svc=service-A subscribed
[2015-10-28 22:08:05] Client 2 staleness=887ms svc=service-C subscribed
[2015-10-28 22:08:05] Client 3 staleness=886ms svc=service-D subscribed
```

Back in the client window, launch the clients individually and examine their output.

```
$ node jsClient.js E
lookupAsync called
Looked up service-A and got back service-A -> JS-endpoint-A,bogus
Looked up service-B and got back service-B -> JS-endpoint-B,bogus
Looked up service-C and got back service-C -> Python-endpoint-C,bogus
Looked up service-D and got back service-D -> Python-endpoint-D,bogus
Looked up service-E and got back service-E -> JS-endpoint-E,bogus
^C
$ py pyClient.py E
lookupAsync called
Looked up service-A and got back service-A -> [JS-endpoint-A, bogus]
Looked up service-B and got back service-B -> [JS-endpoint-B, bogus]
Looked up service-C and got back service-C -> [Python-endpoint-C, bogus]
Looked up service-D and got back service-D -> [Python-endpoint-D, bogus]
Looked up service-E and got back service-E -> [Python-endpoint-E, bogus]
^C$
$
```
