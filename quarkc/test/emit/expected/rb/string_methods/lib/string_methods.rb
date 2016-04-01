module Quark
require "quark"
def self.string_methods; StringMethods; end
module StringMethods
require 'quark' # .../reflect
require_relative 'string_methods_md' # 0 () ()
require_relative 'string_methods' # 0 () ()


def self.string_test; StringTest; end
class StringTest < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static string_methods_string_test_ref: -> { ::Quark.string_methods_md.Root.string_methods_string_test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def check(actual, expected, op, q)
        
        if ((actual) == (expected))
            ::DatawireQuarkCore.print(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q))
        else
            ::DatawireQuarkCore.print(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q))
        end

        nil
    end

    def _getClass()
        
        return "string_methods.string_test"

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
StringTest.unlazy_statics

def self.test_size; TestSize; end
class TestSize < ::Quark.string_methods.string_test
    attr_accessor :what
    extend ::DatawireQuarkCore::Static

    static string_methods_test_size_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_size_md }



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
        
        return "string_methods.test_size"

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
TestSize.unlazy_statics

def self.test_startsWith; TestStartsWith; end
class TestStartsWith < ::Quark.string_methods.string_test
    attr_accessor :what, :_that
    extend ::DatawireQuarkCore::Static

    static string_methods_test_startsWith_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_startsWith_md }



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
        
        return "string_methods.test_startsWith"

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
TestStartsWith.unlazy_statics

def self.test_endsWith; TestEndsWith; end
class TestEndsWith < ::Quark.string_methods.string_test
    attr_accessor :what, :_that
    extend ::DatawireQuarkCore::Static

    static string_methods_test_endsWith_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_endsWith_md }



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
        
        return "string_methods.test_endsWith"

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
TestEndsWith.unlazy_statics

def self.test_find; TestFind; end
class TestFind < ::Quark.string_methods.string_test
    attr_accessor :what, :_that
    extend ::DatawireQuarkCore::Static

    static string_methods_test_find_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_find_md }



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
        
        return "string_methods.test_find"

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
TestFind.unlazy_statics

def self.test_substring; TestSubstring; end
class TestSubstring < ::Quark.string_methods.string_test
    attr_accessor :what, :start, :end_
    extend ::DatawireQuarkCore::Static

    static string_methods_test_substring_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_substring_md }



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
        
        return "string_methods.test_substring"

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
TestSubstring.unlazy_statics

def self.test_replace; TestReplace; end
class TestReplace < ::Quark.string_methods.string_test
    attr_accessor :what, :start, :end_
    extend ::DatawireQuarkCore::Static

    static string_methods_test_replace_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_replace_md }



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
        
        return "string_methods.test_replace"

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
TestReplace.unlazy_statics

def self.test_join; TestJoin; end
class TestJoin < ::Quark.string_methods.string_test
    attr_accessor :what, :parts, :strparts, :sep
    extend ::DatawireQuarkCore::Static

    static string_methods_test_join_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_join_md }
    static quark_List_quark_String__ref: -> { ::Quark.string_methods_md.Root.quark_List_quark_String__md }



    def initialize(what)
        
        super()
        (self).what = what

        nil
    end




    def that()
        
        (self).parts = ::DatawireQuarkCore::List.new()
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
        
        return "string_methods.test_join"

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
TestJoin.unlazy_statics

def self.test_split; TestSplit; end
class TestSplit < ::Quark.string_methods.string_test
    attr_accessor :what, :sep, :altsep
    extend ::DatawireQuarkCore::Static

    static string_methods_test_split_ref: -> { ::Quark.string_methods_md.Root.string_methods_test_split_md }



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
        
        parts = ::DatawireQuarkCore.split((self).what, (self).sep)
        actual = (parts).join((self).altsep)
        self.check(actual, expected, (((((("'") + ((self).altsep)) + ("'.join('")) + ((self).what)) + ("'.split('")) + ((self).sep)) + ("'))"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "string_methods.test_split"

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
TestSplit.unlazy_statics

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.string_methods.test_size.new("").does(0)
    ::Quark.string_methods.test_size.new("1").does(1)
    ::Quark.string_methods.test_size.new("22").does(2)
    ::Quark.string_methods.test_size.new("333").does(3)
    ::Quark.string_methods.test_size.new("4444").does(4)
    ::Quark.string_methods.test_startsWith.new("abcd").that("abc").does(true).that("bc").does(false).that("").does(true).that("abcde").does(false)
    ::Quark.string_methods.test_endsWith.new("abcd").that("bcd").does(true).that("bc").does(false).that("").does(true).that("xabcd").does(false)
    ::Quark.string_methods.test_find.new("abcd").that("bcd").does(1).that("bc").does(1).that("").does(0).that("xabcd").does(-(1)).that("abcd").does(0).that("abc").does(0).that("a").does(0).that("x").does(-(1))
    ::Quark.string_methods.test_substring.new("abcd").that(0, 0).does("").that(0, 4).does("abcd").that(0, 1).does("a").that(1, 2).does("b").that(2, 4).does("cd").that(3, 4).does("d").that(1, 1).does("").that(2, 2).does("")
    ::Quark.string_methods.test_replace.new("abcd").that("ab", "AB").does("ABcd").that("b", "bb").does("abbcd").that("ab", "ab").does("abcd").that("", "EE").does("EEabcd").that("c", "EE").does("abEEd").that("d", "EE").does("abcEE").that("x", "EE").does("abcd")
    ::Quark.string_methods.test_join.new("").that().does("").that().a("a").does("a").that().a("a").a("b").does("ab").that().a("a").a("b").a("c").does("abc")
    ::Quark.string_methods.test_join.new(",").that().does("").that().a("a").does("a").that().a("a").a("b").does("a,b").that().a("a").a("b").a("c").does("a,b,c")
    ::Quark.string_methods.test_split.new(",", "|").that("").does("").that("a").does("a").that(",").does("|").that("a,").does("a|").that(",a").does("|a").that("a,b").does("a|b").that("a,,b").does("a||b").that("a,b,c").does("a|b|c")
    ::Quark.string_methods.test_split.new("foo", "|").that("").does("").that("a").does("a").that("foo").does("|").that("afoo").does("a|").that("fooa").does("|a").that("afoob").does("a|b").that("afoofoob").does("a||b").that("afoobfooc").does("a|b|c")


    nil
end

if __FILE__ == $0 then ::Quark.string_methods.call_main() end

end # module StringMethods
end # module Quark
