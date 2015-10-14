from indexed import Directory, Subscription

class FakeSubscription(Subscription):
    def __init__(self):
        self.cache = {}
        self.subscribers = []

    def subscribe(self, address, index):
        self.subscribers.append(index)
        print "new subscriber for '" + address + "' with current state", self.cache
        for k,v in self.cache.items():
            index.update({k:v})
        index.subscribed()

    def stream(self, **update):
        self.cache.update(update)
        if self.subscribers:
            print "Streaming index update", update
        for index in self.subscribers:
            index.update(update)

class Client:
    def __init__(self):
        self.subscription = FakeSubscription()
        self.directory1 = Directory(self.subscription, "d1")
        self.subscription.stream(**dict((x, x.upper()) for x in "abcdef"))
        self.directory2 = Directory(self.subscription, "d2")
        pass

    def check(self):
        for addr in "xagce":
            for name, directory in dict(d1=self.directory1, d2=self.directory2).items():
                res = directory.lookup(addr)
                print name, ": ", addr, "->", res
                pass
            pass
        pass

    def run(self):
        self.check()
        self.subscription.stream(x="new x", c = "updated c")
        self.check()
    pass

if __name__ == "__main__":
    Client().run()
