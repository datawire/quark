### End-to-end example

The service writer wrote `firstserver.py` and `firstlib.q`. Other people wrote four clients (`kickoff.java`, `seq_gen.js`, `square.py`, and `dumpq.java`) in various languages using the library written in Quark.

Later the service writer decides that tracking clients in the service is too much work, so `secondserver.py` doesn't keep session info. Instead, `secondlib.q` keeps state in the client. Since the service writer can keep both synchronized, the client code can run against either version of the service without change. Client writers do not need to worry about it.

`build.sh` compiles everything, placing the results into the `out.first` and `out.second` directories. The client code expects the library to be in `out`, so you'll have to rename or make link or something. `launch.py` shows how to launch things using a symlink.

```
$ ./build.sh
wrote out/src/main/java/io/datawire/quark_runtime.java
wrote out/src/main/java/importable/Queue.java
wrote out/quark_runtime.py
wrote out/importable/__init__.py
wrote out/node_modules/quark_runtime.js
wrote out/importable/index.js
wrote out/src/main/java/io/datawire/quark_runtime.java
wrote out/src/main/java/importable/Queue.java
wrote out/quark_runtime.py
wrote out/importable/__init__.py
wrote out/node_modules/quark_runtime.js
wrote out/importable/index.js
./launch.py first
... or ...
./launch.py second

$ ./launch.py first
[41163] python out/server.py
[41166] env CLASSPATH=out:out/src/main/java java kickoff
[41167] python square.py
[41168] node seq_gen.js
[41170] env CLASSPATH=out:out/src/main/java java dumpq
q: 0 sequence:10:fdsa
q: 1 square:fdsa
q: 2 fdsa:0
q: 3 squared:fdsa:0
q: 4 fdsa:1
q: 5 squared:fdsa:1
q: 6 fdsa:2
q: 7 fdsa:3
q: 8 squared:fdsa:4
q: 9 fdsa:4
q: 10 squared:fdsa:9
q: 11 fdsa:5
q: 12 squared:fdsa:16
q: 13 fdsa:6
q: 14 fdsa:7
q: 15 squared:fdsa:25
q: 16 fdsa:8
q: 17 fdsa:9
q: 18 fdsa:done
q: 19 squared:fdsa:36
q: 20 squared:fdsa:49
q: 21 squared:fdsa:64
q: 22 squared:fdsa:81
^CTraceback (most recent call last):
  File "./launch.py", line 70, in <module>
    main(docopt(__doc__))
  File "./launch.py", line 59, in main
    sleep(100000)
KeyboardInterrupt

$ ./launch.py second
[41211] python out/server.py
[41212] env CLASSPATH=out:out/src/main/java java kickoff
[41213] python square.py
[41214] node seq_gen.js
[41216] env CLASSPATH=out:out/src/main/java java dumpq
q: 0 sequence:10:fdsa
q: 1 square:fdsa
q: 2 fdsa:0
q: 3 squared:fdsa:0
q: 4 fdsa:1
q: 5 squared:fdsa:1
q: 6 fdsa:2
q: 7 fdsa:3
q: 8 squared:fdsa:4
q: 9 fdsa:4
q: 10 squared:fdsa:9
q: 11 fdsa:5
q: 12 fdsa:6
q: 13 squared:fdsa:16
q: 14 fdsa:7
q: 15 squared:fdsa:25
q: 16 fdsa:8
q: 17 squared:fdsa:36
q: 18 fdsa:9
q: 19 fdsa:done
q: 20 squared:fdsa:49
q: 21 squared:fdsa:64
q: 22 squared:fdsa:81
^CTraceback (most recent call last):
  File "./launch.py", line 70, in <module>
    main(docopt(__doc__))
  File "./launch.py", line 59, in main
    sleep(100000)
KeyboardInterrupt

```
