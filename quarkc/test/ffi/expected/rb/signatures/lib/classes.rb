module Quark
require "quark"
def self.classes; Classes; end
module Classes
require 'quark' # .../reflect
require_relative 'classes/stuff' # 0 ('classes',) ()
require_relative 'quark_ffi_signatures_md' # 0 () ()


def self.Overload; Overload; end
class Overload < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static classes_Overload_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_Overload_md }



    def initialize(name)
        
        self.__init_fields__

        nil
    end




    def __add__(o)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.Overload }

        nil
    end

    def __mul__(o)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.Overload }

        nil
    end

    def test()
        
        nil

        nil
    end

    def _getClass()
        
        return "classes.Overload"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        self.name = nil

        nil
    end


end
Overload.unlazy_statics

def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static classes_Test_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        nil

        nil
    end

    def _getClass()
        
        return "classes.Test"

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
Test.unlazy_statics

def self.string_test; StringTest; end
class StringTest < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static classes_string_test_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_string_test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def check(actual, expected, op, q)
        
        nil

        nil
    end

    def _getClass()
        
        return "classes.string_test"

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
class TestSize < ::Quark.classes.string_test
    attr_accessor :what
    extend ::DatawireQuarkCore::Static

    static classes_test_size_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_size_md }



    def initialize(what)
        
        super()

        nil
    end




    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_size }

        nil
    end

    def _getClass()
        
        return "classes.test_size"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil

        nil
    end


end
TestSize.unlazy_statics

def self.test_startsWith; TestStartsWith; end
class TestStartsWith < ::Quark.classes.string_test
    attr_accessor :what, :_that
    extend ::DatawireQuarkCore::Static

    static classes_test_startsWith_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_startsWith_md }



    def initialize(what)
        
        super()

        nil
    end




    def that(_that)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_startsWith }

        nil
    end

    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_startsWith }

        nil
    end

    def _getClass()
        
        return "classes.test_startsWith"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("_that"))
            (self)._that = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil
        self._that = nil

        nil
    end


end
TestStartsWith.unlazy_statics

def self.test_endsWith; TestEndsWith; end
class TestEndsWith < ::Quark.classes.string_test
    attr_accessor :what, :_that
    extend ::DatawireQuarkCore::Static

    static classes_test_endsWith_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_endsWith_md }



    def initialize(what)
        
        super()

        nil
    end




    def that(_that)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_endsWith }

        nil
    end

    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_endsWith }

        nil
    end

    def _getClass()
        
        return "classes.test_endsWith"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("_that"))
            (self)._that = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil
        self._that = nil

        nil
    end


end
TestEndsWith.unlazy_statics

def self.test_find; TestFind; end
class TestFind < ::Quark.classes.string_test
    attr_accessor :what, :_that
    extend ::DatawireQuarkCore::Static

    static classes_test_find_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_find_md }



    def initialize(what)
        
        super()

        nil
    end




    def that(_that)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_find }

        nil
    end

    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_find }

        nil
    end

    def _getClass()
        
        return "classes.test_find"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("_that"))
            (self)._that = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil
        self._that = nil

        nil
    end


end
TestFind.unlazy_statics

def self.test_substring; TestSubstring; end
class TestSubstring < ::Quark.classes.string_test
    attr_accessor :what, :start, :end_
    extend ::DatawireQuarkCore::Static

    static classes_test_substring_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_substring_md }



    def initialize(what)
        
        super()

        nil
    end




    def that(start, end_)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_substring }

        nil
    end

    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_substring }

        nil
    end

    def _getClass()
        
        return "classes.test_substring"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("start"))
            (self).start = ::DatawireQuarkCore.cast(value) { ::Integer }
        end
        if ((name) == ("end"))
            (self).end_ = ::DatawireQuarkCore.cast(value) { ::Integer }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil
        self.start = nil
        self.end_ = nil

        nil
    end


end
TestSubstring.unlazy_statics

def self.test_replace; TestReplace; end
class TestReplace < ::Quark.classes.string_test
    attr_accessor :what, :start, :end_
    extend ::DatawireQuarkCore::Static

    static classes_test_replace_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_replace_md }



    def initialize(what)
        
        super()

        nil
    end




    def that(start, end_)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_replace }

        nil
    end

    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_replace }

        nil
    end

    def _getClass()
        
        return "classes.test_replace"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("start"))
            (self).start = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("end"))
            (self).end_ = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil
        self.start = nil
        self.end_ = nil

        nil
    end


end
TestReplace.unlazy_statics

def self.test_join; TestJoin; end
class TestJoin < ::Quark.classes.string_test
    attr_accessor :what, :parts, :strparts, :sep
    extend ::DatawireQuarkCore::Static

    static classes_test_join_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_join_md }



    def initialize(what)
        
        super()

        nil
    end




    def that()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_join }

        nil
    end

    def a(part)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_join }

        nil
    end

    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_join }

        nil
    end

    def _getClass()
        
        return "classes.test_join"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("parts"))
            (self).parts = ::DatawireQuarkCore.cast(value) { ::DatawireQuarkCore::List }
        end
        if ((name) == ("strparts"))
            (self).strparts = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("sep"))
            (self).sep = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil
        self.parts = nil
        self.strparts = nil
        self.sep = nil

        nil
    end


end
TestJoin.unlazy_statics

def self.test_split; TestSplit; end
class TestSplit < ::Quark.classes.string_test
    attr_accessor :what, :sep, :altsep
    extend ::DatawireQuarkCore::Static

    static classes_test_split_ref: -> { ::Quark.quark_ffi_signatures_md.Root.classes_test_split_md }



    def initialize(sep, altsep)
        
        super()

        nil
    end




    def that(what)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_split }

        nil
    end

    def does(expected)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.test_split }

        nil
    end

    def _getClass()
        
        return "classes.test_split"

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
            (self).what = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("sep"))
            (self).sep = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("altsep"))
            (self).altsep = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super
        self.what = nil
        self.sep = nil
        self.altsep = nil

        nil
    end


end
TestSplit.unlazy_statics
end # module Classes
end # module Quark
