### End-to-end example

The service writer wrote `firstserver.py` and `firstlib.q`. Other people wrote four clients (`Begin.java`, `seq_gen.js`, `square.py`, and `DumpQueue.java`) in various languages using the library written in Quark.

Later the service writer decides that tracking clients in the service is too much work, so `secondserver.py` doesn't keep session info. Instead, `secondlib.q` keeps state in the client. Since the service writer can keep both synchronized, the client code can run against either version of the service without change. Client writers do not need to worry about it.

`build.sh` compiles everything, placing the results into the `out.first` and `out.second` directories. The client code expects the library to be in `out`, so you'll have to rename or make link or something. `launch.py` shows how to launch things using a symlink.

The servers run on ports 8081 and 8082 respectively, while the client code expects them on 8080. Use `haproxy` and the provided `haproxy.conf` to allow both servers to run simultaneously.

```
$ ./build.sh
wrote out/src/main/java/io/datawire/quark_runtime.java
wrote out/src/main/java/franz/Queue.java
wrote out/quark_runtime.py
wrote out/franz/__init__.py
wrote out/node_modules/quark_runtime.js
wrote out/franz/index.js
wrote out/src/main/java/io/datawire/quark_runtime.java
wrote out/src/main/java/franz/Queue.java
wrote out/quark_runtime.py
wrote out/franz/__init__.py
wrote out/node_modules/quark_runtime.js
wrote out/franz/index.js
./launch.py first
... or ...
./launch.py second

$ haproxy -f haproxy.conf -p haproxy.pid

$ ./launch.py first
[26076] python out/server.py
[26077] env CLASSPATH=out:out/src/main/java java Begin
[26078] python square.py
[26079] node seq_gen.js
[26081] env CLASSPATH=out:out/src/main/java java DumpQueue
q: 0 sequence:10:fdsa
q: 1 square:fdsa
q: 2 fdsa:0
q: 3 squared:fdsa:0
q: 4 fdsa:1
q: 5 squared:fdsa:1
q: 6 fdsa:2
q: 7 squared:fdsa:4
q: 8 fdsa:3
q: 9 squared:fdsa:9
q: 10 fdsa:4
q: 11 squared:fdsa:16
q: 12 fdsa:5
q: 13 squared:fdsa:25
q: 14 fdsa:6
q: 15 squared:fdsa:36
q: 16 fdsa:7
q: 17 squared:fdsa:49
q: 18 fdsa:8
q: 19 squared:fdsa:64
q: 20 fdsa:9
q: 21 fdsa:done
q: 22 squared:fdsa:81
^CTraceback (most recent call last):
  File "./launch.py", line 70, in <module>
    main(docopt(__doc__))
  File "./launch.py", line 59, in main
    sleep(100000)
KeyboardInterrupt

$ ./launch.py second
[26124] python out/server.py
[26125] env CLASSPATH=out:out/src/main/java java Begin
[26126] python square.py
[26127] node seq_gen.js
[26129] env CLASSPATH=out:out/src/main/java java DumpQueue
q: 0 sequence:10:fdsa
q: 1 square:fdsa
q: 2 fdsa:0
q: 3 squared:fdsa:0
q: 4 fdsa:1
q: 5 squared:fdsa:1
q: 6 fdsa:2
q: 7 squared:fdsa:4
q: 8 fdsa:3
q: 9 squared:fdsa:9
q: 10 fdsa:4
q: 11 squared:fdsa:16
q: 12 fdsa:5
q: 13 squared:fdsa:25
q: 14 fdsa:6
q: 15 squared:fdsa:36
q: 16 fdsa:7
q: 17 squared:fdsa:49
q: 18 fdsa:8
q: 19 squared:fdsa:64
q: 20 fdsa:9
q: 21 fdsa:done
q: 22 squared:fdsa:81
^CTraceback (most recent call last):
  File "./launch.py", line 70, in <module>
    main(docopt(__doc__))
  File "./launch.py", line 59, in main
    sleep(100000)
KeyboardInterrupt
```
