from quark_runtime import *

import quark.reflect
import stuff
import quark_ffi_signatures_md


class Overload(object):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()

    def __add__(self, o):
        return _cast(None, lambda: Overload)

    def __mul__(self, o):
        return _cast(None, lambda: Overload)

    def test(self):
        pass

    def _getClass(self):
        return u"classes.Overload"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


Overload.classes_Overload_ref = None
class Test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def test(self):
        pass

    def _getClass(self):
        return u"classes.Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Test.classes_Test_ref = None
class string_test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def check(self, actual, expected, op, q):
        pass

    def _getClass(self):
        return u"classes.string_test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_test.classes_string_test_ref = None
class test_size(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None

    def __init__(self, what):
        super(test_size, self).__init__();

    def does(self, expected):
        return _cast(None, lambda: test_size)

    def _getClass(self):
        return u"classes.test_size"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)


test_size.classes_test_size_ref = None
class test_startsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_startsWith, self).__init__();

    def that(self, _that):
        return _cast(None, lambda: test_startsWith)

    def does(self, expected):
        return _cast(None, lambda: test_startsWith)

    def _getClass(self):
        return u"classes.test_startsWith"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"_that")):
            return (self)._that

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)

        if ((name) == (u"_that")):
            (self)._that = _cast(value, lambda: unicode)


test_startsWith.classes_test_startsWith_ref = None
class test_endsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_endsWith, self).__init__();

    def that(self, _that):
        return _cast(None, lambda: test_endsWith)

    def does(self, expected):
        return _cast(None, lambda: test_endsWith)

    def _getClass(self):
        return u"classes.test_endsWith"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"_that")):
            return (self)._that

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)

        if ((name) == (u"_that")):
            (self)._that = _cast(value, lambda: unicode)


test_endsWith.classes_test_endsWith_ref = None
class test_find(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_find, self).__init__();

    def that(self, _that):
        return _cast(None, lambda: test_find)

    def does(self, expected):
        return _cast(None, lambda: test_find)

    def _getClass(self):
        return u"classes.test_find"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"_that")):
            return (self)._that

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)

        if ((name) == (u"_that")):
            (self)._that = _cast(value, lambda: unicode)


test_find.classes_test_find_ref = None
class test_substring(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_substring, self).__init__();

    def that(self, start, end):
        return _cast(None, lambda: test_substring)

    def does(self, expected):
        return _cast(None, lambda: test_substring)

    def _getClass(self):
        return u"classes.test_substring"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"start")):
            return (self).start

        if ((name) == (u"end")):
            return (self).end

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)

        if ((name) == (u"start")):
            (self).start = _cast(value, lambda: int)

        if ((name) == (u"end")):
            (self).end = _cast(value, lambda: int)


test_substring.classes_test_substring_ref = None
class test_replace(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_replace, self).__init__();

    def that(self, start, end):
        return _cast(None, lambda: test_replace)

    def does(self, expected):
        return _cast(None, lambda: test_replace)

    def _getClass(self):
        return u"classes.test_replace"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"start")):
            return (self).start

        if ((name) == (u"end")):
            return (self).end

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)

        if ((name) == (u"start")):
            (self).start = _cast(value, lambda: unicode)

        if ((name) == (u"end")):
            (self).end = _cast(value, lambda: unicode)


test_replace.classes_test_replace_ref = None
class test_join(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.parts = None
        self.strparts = None
        self.sep = None

    def __init__(self, what):
        super(test_join, self).__init__();

    def that(self):
        return _cast(None, lambda: test_join)

    def a(self, part):
        return _cast(None, lambda: test_join)

    def does(self, expected):
        return _cast(None, lambda: test_join)

    def _getClass(self):
        return u"classes.test_join"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"parts")):
            return (self).parts

        if ((name) == (u"strparts")):
            return (self).strparts

        if ((name) == (u"sep")):
            return (self).sep

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)

        if ((name) == (u"parts")):
            (self).parts = _cast(value, lambda: _List)

        if ((name) == (u"strparts")):
            (self).strparts = _cast(value, lambda: unicode)

        if ((name) == (u"sep")):
            (self).sep = _cast(value, lambda: unicode)


test_join.classes_test_join_ref = None
class test_split(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.sep = None
        self.altsep = None

    def __init__(self, sep, altsep):
        super(test_split, self).__init__();

    def that(self, what):
        return _cast(None, lambda: test_split)

    def does(self, expected):
        return _cast(None, lambda: test_split)

    def _getClass(self):
        return u"classes.test_split"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        if ((name) == (u"sep")):
            return (self).sep

        if ((name) == (u"altsep")):
            return (self).altsep

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = _cast(value, lambda: unicode)

        if ((name) == (u"sep")):
            (self).sep = _cast(value, lambda: unicode)

        if ((name) == (u"altsep")):
            (self).altsep = _cast(value, lambda: unicode)


test_split.classes_test_split_ref = None
