from quark_runtime import *

import builtin.reflect


class string_methods_string_test_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_string_test_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_string_test(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_string_test, self).__init__(u"string_methods.string_test");
        (self).name = u"string_methods.string_test"
        (self).parameters = _List([])
        (self).fields = _List([])
        (self).methods = _List([string_methods_string_test_check_Method()])

    def construct(self, args):
        return string_methods.string_test()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_string_test.singleton = string_methods_string_test()

class string_methods_test_size_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_size_does_Method, self).__init__(u"string_methods.test_size", u"does", _List([u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_size_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_size_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_size(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_size, self).__init__(u"string_methods.test_size");
        (self).name = u"string_methods.test_size"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what")])
        (self).methods = _List([string_methods_test_size_does_Method(), string_methods_test_size_check_Method()])

    def construct(self, args):
        return string_methods.test_size((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_size.singleton = string_methods_test_size()

class string_methods_test_startsWith_that_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_startsWith_that_Method, self).__init__(u"string_methods.test_startsWith", u"that", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_startsWith_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_startsWith_does_Method, self).__init__(u"string_methods.test_startsWith", u"does", _List([u"builtin.bool"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_startsWith_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_startsWith_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_startsWith(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_startsWith, self).__init__(u"string_methods.test_startsWith");
        (self).name = u"string_methods.test_startsWith"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what"), builtin.reflect.Field(u"builtin.String", u"_that")])
        (self).methods = _List([string_methods_test_startsWith_that_Method(), string_methods_test_startsWith_does_Method(), string_methods_test_startsWith_check_Method()])

    def construct(self, args):
        return string_methods.test_startsWith((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_startsWith.singleton = string_methods_test_startsWith()

class string_methods_test_endsWith_that_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_endsWith_that_Method, self).__init__(u"string_methods.test_endsWith", u"that", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_endsWith_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_endsWith_does_Method, self).__init__(u"string_methods.test_endsWith", u"does", _List([u"builtin.bool"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_endsWith_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_endsWith_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_endsWith(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_endsWith, self).__init__(u"string_methods.test_endsWith");
        (self).name = u"string_methods.test_endsWith"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what"), builtin.reflect.Field(u"builtin.String", u"_that")])
        (self).methods = _List([string_methods_test_endsWith_that_Method(), string_methods_test_endsWith_does_Method(), string_methods_test_endsWith_check_Method()])

    def construct(self, args):
        return string_methods.test_endsWith((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_endsWith.singleton = string_methods_test_endsWith()

class string_methods_test_find_that_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_find_that_Method, self).__init__(u"string_methods.test_find", u"that", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_find_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_find_does_Method, self).__init__(u"string_methods.test_find", u"does", _List([u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_find_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_find_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_find(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_find, self).__init__(u"string_methods.test_find");
        (self).name = u"string_methods.test_find"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what"), builtin.reflect.Field(u"builtin.String", u"_that")])
        (self).methods = _List([string_methods_test_find_that_Method(), string_methods_test_find_does_Method(), string_methods_test_find_check_Method()])

    def construct(self, args):
        return string_methods.test_find((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_find.singleton = string_methods_test_find()

class string_methods_test_substring_that_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_substring_that_Method, self).__init__(u"string_methods.test_substring", u"that", _List([u"builtin.int", u"builtin.int"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_substring_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_substring_does_Method, self).__init__(u"string_methods.test_substring", u"does", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_substring_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_substring_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_substring(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_substring, self).__init__(u"string_methods.test_substring");
        (self).name = u"string_methods.test_substring"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what"), builtin.reflect.Field(u"builtin.int", u"start"), builtin.reflect.Field(u"builtin.int", u"end")])
        (self).methods = _List([string_methods_test_substring_that_Method(), string_methods_test_substring_does_Method(), string_methods_test_substring_check_Method()])

    def construct(self, args):
        return string_methods.test_substring((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_substring.singleton = string_methods_test_substring()

class string_methods_test_replace_that_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_replace_that_Method, self).__init__(u"string_methods.test_replace", u"that", _List([u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_replace_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_replace_does_Method, self).__init__(u"string_methods.test_replace", u"does", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_replace_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_replace_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_replace(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_replace, self).__init__(u"string_methods.test_replace");
        (self).name = u"string_methods.test_replace"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what"), builtin.reflect.Field(u"builtin.String", u"start"), builtin.reflect.Field(u"builtin.String", u"end")])
        (self).methods = _List([string_methods_test_replace_that_Method(), string_methods_test_replace_does_Method(), string_methods_test_replace_check_Method()])

    def construct(self, args):
        return string_methods.test_replace((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_replace.singleton = string_methods_test_replace()

class string_methods_test_join_that_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_join_that_Method, self).__init__(u"string_methods.test_join", u"that", _List([]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_join_a_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_join_a_Method, self).__init__(u"string_methods.test_join", u"a", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).a((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_join_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_join_does_Method, self).__init__(u"string_methods.test_join", u"does", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_join_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_join_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_join(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_join, self).__init__(u"string_methods.test_join");
        (self).name = u"string_methods.test_join"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what"), builtin.reflect.Field(u"builtin.List<builtin.String>", u"parts"), builtin.reflect.Field(u"builtin.String", u"strparts"), builtin.reflect.Field(u"builtin.String", u"sep")])
        (self).methods = _List([string_methods_test_join_that_Method(), string_methods_test_join_a_Method(), string_methods_test_join_does_Method(), string_methods_test_join_check_Method()])

    def construct(self, args):
        return string_methods.test_join((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_join.singleton = string_methods_test_join()

class string_methods_test_split_that_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_split_that_Method, self).__init__(u"string_methods.test_split", u"that", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).that((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_split_does_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_split_does_Method, self).__init__(u"string_methods.test_split", u"does", _List([u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        return (obj).does((args)[0])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_split_check_Method(builtin.reflect.Method):
    def _init(self):
        builtin.reflect.Method._init(self)

    def __init__(self):
        super(string_methods_test_split_check_Method, self).__init__(u"builtin.void", u"check", _List([u"builtin.String", u"builtin.String", u"builtin.String", u"builtin.String"]));

    def invoke(self, object, args):
        obj = object;
        (obj).check((args)[0], (args)[1], (args)[2], (args)[3]);
        return None

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class string_methods_test_split(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(string_methods_test_split, self).__init__(u"string_methods.test_split");
        (self).name = u"string_methods.test_split"
        (self).parameters = _List([])
        (self).fields = _List([builtin.reflect.Field(u"builtin.String", u"what"), builtin.reflect.Field(u"builtin.String", u"sep"), builtin.reflect.Field(u"builtin.String", u"altsep")])
        (self).methods = _List([string_methods_test_split_that_Method(), string_methods_test_split_does_Method(), string_methods_test_split_check_Method()])

    def construct(self, args):
        return string_methods.test_split((args)[0], (args)[1])

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
string_methods_test_split.singleton = string_methods_test_split()

class builtin_List_builtin_String_(builtin.reflect.Class):
    def _init(self):
        builtin.reflect.Class._init(self)

    def __init__(self):
        super(builtin_List_builtin_String_, self).__init__(u"builtin.List<builtin.String>");
        (self).name = u"builtin.List"
        (self).parameters = _List([u"builtin.String"])
        (self).fields = _List([])
        (self).methods = _List([])

    def construct(self, args):
        return _List()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
builtin_List_builtin_String_.singleton = builtin_List_builtin_String_()

class Root(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return None

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Root.string_methods_string_test_md = string_methods_string_test.singleton
Root.string_methods_test_size_md = string_methods_test_size.singleton
Root.string_methods_test_startsWith_md = string_methods_test_startsWith.singleton
Root.string_methods_test_endsWith_md = string_methods_test_endsWith.singleton
Root.string_methods_test_find_md = string_methods_test_find.singleton
Root.string_methods_test_substring_md = string_methods_test_substring.singleton
Root.string_methods_test_replace_md = string_methods_test_replace.singleton
Root.string_methods_test_join_md = string_methods_test_join.singleton
Root.string_methods_test_split_md = string_methods_test_split.singleton
Root.builtin_List_builtin_String__md = builtin_List_builtin_String_.singleton

import string_methods
