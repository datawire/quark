module Quark
require "datawire-quark-core"
def self.string_methods_lib; MODULE_string_methods_lib; end
module MODULE_string_methods_lib
def self.string_test; CLASS_string_test; end
class CLASS_string_test < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def check(actual, expected, op, q)
        
        if ((actual) == (expected))
            DatawireQuarkCore.print(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q))
        else
            DatawireQuarkCore.print(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q))
        end

        nil
    end

    def _getClass()
        
        return "string_test"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end

def self.test_size; CLASS_test_size; end
class CLASS_test_size < ::Quark.string_methods_lib.string_test
    attr_accessor :what

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def does(expected)
        
        actual = (@what).size
        op = (("'") + (@what)) + ("'.size()")
        self.check((actual).to_s, (expected).to_s, op, "")
        return self

        nil
    end

    def _getClass()
        
        return "test_size"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil

        nil
    end


end

def self.test_startsWith; CLASS_test_startsWith; end
class CLASS_test_startsWith < ::Quark.string_methods_lib.string_test
    attr_accessor :what, :_that

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(_that)
        
        (self)._that = _that
        return self

        nil
    end

    def does(expected)
        
        self.check((((self).what).start_with?((self)._that)).to_s, (expected).to_s, (((("'") + ((self).what)) + ("'.startsWith('")) + ((self)._that)) + ("'"), "")
        return self

        nil
    end

    def _getClass()
        
        return "test_startsWith"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("_that"))
            return (self)._that
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("_that"))
            (self)._that = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self._that = nil

        nil
    end


end

def self.test_endsWith; CLASS_test_endsWith; end
class CLASS_test_endsWith < ::Quark.string_methods_lib.string_test
    attr_accessor :what, :_that

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(_that)
        
        (self)._that = _that
        return self

        nil
    end

    def does(expected)
        
        self.check((((self).what).end_with?((self)._that)).to_s, (expected).to_s, (((("'") + ((self).what)) + ("'.endsWith('")) + ((self)._that)) + ("'"), "")
        return self

        nil
    end

    def _getClass()
        
        return "test_endsWith"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("_that"))
            return (self)._that
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("_that"))
            (self)._that = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self._that = nil

        nil
    end


end

def self.test_find; CLASS_test_find; end
class CLASS_test_find < ::Quark.string_methods_lib.string_test
    attr_accessor :what, :_that

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(_that)
        
        (self)._that = _that
        return self

        nil
    end

    def does(expected)
        
        self.check(((((self).what).index((self)._that) or -1)).to_s, (expected).to_s, (((("'") + ((self).what)) + ("'.find('")) + ((self)._that)) + ("'"), "")
        return self

        nil
    end

    def _getClass()
        
        return "test_find"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("_that"))
            return (self)._that
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("_that"))
            (self)._that = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self._that = nil

        nil
    end


end

def self.test_substring; CLASS_test_substring; end
class CLASS_test_substring < ::Quark.string_methods_lib.string_test
    attr_accessor :what, :start, :end_

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(start, end_)
        
        (self).start = start
        (self).end_ = end_
        return self

        nil
    end

    def does(expected)
        
        self.check(((self).what)[((self).start)...((self).end_)], expected, (((((("'") + ((self).what)) + ("'.substring(")) + (((self).start).to_s)) + (", ")) + (((self).end_).to_s)) + (")"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_substring"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("start"))
            return (self).start
        end
        if ((name) == ("end"))
            return (self).end_
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("start"))
            (self).start = value
        end
        if ((name) == ("end"))
            (self).end_ = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.start = nil
        self.end_ = nil

        nil
    end


end

def self.test_replace; CLASS_test_replace; end
class CLASS_test_replace < ::Quark.string_methods_lib.string_test
    attr_accessor :what, :start, :end_

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(start, end_)
        
        (self).start = start
        (self).end_ = end_
        return self

        nil
    end

    def does(expected)
        
        self.check(((self).what).sub(((self).start), ((self).end_)), expected, (((((("'") + ((self).what)) + ("'.replace('")) + ((self).start)) + ("', '")) + ((self).end_)) + ("')"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_replace"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("start"))
            return (self).start
        end
        if ((name) == ("end"))
            return (self).end_
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("start"))
            (self).start = value
        end
        if ((name) == ("end"))
            (self).end_ = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.start = nil
        self.end_ = nil

        nil
    end


end

def self.test_join; CLASS_test_join; end
class CLASS_test_join < ::Quark.string_methods_lib.string_test
    attr_accessor :what, :parts, :strparts, :sep

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that()
        
        (self).parts = DatawireQuarkCore::List.new()
        (self).strparts = ""
        (self).sep = ""
        return self

        nil
    end

    def a(part)
        
        ((self).parts) << (part)
        (self).strparts = (((((self).strparts) + ((self).sep)) + ("'")) + (part)) + ("'")
        (self).sep = ", "
        return self

        nil
    end

    def does(expected)
        
        self.check(((self).parts).join((self).what), expected, (((("'") + ((self).what)) + ("'.join([")) + ((self).strparts)) + ("])"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_join"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("parts"))
            return (self).parts
        end
        if ((name) == ("strparts"))
            return (self).strparts
        end
        if ((name) == ("sep"))
            return (self).sep
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("parts"))
            (self).parts = value
        end
        if ((name) == ("strparts"))
            (self).strparts = value
        end
        if ((name) == ("sep"))
            (self).sep = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.parts = nil
        self.strparts = nil
        self.sep = nil

        nil
    end


end

def self.test_split; CLASS_test_split; end
class CLASS_test_split < ::Quark.string_methods_lib.string_test
    attr_accessor :what, :sep, :altsep

    
    def initialize(sep, altsep)
        
        super()
        (self).sep = sep
        (self).altsep = altsep

        nil
    end



    
    def that(what)
        
        (self).what = what
        return self

        nil
    end

    def does(expected)
        
        parts = DatawireQuarkCore.split((self).what, (self).sep)
        actual = (parts).join((self).altsep)
        self.check(actual, expected, (((((("'") + ((self).altsep)) + ("'.join('")) + ((self).what)) + ("'.split('")) + ((self).sep)) + ("'))"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_split"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("sep"))
            return (self).sep
        end
        if ((name) == ("altsep"))
            return (self).altsep
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("sep"))
            (self).sep = value
        end
        if ((name) == ("altsep"))
            (self).altsep = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.sep = nil
        self.altsep = nil

        nil
    end


end

def self.main()
    
    ::Quark.string_methods_lib.test_size.new("").does(0)
    ::Quark.string_methods_lib.test_size.new("1").does(1)
    ::Quark.string_methods_lib.test_size.new("22").does(2)
    ::Quark.string_methods_lib.test_size.new("333").does(3)
    ::Quark.string_methods_lib.test_size.new("4444").does(4)
    ::Quark.string_methods_lib.test_startsWith.new("abcd").that("abc").does(true).that("bc").does(false).that("").does(true).that("abcde").does(false)
    ::Quark.string_methods_lib.test_endsWith.new("abcd").that("bcd").does(true).that("bc").does(false).that("").does(true).that("xabcd").does(false)
    ::Quark.string_methods_lib.test_find.new("abcd").that("bcd").does(1).that("bc").does(1).that("").does(0).that("xabcd").does(-(1)).that("abcd").does(0).that("abc").does(0).that("a").does(0).that("x").does(-(1))
    ::Quark.string_methods_lib.test_substring.new("abcd").that(0, 0).does("").that(0, 4).does("abcd").that(0, 1).does("a").that(1, 2).does("b").that(2, 4).does("cd").that(3, 4).does("d").that(1, 1).does("").that(2, 2).does("")
    ::Quark.string_methods_lib.test_replace.new("abcd").that("ab", "AB").does("ABcd").that("b", "bb").does("abbcd").that("ab", "ab").does("abcd").that("", "EE").does("EEabcd").that("c", "EE").does("abEEd").that("d", "EE").does("abcEE").that("x", "EE").does("abcd")
    ::Quark.string_methods_lib.test_join.new("").that().does("").that().a("a").does("a").that().a("a").a("b").does("ab").that().a("a").a("b").a("c").does("abc")
    ::Quark.string_methods_lib.test_join.new(",").that().does("").that().a("a").does("a").that().a("a").a("b").does("a,b").that().a("a").a("b").a("c").does("a,b,c")
    ::Quark.string_methods_lib.test_split.new(",", "|").that("").does("").that("a").does("a").that(",").does("|").that("a,").does("a|").that(",a").does("|a").that("a,b").does("a|b").that("a,,b").does("a||b").that("a,b,c").does("a|b|c")
    ::Quark.string_methods_lib.test_split.new("foo", "|").that("").does("").that("a").does("a").that("foo").does("|").that("afoo").does("a|").that("fooa").does("|a").that("afoob").does("a|b").that("afoofoob").does("a||b").that("afoobfooc").does("a|b|c")


    nil
end
end # module MODULE_string_methods_lib
end # module Quark
