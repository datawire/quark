import time

class Timer(object):

    def __init__(self):
        self.time = None
        self._start = None
        self.reset()

    def reset(self):
        self.time = time.time()
        self._start = self.time

    def mark(self, msg):
        now = time.time()
        print msg.format(total=now - self._start, elapsed=now-self.time)
        self.time = now
