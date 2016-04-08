import logging
import sys

def ensure_trace():
    global TRACE
    for lvl in range(1,logging.DEBUG):
        if len(logging.getLevelName(lvl).split()) == 1:
            TRACE = lvl
            break
    else:
        TRACE = 5
        logging.addLevelName(TRACE, "TRACE")

ensure_trace()
levelNames = dict(
    trace = TRACE,
    debug = logging.DEBUG,
    info  = logging.INFO,
    warn  = logging.WARNING,
    error = logging.ERROR,
    )


def parseLevel(lvl):
    if isinstance(lvl, (str,unicode)):
        lvl = str(lvl).lower()
    return levelNames.get(lvl, logging.INFO)

class LoggerConfig(object):
    @classmethod
    def config(cls):
        return Configurator()

    @classmethod
    def stdout(cls):
        return STDOUT

    @classmethod
    def stderr(cls):
        return STDERR

    @classmethod
    def file(cls, path):
        return Appender(logging.FileHandler(path))

class Appender(object):
    def __init__(self, handler):
        self.handler = handler

STDOUT = Appender(logging.StreamHandler(sys.stdout))
STDERR = Appender(logging.StreamHandler(sys.stdout))

class Formatter(logging.Formatter):
    LEVELMAP = dict((v,k.upper()) for k,v in levelNames.items())

    def __init__(self):
        super(Formatter,self).__init__("%(levelname)s %(name)s %(message)s")
    def format(self, record):
        orig = record.levelname
        record.levelname = self.LEVELMAP.get(record.levelno, orig)
        try:
            return super(Formatter,self).format(record)
        finally:
            record.levelname = orig

class Configurator(object):
    def __init__(self):
        self.appender = STDOUT
        self.level = logging.INFO

    def setAppender(self, appender):
        self.appender = appender
        return self

    def setLevel(self, level):
        self.level = parseLevel(level)
        return self

    def configure(self):
        root = logging.getLogger("quark")
        for hnd in root.handlers[:]:
            root.removeHandler(hnd)
        root.setLevel(self.level)
        self.appender.handler.setFormatter(Formatter())
        root.addHandler(self.appender.handler)

class Logger(object):
    def __init__(self, topic):
        self.impl = logging.getLogger("quark."+topic)

    def trace(self, msg): self.impl.log(TRACE, "%s", msg)
    def debug(self, msg): self.impl.debug("%s", msg)
    def info(self, msg): self.impl.info("%s", msg)
    def warn(self, msg): self.impl.warning("%s", msg)
    def error(self, msg): self.impl.error("%s", msg)

