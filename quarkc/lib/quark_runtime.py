# Quark Runtime
# Usage: from quark_runtime import *
# This brings in the stuff mentioned in __all__ below.
# The wrong way to do this, but minimizes the code change.

__version__ = '0.4.2'

import os    # used by the quark.OS.Env stuff
import sys
import time  # used by the builtin now() macro
import urllib2
import json
import collections
from urllib import urlencode as _urlencode
from collections import namedtuple
from struct import Struct
import threading
import base64

__all__ = """os sys time _Map _List _println _toString _url_get _urlencode _JSONObject
             _HTTPRequest _HTTPResponse _default_codec _getClass
             _RuntimeFactory _Lock _Condition _TLS _TLSInitializer
             _LoggerConfig _get_file_contents""".split()


_Map = dict

from quark_runtime_logging import LoggerConfig as _LoggerConfig


class _List(list):
    def __repr__(self):
        return "[%s]" % ", ".join([str(e) for e in self])


def _println(obj):
    if obj is None:
        sys.stdout.write(u"null\n".encode("utf8"))
    else:
        sys.stdout.write((u"%s\n" % obj).encode("utf8"))
    sys.stdout.flush()

def _toString(obj):
    if obj is None:
        return "null"
    elif hasattr(obj, "toString"):
        return obj.toString()
    else:
        return str(obj)

def _url_get(url):
    try:
        return urllib2.urlopen(url).read()
    except Exception:
        return "error"

class _JSONObject(object):
    _backend = json
    _dict = collections.OrderedDict
    _undefined = None

    def __init__(self):
        self.value = None

    @classmethod
    def _wrap(cls, value):
        wrapped = cls()
        wrapped.value = value
        return wrapped

    def __eq__(self, other):
        if other is None:
            return False
        else:
            return self.value == other.value

    def getType(self):
        if isinstance(self.value, dict):
            return 'object'
        elif isinstance(self.value, (list, tuple)):
            return 'list'
        elif isinstance(self.value, (str, unicode)):
            return 'string'
        elif isinstance(self.value, (int,float,long)):
            return 'number'
        elif isinstance(self.value, bool):
            return 'bool'
        elif self.value is None:
            return 'null'
        else:
            raise TypeError("Unknown JSONObject type " + str(type(self.value)))

    def getObjectItem(self, key):
        try:
            if isinstance(self.value, dict):
                return self._wrap(self.value[key])
        except (KeyError, TypeError):
            pass
        return self.undefined()

    def getListItem(self, index):
        try:
            if isinstance(self.value, (list, tuple)):
                return self._wrap(self.value[index])
        except (KeyError, IndexError, TypeError):
            pass
        return self.undefined()

    def size(self):
        if self.isList() or self.isObject():
            return len(self.value)
        else:
            return 1

    def getString(self):
        if isinstance(self.value, basestring):
            return self.value
        else:
            return None

    def isString(self):
        return isinstance(self.value, basestring)

    def getNumber(self):
        if isinstance(self.value, (int, long, float)):
            return self.value
        else:
            return None

    def isNumber(self):
        return isinstance(self.value, (int, long, float))

    def getBool(self):
        if isinstance(self.value, bool):
            return self.value
        else:
            return None

    def isNull(self):
        return self.value is None

    def isUndefined(self):
        return self is self.undefined()

    def isDefined(self):
        return not self.isUndefined()

    @classmethod
    def undefined(cls):
        if cls._undefined is None:
            cls._undefined = _UndefinedJSON._wrap(object())
        return cls._undefined

    def toString(self):
        return self._backend.dumps(self.value, separators=(',', ':'))

    def keys(self):
        if self.getType() != "object":
            return None
        return _List(self.value.keys())

    def setString(self, value):
        self.value = value
        return self

    def setNumber(self, value):
        self.value = value
        return self

    def setBool(self, value):
        self.value = bool(value)
        return self

    def setNull(self):
        self.value = None
        return self

    def setObject(self):
        self.value = self._dict()
        return self

    def isObject(self):
        return isinstance(self.value, dict)

    def setList(self):
        self.value = []
        return self

    def isList(self):
        return isinstance(self.value, list)

    def setObjectItem(self, key, value):
        if not isinstance(self.value, dict):
            self.value = self._dict()
        self.value[key] = value.value
        return self

    def setListItem(self, index, value):
        if not isinstance(self.value, list):
            if isinstance(self.value, tuple):
                self.value = list(self.value)
            else:
                self.value = []
        missing = index - len(self.value) + 1
        if missing > 0:
            self.value.extend([None] * missing)
        self.value[index] = value.value
        return self

    @classmethod
    def parse(cls, value):
        return cls._wrap(cls._backend.loads(value, object_pairs_hook=cls._dict))


class _UndefinedJSON(_JSONObject):
    def setString(self, value):
        pass

    def setNumber(self, value):
        pass

    def setBool(self, value):
        pass

    def setNull(self):
        pass

    def setObject(self):
        pass

    def setList(self):
        pass

    def setObjectItem(self, key, value):
        pass

    def setListItem(self, index, value):
        pass


class _HTTPRequest(object):

    def __init__(self, url):
        self.url = url
        self.method = "GET"
        self.body = None
        self.headers = {}

    def getUrl(self):
        return self.url

    def setMethod(self, method):
        self.method = method

    def getMethod(self):
        return self.method

    def setBody(self, body):
        self.body = body

    def getBody(self):
        return self.body

    def setHeader(self, key, value):
        self.headers[key.lower()] = value

    def getHeader(self, key):
        return self.headers.get(key.lower())  # Maybe return None

    def getHeaders(self):
        return self.headers.keys()


class _HTTPResponse(object):

    def __init__(self):
        self.code = 500
        self.body = ""
        self.headers = {}
        self._responded = False

    def getCode(self):
        return self.code

    def setCode(self, code):
        self.code = code

    def getBody(self):
        return self.body

    def setBody(self, body):
        self.body = body

    def setHeader(self, key, value):
        self.headers[key.lower()] = value

    def getHeader(self, key):
        return self.headers.get(key.lower())  # Maybe return None

    def getHeaders(self):
        return self.headers.keys()


class _default_codec(object):
    def buffer(self, capacity):
        return Buffer(bytearray("\x00"*capacity))

    def toHexdump(self, buffer, offset, length, spaceScale):
        h = map(lambda x:"%02x"%x, buffer.data[offset:offset+length])
        stride = 2 ** spaceScale
        return " ".join("".join(h[i:i+stride]) for i in range(0,len(h),stride))

    def fromHexdump(self, hexstr):
        hexstr = hexstr.replace(" ","").replace("\t","").replace("\r","").replace("\n","")
        if hexstr.startswith("0x") or hexstr.startswith("0X"):
            hexstr = hexstr[2:]
        return Buffer(bytearray(int(hexstr[i:i+2],16) for i in range(0,len(hexstr), 2)))

    def toBase64(self, buffer, offset, length):
        return base64.b64encode(buffer.data[offset:offset+length])

    def fromBase64(self, b64str):
        return Buffer(bytearray(base64.b64decode(b64str)))


class Buffer(object):
    Packer = namedtuple("Packer", "byte short int long float".split())
    BE = Packer(*map(Struct, [">"+c for c in "bhiqd"]))
    LE = Packer(*map(Struct, ["<"+c for c in "bhiqd"]))
    def __init__(self, _data=None):
        if _data is None:
            _data = bytearray()
        elif not isinstance(_data, bytearray):
            _data = bytearray(_data)
        self.data = _data
        self.rdata = buffer(_data)
        self._order(self.BE)

    def _order(self, packer):
        self.packer = packer
        self._b = self.packer.byte
        self._h = self.packer.short
        self._i = self.packer.int
        self._q = self.packer.long
        self._d = self.packer.float

    def capacity(self):
        return len(self.data)

    def getByte(self, index):
        return self._b.unpack_from(self.rdata, index)[0]

    def putByte(self, index, value):
        self.data[index:index+1] = [0]
        self._b.pack_into(self.data, index, value)


    def getShort(self, index):
        return self._h.unpack_from(self.rdata, index)[0]

    def putShort(self, index, value):
        self.data[index:index+2] = [0]*2
        self._h.pack_into(self.data, index, value)


    def getInt(self, index):
        return self._i.unpack_from(self.rdata, index)[0]

    def putInt(self, index, value):
        self.data[index:index+4] = [0]*4
        self._i.pack_into(self.data, index, value)


    def getLong(self, index):
        return self._q.unpack_from(self.rdata, index)[0]

    def putLong(self, index, value):
        self.data[index:index+8] = [0]*8
        self._q.pack_into(self.data, index, value)



    def getFloat(self, index):
        return self._d.unpack_from(self.rdata, index)[0]

    def putFloat(self, index, value):
        self.data[index:index+8] = [0]*8
        self._d.pack_into(self.data, index, value)


    def getStringUTF8(self, index, length):
        return self.data[index:index+length].decode("utf-8")

    def putStringUTF8(self, index, value):
        value = value.encode("utf-8")
        self.data[index:index+len(value)] = value
        return len(value)

    def getSlice(self, index, length):
        other = self.__class__(self.data[index:index + length])
        other._order(self.packer)
        return other

    def putSlice(self, index, source, offset, length):
        self.data[index:index+length] = source.data[offset:offset+length]

    def littleEndian(self):
        other = self.__class__(self.data)
        other._order(self.LE)
        return other

    def isNetworkByteOrder(self):
        return self.packer is self.BE

def _getClass(obj):
    if obj is None: return None
    if isinstance(obj, basestring):
        return "quark.String"
    if isinstance(obj, int):
        return "quark.int"
    if isinstance(obj, float):
        return "quark.float"
    if isinstance(obj, (list, tuple)):
        return "quark.List<quark.Object>"
    if isinstance(obj, dict):
        return "quark.Map<quark.Object,quark.Object>"
    return obj._getClass()


class _RuntimeFactory(object):
    RUNTIME_MODULE="quark_threaded_runtime"

    @classmethod
    def create(cls):
        import importlib
        rt_module = importlib.import_module(cls.RUNTIME_MODULE)
        return rt_module.get_runtime()

class _Lock(object):
    def __init__(self):
        self._lock = threading.RLock()

    def acquire(self):
        if self._lock._is_owned():
            self._fail("Illegal re-acquisition of a quark Lock.")
        self._lock.acquire()

    def release(self):
        if not self._lock._is_owned():
            self._fail("Illegal release of a not-acquired quark Lock.")
        self._lock.release()

    def _fail(self, msg):
        import logging
        log = logging.getLogger(__name__)
        log.critical("msg",
            exc_info=(Error, Error(repr(self._lock)),
                traceback.extract_stack()))

class _Condition(_Lock):
    def __init__(self):
        super(_Condition, self).__init__()
        self._condition = threading.Condition(self._lock)

    def waitWakeup(self, timeout):
        if not self._lock._is_owned():
            self._fail("Illegal waitWakeup of a not-acquired quark Condition")
        self._condition.wait(timeout / 1000.0) # XXX: fix time units

    def wakeup(self):
        if not self._lock._is_owned():
            self._fail("Illegal wakeup of a not-acquired quark Condition")
        self._condition.notify()

class _TLSInitializer(object):
    def getValue(self): raise TypeError("Method not implemented")

class _TLS(threading.local):
    def __init__(self, initializer):
        self._value = initializer.getValue()

    def getValue(self):
        return self._value

    def setValue(self, value):
        self._value = value


def _get_file_contents(path, result):
    try:
        with open(path, "rb") as inf:
            result.value = inf.read()
            result.finish(None)
    except IOError as exc:
        result.finish(str(exc))