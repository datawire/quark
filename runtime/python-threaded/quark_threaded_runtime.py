# Quark's Twisted Runtime and associated

__version__ = "0.1.0"

import threading
import time
from Queue import Queue, Empty


class EventProcessor(threading.Thread):

    QUIT = ("QUIT",)

    def __init__(self, runtime):
        super(EventProcessor, self).__init__()
        self.runtime = runtime

    def run(self):
        while True:
            event = self.runtime.events.get(block=True)
            self.runtime.acquire()
            try:
                while True:
                    if event == self.QUIT:
                        return
                    function, args, kwargs = event
                    function(*args, **kwargs)

                    event = self.runtime.events.get(block=False)  # Raises Empty to break out of loop
            except Empty:
                pass
            finally:
                self.runtime._notify()
                self.runtime.release()


class ThreadedRuntime(object):

    def __init__(self):
        self.lock = threading.Condition()
        self.events = Queue()
        self.event_thread = None

    def acquire(self):
        self.lock.acquire()

    def release(self):
        self.lock.release()

    def _notify(self):
        self.lock.notify_all()

    def wait(self):
        raise NotImplementedError()

    def open(self, url, handler):
        raise NotImplementedError()

    def request(self, request, handler):
        raise NotImplementedError()

    def schedule(self, handler, delayInSeconds):
        def run_scheduled(runtime, handler, delayInSeconds):
            time.sleep(delayInSeconds)
            runtime.events.put((handler.onExecute, [runtime], {}))
        thread = threading.Thread(target=run_scheduled, args=(self, handler, delayInSeconds))
        thread.setDaemon(True)
        thread.start()

    def serveHTTP(self, url, servlet):
        raise NotImplementedError()

    def respond(self, request, response):
        raise NotImplementedError()

    def launch(self):
        assert self.event_thread is None, self.event_thread
        self.event_thread = EventProcessor(self)
        self.event_thread.start()

    def finish(self):
        self.events.put(EventProcessor.QUIT)
        self.event_thread.join()


_threaded_runtime = ThreadedRuntime()


def get_threaded_runtime():
    return _threaded_runtime
