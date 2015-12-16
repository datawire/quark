# Fetch your external IP


import quark_twisted_runtime
import ipify


class Consumer(object):
    def __init__(self, runtime):
        self.runtime = runtime

    def consume(self, ip):
        print "IP is", ip
        self.runtime.reactor.stop()


def main():
    runtime = quark_twisted_runtime.get_runtime()
    ipify.MyExternalIP(runtime, Consumer(runtime))
    runtime.reactor.run()  # Use the default twisted reactor


if __name__ == '__main__':
    main()
