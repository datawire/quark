# Fake service (makes a tether)

import sys

import quark_twisted_runtime
import directory


class ShowAnswer(object):
    def __init__(self, service):
        self.service = service

    def run(self, entry):
        if entry:
            print "Looked up " + self.service + " and got back " + entry.toString()
        else:
            print "Looked up " + self.service + " and got back " + str(entry)


def main(identity):
    name = "service-" + identity
    address = "Python-endpoint-" + identity

    runtime = quark_twisted_runtime.get_twisted_runtime()
    d = directory.Directory(runtime, "ws://127.0.0.1:8910", name, address)

    for letter in "ABCDE":
        service = "service-" + letter
        d.lookupAsync(service, ShowAnswer(service))

    print "lookupAsync called"

    runtime.launch()
    # And now we wait...


if __name__ == '__main__':
    main(sys.argv[1])
