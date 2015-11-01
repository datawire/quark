# Quark Runtime
# Usage: from quark_runtime import *
# This brings in the stuff mentioned in __all__ below.
# The wrong way to do this, but minimizes the code change.

import os    # unused?
import sys
import time  # used by the builtin now() macro
import urllib2
import json
import collections
from urllib import urlencode as _urlencode

__all__ = "os sys time _Map _List _println _url_get _urlencode _JSONObject _HTTPRequest".split()


_Map = dict


class _List(list):
    def __repr__(self):
        return "[%s]" % ", ".join([str(e) for e in self])


def _println(obj):
    if obj is None:
        sys.stdout.write(u"null\n".encode("utf8"))
    else:
        sys.stdout.write((u"%s\n" % obj).encode("utf8"))


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

    def getString(self):
        if isinstance(self.value, (str, unicode)):
            return self.value
        else:
            return None

    def getNumber(self):
        if isinstance(self.value, (int, long, float)):
            return self.value
        else:
            return None

    def getBool(self):
        if isinstance(self.value, bool):
            return self.value
        else:
            return None

    def isNull(self):
        return self.value is None

    @classmethod
    def undefined(cls):
        if cls._undefined is None:
            cls._undefined = _UndefinedJSON._wrap(object())
        return cls._undefined

    def toString(self):
        return self._backend.dumps(self.value, separators=(',', ':'))

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

    def setList(self):
        self.value = []
        return self

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

    def setMethod(self, method):
        self.method = method

    def setBody(self, body):
        self.body = body

    def setHeader(self, key, value):
        self.headers[key] = value
