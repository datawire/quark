module Quark
def self.string_methods_md; StringMethodsMd; end
module StringMethodsMd
require 'quark' # .../reflect
# for ('string_methods_md',): require_relative 'string_methods' # 0 () ()

def self.string_methods_string_test_check_Method; StringMethodsStringTestCheckMethod; end
class StringMethodsStringTestCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_string_test; StringMethodsStringTest; end
class StringMethodsStringTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_string_test.new() }



    def initialize()
        
        super("string_methods.string_test")
        (self).name = "string_methods.string_test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_string_test_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.string_test.new()

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsStringTest.unlazy_statics

def self.string_methods_test_size_does_Method; StringMethodsTestSizeDoesMethod; end
class StringMethodsTestSizeDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_size", "does", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_size_check_Method; StringMethodsTestSizeCheckMethod; end
class StringMethodsTestSizeCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_size; StringMethodsTestSize; end
class StringMethodsTestSize < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_size.new() }



    def initialize()
        
        super("string_methods.test_size")
        (self).name = "string_methods.test_size"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_size_does_Method.new(), ::Quark.string_methods_md.string_methods_test_size_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_size.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestSize.unlazy_statics

def self.string_methods_test_startsWith_that_Method; StringMethodsTestStartsWithThatMethod; end
class StringMethodsTestStartsWithThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_startsWith", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.that((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_startsWith_does_Method; StringMethodsTestStartsWithDoesMethod; end
class StringMethodsTestStartsWithDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_startsWith", "does", ::DatawireQuarkCore::List.new(["quark.bool"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_startsWith_check_Method; StringMethodsTestStartsWithCheckMethod; end
class StringMethodsTestStartsWithCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_startsWith; StringMethodsTestStartsWith; end
class StringMethodsTestStartsWith < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_startsWith.new() }



    def initialize()
        
        super("string_methods.test_startsWith")
        (self).name = "string_methods.test_startsWith"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "_that")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_startsWith_that_Method.new(), ::Quark.string_methods_md.string_methods_test_startsWith_does_Method.new(), ::Quark.string_methods_md.string_methods_test_startsWith_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_startsWith.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestStartsWith.unlazy_statics

def self.string_methods_test_endsWith_that_Method; StringMethodsTestEndsWithThatMethod; end
class StringMethodsTestEndsWithThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_endsWith", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.that((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_endsWith_does_Method; StringMethodsTestEndsWithDoesMethod; end
class StringMethodsTestEndsWithDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_endsWith", "does", ::DatawireQuarkCore::List.new(["quark.bool"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_endsWith_check_Method; StringMethodsTestEndsWithCheckMethod; end
class StringMethodsTestEndsWithCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_endsWith; StringMethodsTestEndsWith; end
class StringMethodsTestEndsWith < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_endsWith.new() }



    def initialize()
        
        super("string_methods.test_endsWith")
        (self).name = "string_methods.test_endsWith"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "_that")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_endsWith_that_Method.new(), ::Quark.string_methods_md.string_methods_test_endsWith_does_Method.new(), ::Quark.string_methods_md.string_methods_test_endsWith_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_endsWith.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestEndsWith.unlazy_statics

def self.string_methods_test_find_that_Method; StringMethodsTestFindThatMethod; end
class StringMethodsTestFindThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_find", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.that((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_find_does_Method; StringMethodsTestFindDoesMethod; end
class StringMethodsTestFindDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_find", "does", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_find_check_Method; StringMethodsTestFindCheckMethod; end
class StringMethodsTestFindCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_find; StringMethodsTestFind; end
class StringMethodsTestFind < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_find.new() }



    def initialize()
        
        super("string_methods.test_find")
        (self).name = "string_methods.test_find"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "_that")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_find_that_Method.new(), ::Quark.string_methods_md.string_methods_test_find_does_Method.new(), ::Quark.string_methods_md.string_methods_test_find_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_find.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestFind.unlazy_statics

def self.string_methods_test_substring_that_Method; StringMethodsTestSubstringThatMethod; end
class StringMethodsTestSubstringThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_substring", "that", ::DatawireQuarkCore::List.new(["quark.int", "quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.that((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_substring_does_Method; StringMethodsTestSubstringDoesMethod; end
class StringMethodsTestSubstringDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_substring", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_substring_check_Method; StringMethodsTestSubstringCheckMethod; end
class StringMethodsTestSubstringCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_substring; StringMethodsTestSubstring; end
class StringMethodsTestSubstring < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_substring.new() }



    def initialize()
        
        super("string_methods.test_substring")
        (self).name = "string_methods.test_substring"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.int", "start"), ::Quark.quark.reflect.Field.new("quark.int", "end")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_substring_that_Method.new(), ::Quark.string_methods_md.string_methods_test_substring_does_Method.new(), ::Quark.string_methods_md.string_methods_test_substring_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_substring.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestSubstring.unlazy_statics

def self.string_methods_test_replace_that_Method; StringMethodsTestReplaceThatMethod; end
class StringMethodsTestReplaceThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_replace", "that", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.that((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_replace_does_Method; StringMethodsTestReplaceDoesMethod; end
class StringMethodsTestReplaceDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_replace", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_replace_check_Method; StringMethodsTestReplaceCheckMethod; end
class StringMethodsTestReplaceCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_replace; StringMethodsTestReplace; end
class StringMethodsTestReplace < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_replace.new() }



    def initialize()
        
        super("string_methods.test_replace")
        (self).name = "string_methods.test_replace"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "start"), ::Quark.quark.reflect.Field.new("quark.String", "end")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_replace_that_Method.new(), ::Quark.string_methods_md.string_methods_test_replace_does_Method.new(), ::Quark.string_methods_md.string_methods_test_replace_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_replace.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestReplace.unlazy_statics

def self.string_methods_test_join_that_Method; StringMethodsTestJoinThatMethod; end
class StringMethodsTestJoinThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_join", "that", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.that()

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_join_a_Method; StringMethodsTestJoinAMethod; end
class StringMethodsTestJoinAMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_join", "a", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.a((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_join_does_Method; StringMethodsTestJoinDoesMethod; end
class StringMethodsTestJoinDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_join", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_join_check_Method; StringMethodsTestJoinCheckMethod; end
class StringMethodsTestJoinCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_join; StringMethodsTestJoin; end
class StringMethodsTestJoin < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_join.new() }



    def initialize()
        
        super("string_methods.test_join")
        (self).name = "string_methods.test_join"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.List<quark.String>", "parts"), ::Quark.quark.reflect.Field.new("quark.String", "strparts"), ::Quark.quark.reflect.Field.new("quark.String", "sep")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_join_that_Method.new(), ::Quark.string_methods_md.string_methods_test_join_a_Method.new(), ::Quark.string_methods_md.string_methods_test_join_does_Method.new(), ::Quark.string_methods_md.string_methods_test_join_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_join.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestJoin.unlazy_statics

def self.string_methods_test_split_that_Method; StringMethodsTestSplitThatMethod; end
class StringMethodsTestSplitThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_split", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.that((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_split_does_Method; StringMethodsTestSplitDoesMethod; end
class StringMethodsTestSplitDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("string_methods.test_split", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.does((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_split_check_Method; StringMethodsTestSplitCheckMethod; end
class StringMethodsTestSplitCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.check((args)[0], (args)[1], (args)[2], (args)[3])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.string_methods_test_split; StringMethodsTestSplit; end
class StringMethodsTestSplit < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.string_methods_test_split.new() }



    def initialize()
        
        super("string_methods.test_split")
        (self).name = "string_methods.test_split"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "sep"), ::Quark.quark.reflect.Field.new("quark.String", "altsep")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.string_methods_md.string_methods_test_split_that_Method.new(), ::Quark.string_methods_md.string_methods_test_split_does_Method.new(), ::Quark.string_methods_md.string_methods_test_split_check_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.string_methods.test_split.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

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
StringMethodsTestSplit.unlazy_statics

def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.string_methods_md.quark_List_quark_String_.new() }



    def initialize()
        
        super("quark.List<quark.String>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

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
QuarkListQuarkString.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static string_methods_string_test_md: -> { ::Quark.string_methods_md.string_methods_string_test.singleton }
    static string_methods_test_size_md: -> { ::Quark.string_methods_md.string_methods_test_size.singleton }
    static string_methods_test_startsWith_md: -> { ::Quark.string_methods_md.string_methods_test_startsWith.singleton }
    static string_methods_test_endsWith_md: -> { ::Quark.string_methods_md.string_methods_test_endsWith.singleton }
    static string_methods_test_find_md: -> { ::Quark.string_methods_md.string_methods_test_find.singleton }
    static string_methods_test_substring_md: -> { ::Quark.string_methods_md.string_methods_test_substring.singleton }
    static string_methods_test_replace_md: -> { ::Quark.string_methods_md.string_methods_test_replace.singleton }
    static string_methods_test_join_md: -> { ::Quark.string_methods_md.string_methods_test_join.singleton }
    static string_methods_test_split_md: -> { ::Quark.string_methods_md.string_methods_test_split.singleton }
    static quark_List_quark_String__md: -> { ::Quark.string_methods_md.quark_List_quark_String_.singleton }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return nil

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
Root.unlazy_statics
end # module StringMethodsMd
end # module Quark
