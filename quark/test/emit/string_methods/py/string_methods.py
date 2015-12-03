from quark_runtime import *

class string_test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def check(self, actual, expected, op, q):
        if ((actual) == (expected)):
            _println((((((u"OK   ") + (op)) + (u" = ")) + (q)) + (actual)) + (q));
        else:
            _println((((((((((u"FAIL ") + (op)) + (u" = ")) + (q)) + (actual)) + (q)) + (u" != ")) + (q)) + (expected)) + (q));

    

class test_size(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None

    def __init__(self, what):
        super(test_size, self).__init__();
        (self).what = what

    def does(self, expected):
        actual = len(self.what);
        op = ((u"'") + (self.what)) + (u"'.size()");
        (self).check(str(actual), str(expected), op, u"");
        return self


class test_startsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_startsWith, self).__init__();
        (self).what = what

    def that(self, _that):
        (self)._that = _that
        return self

    def does(self, expected):
        (self).check(str(((self).what).startswith((self)._that)).lower(), str(expected).lower(), ((((u"'") + ((self).what)) + (u"'.startsWith('")) + ((self)._that)) + (u"'"), u"");
        return self


class test_endsWith(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_endsWith, self).__init__();
        (self).what = what

    def that(self, _that):
        (self)._that = _that
        return self

    def does(self, expected):
        (self).check(str(((self).what).endswith((self)._that)).lower(), str(expected).lower(), ((((u"'") + ((self).what)) + (u"'.endsWith('")) + ((self)._that)) + (u"'"), u"");
        return self


class test_find(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self._that = None

    def __init__(self, what):
        super(test_find, self).__init__();
        (self).what = what

    def that(self, _that):
        (self)._that = _that
        return self

    def does(self, expected):
        (self).check(str(((self).what).find((self)._that)), str(expected), ((((u"'") + ((self).what)) + (u"'.find('")) + ((self)._that)) + (u"'"), u"");
        return self


class test_substring(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_substring, self).__init__();
        (self).what = what

    def that(self, start, end):
        (self).start = start
        (self).end = end
        return self

    def does(self, expected):
        (self).check(((self).what)[((self).start):((self).end)], expected, ((((((u"'") + ((self).what)) + (u"'.substring(")) + (str((self).start))) + (u", ")) + (str((self).end))) + (u")"), u"'");
        return self


class test_replace(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.start = None
        self.end = None

    def __init__(self, what):
        super(test_replace, self).__init__();
        (self).what = what

    def that(self, start, end):
        (self).start = start
        (self).end = end
        return self

    def does(self, expected):
        (self).check(((self).what).replace(((self).start), ((self).end), 1), expected, ((((((u"'") + ((self).what)) + (u"'.replace('")) + ((self).start)) + (u"', '")) + ((self).end)) + (u"')"), u"'");
        return self


class test_join(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.parts = None
        self.strparts = None
        self.sep = None

    def __init__(self, what):
        super(test_join, self).__init__();
        (self).what = what

    def that(self):
        (self).parts = _List()
        (self).strparts = u""
        (self).sep = u""
        return self

    def a(self, part):
        ((self).parts).append(part);
        (self).strparts = (((((self).strparts) + ((self).sep)) + (u"'")) + (part)) + (u"'")
        (self).sep = u", "
        return self

    def does(self, expected):
        (self).check(((self).what).join((self).parts), expected, ((((u"'") + ((self).what)) + (u"'.join([")) + ((self).strparts)) + (u"])"), u"'");
        return self


class test_split(string_test):
    def _init(self):
        string_test._init(self)
        self.what = None
        self.sep = None
        self.altsep = None

    def __init__(self, sep, altsep):
        super(test_split, self).__init__();
        (self).sep = sep
        (self).altsep = altsep

    def that(self, what):
        (self).what = what
        return self

    def does(self, expected):
        parts = ((self).what).split((self).sep);
        actual = ((self).altsep).join(parts);
        (self).check(actual, expected, ((((((u"'") + ((self).altsep)) + (u"'.join('")) + ((self).what)) + (u"'.split('")) + ((self).sep)) + (u"'))"), u"'");
        return self



def main():
    (test_size(u"")).does(0);
    (test_size(u"1")).does(1);
    (test_size(u"22")).does(2);
    (test_size(u"333")).does(3);
    (test_size(u"4444")).does(4);
    ((((((((test_startsWith(u"abcd")).that(u"abc")).does(True)).that(u"bc")).does(False)).that(u"")).does(True)).that(u"abcde")).does(False);
    ((((((((test_endsWith(u"abcd")).that(u"bcd")).does(True)).that(u"bc")).does(False)).that(u"")).does(True)).that(u"xabcd")).does(False);
    ((((((((((((((((test_find(u"abcd")).that(u"bcd")).does(1)).that(u"bc")).does(1)).that(u"")).does(0)).that(u"xabcd")).does(-(1))).that(u"abcd")).does(0)).that(u"abc")).does(0)).that(u"a")).does(0)).that(u"x")).does(-(1));
    ((((((((((((((((test_substring(u"abcd")).that(0, 0)).does(u"")).that(0, 4)).does(u"abcd")).that(0, 1)).does(u"a")).that(1, 2)).does(u"b")).that(2, 4)).does(u"cd")).that(3, 4)).does(u"d")).that(1, 1)).does(u"")).that(2, 2)).does(u"");
    ((((((((((((((test_replace(u"abcd")).that(u"ab", u"AB")).does(u"ABcd")).that(u"b", u"bb")).does(u"abbcd")).that(u"ab", u"ab")).does(u"abcd")).that(u"", u"EE")).does(u"EEabcd")).that(u"c", u"EE")).does(u"abEEd")).that(u"d", u"EE")).does(u"abcEE")).that(u"x", u"EE")).does(u"abcd");
    ((((((((((((((test_join(u"")).that()).does(u"")).that()).a(u"a")).does(u"a")).that()).a(u"a")).a(u"b")).does(u"ab")).that()).a(u"a")).a(u"b")).a(u"c")).does(u"abc");
    ((((((((((((((test_join(u",")).that()).does(u"")).that()).a(u"a")).does(u"a")).that()).a(u"a")).a(u"b")).does(u"a,b")).that()).a(u"a")).a(u"b")).a(u"c")).does(u"a,b,c");
    ((((((((((((((((test_split(u",", u"|")).that(u"")).does(u"")).that(u"a")).does(u"a")).that(u",")).does(u"|")).that(u"a,")).does(u"a|")).that(u",a")).does(u"|a")).that(u"a,b")).does(u"a|b")).that(u"a,,b")).does(u"a||b")).that(u"a,b,c")).does(u"a|b|c");
    ((((((((((((((((test_split(u"foo", u"|")).that(u"")).does(u"")).that(u"a")).does(u"a")).that(u"foo")).does(u"|")).that(u"afoo")).does(u"a|")).that(u"fooa")).does(u"|a")).that(u"afoob")).does(u"a|b")).that(u"afoofoob")).does(u"a||b")).that(u"afoobfooc")).does(u"a|b|c");


if __name__ == "__main__":
    main()
