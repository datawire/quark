### End-to-end example

The service writer wrote `firstserver.py` and `firstlib.q`. Other people wrote four clients (`kickoff.java`, `seq_gen.js`, `square.py`, and `dumpq.java`) in various languages using the library written in Quark.

Later the service writer decides that tracking clients in the service is too much work, so `secondserver.py` doesn't keep session info. Instead, `secondlib.q` keeps state in the client. Since the service writer can keep both synchronized, the client code can run against either version of the service without change. Client writers do not need to worry about it.

`build.sh` compiles everything, placing the results into the `out.first` and `out.second` directories. The client code expects the library to be in `out`, so you'll have to rename or make link or something. `launch.py` shows how to launch things using a symlink.
