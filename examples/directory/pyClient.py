# Fake service (makes a tether)

import sys

from quark_twisted_runtime import runtime
import directory


class ShowAnswer(object):
    def __init__(self, service):
        self.service = service

    def run(self, entry):
        if entry:
            print "Looked up " + self.service + " and got back " + entry.service + " -> " + str(entry.endpoints)
        else:
            print "Looked up " + self.service + " and got back " + str(entry)


def main(identity):
    name = "service-" + identity
    address = "Python-endpoint-" + identity

    d = directory.Directory(runtime, "ws://127.0.0.1:8910", name, address)

    for letter in "ABCDE":
        service = "service-" + letter
        d.lookupAsync(service, ShowAnswer(service))

    print "lookupAsync called"

    runtime.launch()
    # And now we wait...


if __name__ == '__main__':
    main(sys.argv[1])
