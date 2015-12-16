# Fake service (makes a tether)

import sys

import quark_threaded_runtime
import directory


def main(identity):
    name = "service-" + identity
    address = "Python-endpoint-" + identity

    runtime = quark_threaded_runtime.get_runtime()
    d = directory.Directory(runtime, "ws://127.0.0.1:8910", name, address)

    for letter in "ABCDE":
        service = "service-" + letter
        entry = d.lookup(service)
        if entry:
            print "Looked up " + service + " and got back " + entry.toString()
        else:
            print "Looked up " + service + " and got back " + str(entry)

    runtime.join()


if __name__ == '__main__':
    main(sys.argv[1])
