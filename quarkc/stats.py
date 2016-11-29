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

def dump(out, width=100):
    key_width = max(map(len, STATS))
    elapsed_width = max(len("%5.3f" % stat.elapsed) for stat in STATS.values())
    count_width = max(len(str(stat.count)) for stat in STATS.values())
    hist_width = width - (key_width + 3 + elapsed_width + 3 + count_width + 2)
    if hist_width < 10:
        hist_width = 0
    scale = hist_width / (max(stat.elapsed for stat in STATS.values()) or 999999)
    for k in sorted(STATS):
        stat = STATS[k]
        if hist_width:
            hist = " |" + "#" * int(scale * stat.elapsed)
        else:
            hist = ""
        out.write("{0:{key_width}} = {1:{elapsed_width}.3f} / {2:{count_width}}{3}\n".format(
            k, stat.elapsed, stat.count, hist,
            key_width = key_width,
            elapsed_width = elapsed_width,
            count_width = count_width))
