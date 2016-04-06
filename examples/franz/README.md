### End-to-end example

The service author wrote `franz-server-1.0.py` and `franz-1.0.q`. Other people wrote four clients (`push.py`, `seq_gen.js`, `square.py`, and `dump.py`) in various languages using the library written in Quark.

Later the service author decides that tracking clients in the service is too much work, so `franz-server-2.0.py` doesn't keep session info. Instead, `franz-1.1.q` keeps state in the client. Since the service writer can keep both synchronized, the client code can run against either version of the service without change. Client writers do not need to worry about it.

`build.sh` compiles everything, placing the results into the `out.first` and `out.second` directories. If you encounter build issues, make sure you've followed the instructions in examples/README.md first.
The client code expects the library to be in `out`, so you'll have to rename or make link or something. `launch.py` shows how to launch things using a symlink.

The servers run on ports 8081 and 8082 respectively, while the client code expects them on 8080. Use `haproxy` and the provided `haproxy.conf` to allow both servers to run simultaneously.

This example requires that flask and docopt be installed:

```
yes | pip install docopt flask gevent
```

Compile the v1 franz library:

`./compile-v2.sh`

Start HAProxy which will forward to either Franz v1 or v2.

```
haproxy -f haproxy.conf -p haproxy.pid
```

In a second tab or console window start the Franz v1.0 server:
```
python franz-server-1.0.py
```

And then in another tab start the Franz v2.0 server:
```
python franz-server-2.0.py
```

Run the clients (output will be similar):

```
$ ./simulate.py
[26077] python push.py
[26078] python square.py
[26079] python dump.py
[26080] node seq_gen.js
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
```

Terminate the program when it is done with `ctrl^c` then to demonstate how no code changes are needed for `v2` uninstall the `v1` python and javascript modules:

```
npm uninstall franz
pip uninstall franz
```

Compile the v2 franz library:

`./compile-v2.sh`

Run the clients (output will be similar):

```
$ ./simulate.py
[26077] python push.py
[26078] python square.py
[26079] python dump.py
[26080] node seq_gen.js
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
```

Notice that no change was made to the actual clients, but that the v2 implementation is protocol identical to the v1 implementation!