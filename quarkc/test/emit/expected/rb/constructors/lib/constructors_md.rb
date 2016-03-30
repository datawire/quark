module Quark
def self.constructors_md; MODULE_constructors_md; end
module MODULE_constructors_md
require 'quark' # .../reflect
# for ('constructors_md',): require_relative 'test1' # 0 () ()
# for ('constructors_md',): require_relative 'test2' # 0 () ()
# for ('constructors_md',): require_relative 'test3' # 0 () ()

def self.test1_Test; CLASS_test1_Test; end
class CLASS_test1_Test < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_test1_Test.unlazy_statics

def self.test2_Test; CLASS_test2_Test; end
class CLASS_test2_Test < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_test2_Test.unlazy_statics

def self.test3_Box_quark_String__get_Method; CLASS_test3_Box_quark_String__get_Method; end
class CLASS_test3_Box_quark_String__get_Method < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.test3_Box_quark_String_; CLASS_test3_Box_quark_String_; end
class CLASS_test3_Box_quark_String_ < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_test3_Box_quark_String_.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static test1_Test_md: -> { ::Quark.constructors_md.test1_Test.singleton }
    static test2_Test_md: -> { ::Quark.constructors_md.test2_Test.singleton }



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
CLASS_Root.unlazy_statics
end # module MODULE_constructors_md
end # module Quark
