module Quark
def self.constructors_md; ConstructorsMd; end
module ConstructorsMd
require 'quark' # .../reflect
# for ('constructors_md',): require_relative 'test1' # 0 () ()
# for ('constructors_md',): require_relative 'test2' # 0 () ()
# for ('constructors_md',): require_relative 'test3' # 0 () ()
# for ('constructors_md',): require_relative 'test4' # 0 () ()


def self.test1_Test; Test1Test; end
class Test1Test < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.constructors_md.test1_Test.new() }



    def initialize()
        
        super("test1.Test")
        (self).name = "test1.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.test1.Test.new()

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
        
        super

        nil
    end


end
Test1Test.unlazy_statics


def self.test2_Test; Test2Test; end
class Test2Test < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.constructors_md.test2_Test.new() }



    def initialize()
        
        super("test2.Test")
        (self).name = "test2.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.test2.Test.new((args)[0])

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
        
        super

        nil
    end


end
Test2Test.unlazy_statics


def self.test3_Box_quark_String__get_Method; Test3BoxQuarkStringGetMethod; end
class Test3BoxQuarkStringGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

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
        
        super

        nil
    end


end

def self.test3_Box_quark_String_; Test3BoxQuarkString; end
class Test3BoxQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.constructors_md.test3_Box_quark_String_.new() }



    def initialize()
        
        super("test3.Box<quark.String>")
        (self).name = "test3.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.constructors_md.test3_Box_quark_String__get_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.test3.Box.new((args)[0])

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
        
        super

        nil
    end


end
Test3BoxQuarkString.unlazy_statics


def self.test4_Base; Test4Base; end
class Test4Base < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.constructors_md.test4_Base.new() }



    def initialize()
        
        super("test4.Base")
        (self).name = "test4.Base"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.test4.Base.new()

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
        
        super

        nil
    end


end
Test4Base.unlazy_statics


def self.test4_Test; Test4Test; end
class Test4Test < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.constructors_md.test4_Test.new() }



    def initialize()
        
        super("test4.Test")
        (self).name = "test4.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name"), ::Quark.quark.reflect.Field.new("quark.String", "mumble"), ::Quark.quark.reflect.Field.new("quark.String", "later")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.test4.Test.new()

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
        
        super

        nil
    end


end
Test4Test.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.constructors_md.quark_List_quark_String_.new() }



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
        
        super

        nil
    end


end
QuarkListQuarkString.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static test1_Test_md: -> { ::Quark.constructors_md.test1_Test.singleton }
    static test2_Test_md: -> { ::Quark.constructors_md.test2_Test.singleton }
    static test4_Base_md: -> { ::Quark.constructors_md.test4_Base.singleton }
    static test4_Test_md: -> { ::Quark.constructors_md.test4_Test.singleton }



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
end # module ConstructorsMd
end # module Quark
