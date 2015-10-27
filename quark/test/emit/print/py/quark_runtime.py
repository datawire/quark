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

__all__ = "os sys time _Map _List _println _url_get _JSONObject".split()


_Map = dict


class _List(list):
    def __repr__(self):
        return "[%s]" % ", ".join([str(e) for e in self])


def _println(obj):
    if obj is None:
        sys.stdout.write("null\n")
    else:
        sys.stdout.write("%s\n" % obj)


def _url_get(url):
    try:
        return urllib2.urlopen(url).read()
    except Exception:
        return "error"

class _JSONObject(object):
    _backend = json
    _dict = collections.OrderedDict
    _undefined = object()

    def __init__(self):
        self.value = None

    @classmethod
    def _wrap(cls, value):
        wrapped = cls()
        wrapped.value = value
        return wrapped

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
            return self.undefined()

    def getNumber(self):
        if isinstance(self.value, (int, long, float)):
            return self.value
        else:
            return self.undefined()

    def getBool(self):
        if isinstance(self.value, bool):
            return self.value
        else:
            return self.undefined()

    def isNull(self):
        return self.value is None

    def undefined(self):
        return self._wrap(self._undefined)

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
