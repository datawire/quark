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
        return None

    def __mul__(self, o):
        return None

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
            (self).name = value


Overload.classes_Overload_ref = quark_ffi_signatures_md.Root.classes_Overload_md
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
Test.classes_Test_ref = quark_ffi_signatures_md.Root.classes_Test_md
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
string_test.classes_string_test_ref = quark_ffi_signatures_md.Root.classes_string_test_md
class test_size(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None

    def __init__(self, what):
        super(test_size, self).__init__();

    def does(self, expected):
        return None

    def _getClass(self):
        return u"classes.test_size"

    def _getField(self, name):
        if ((name) == (u"what")):
            return (self).what

        return None

    def _setField(self, name, value):
        if ((name) == (u"what")):
            (self).what = value


test_size.classes_test_size_ref = quark_ffi_signatures_md.Root.classes_test_size_md
class test_startsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_startsWith, self).__init__();

    def that(self, _that):
        return None

    def does(self, expected):
        return None

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
            (self).what = value

        if ((name) == (u"_that")):
            (self)._that = value


test_startsWith.classes_test_startsWith_ref = quark_ffi_signatures_md.Root.classes_test_startsWith_md
class test_endsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_endsWith, self).__init__();

    def that(self, _that):
        return None

    def does(self, expected):
        return None

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
            (self).what = value

        if ((name) == (u"_that")):
            (self)._that = value


test_endsWith.classes_test_endsWith_ref = quark_ffi_signatures_md.Root.classes_test_endsWith_md
class test_find(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_find, self).__init__();

    def that(self, _that):
        return None

    def does(self, expected):
        return None

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
            (self).what = value

        if ((name) == (u"_that")):
            (self)._that = value


test_find.classes_test_find_ref = quark_ffi_signatures_md.Root.classes_test_find_md
class test_substring(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_substring, self).__init__();

    def that(self, start, end):
        return None

    def does(self, expected):
        return None

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
            (self).what = value

        if ((name) == (u"start")):
            (self).start = value

        if ((name) == (u"end")):
            (self).end = value


test_substring.classes_test_substring_ref = quark_ffi_signatures_md.Root.classes_test_substring_md
class test_replace(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_replace, self).__init__();

    def that(self, start, end):
        return None

    def does(self, expected):
        return None

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
            (self).what = value

        if ((name) == (u"start")):
            (self).start = value

        if ((name) == (u"end")):
            (self).end = value


test_replace.classes_test_replace_ref = quark_ffi_signatures_md.Root.classes_test_replace_md
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
        return None

    def a(self, part):
        return None

    def does(self, expected):
        return None

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
            (self).what = value

        if ((name) == (u"parts")):
            (self).parts = value

        if ((name) == (u"strparts")):
            (self).strparts = value

        if ((name) == (u"sep")):
            (self).sep = value


test_join.classes_test_join_ref = quark_ffi_signatures_md.Root.classes_test_join_md
class test_split(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.sep = None
        self.altsep = None

    def __init__(self, sep, altsep):
        super(test_split, self).__init__();

    def that(self, what):
        return None

    def does(self, expected):
        return None

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
            (self).what = value

        if ((name) == (u"sep")):
            (self).sep = value

        if ((name) == (u"altsep")):
            (self).altsep = value


test_split.classes_test_split_ref = quark_ffi_signatures_md.Root.classes_test_split_md
