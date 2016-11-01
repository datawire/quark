import time

class Stats(object):

    def __init__(self):
        self.count = 0
        self.elapsed = 0
        self._start = time.time()

    def start(self):
        self.count += 1
        self._start = time.time()

    def stop(self):
        self.elapsed += time.time() - self._start

    def __enter__(self):
        self.start()

    def __exit__(self, *args):
        self.stop()


STATS = {}

def start(tag):
    if tag not in STATS:
        STATS[tag] = Stats()
    STATS[tag].start()

def stop(tag):
    STATS[tag].stop()

def charge(tag):
    if tag not in STATS:
        STATS[tag] = Stats()
    return STATS[tag]

def dump(out):
    for k in sorted(STATS):
        stat = STATS[k]
        out.write("%s=%s/%s\n" % (k, stat.elapsed, stat.count))
