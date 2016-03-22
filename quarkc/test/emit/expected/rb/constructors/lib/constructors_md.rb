module Quark
require "datawire-quark-core"
def self.constructors_md; MODULE_constructors_md; end
module MODULE_constructors_md
require 'builtin' # .../reflect
require 'test1'
require 'test2'
require 'test3'

def self.test1_Test; CLASS_test1_Test; end
class CLASS_test1_Test < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.constructors_md.test1_Test.new() }


    
    def initialize()
        
        super("test1.Test")
        (self).name = "test1.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([])

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

def self.test2_Test; CLASS_test2_Test; end
class CLASS_test2_Test < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.constructors_md.test2_Test.new() }


    
    def initialize()
        
        super("test2.Test")
        (self).name = "test2.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([])

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

def self.test3_Box_builtin_String__get_Method; CLASS_test3_Box_builtin_String__get_Method; end
class CLASS_test3_Box_builtin_String__get_Method < ::Quark.builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.String", "get", DatawireQuarkCore::List.new([]))

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

def self.test3_Box_builtin_String_; CLASS_test3_Box_builtin_String_; end
class CLASS_test3_Box_builtin_String_ < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.constructors_md.test3_Box_builtin_String_.new() }


    
    def initialize()
        
        super("test3.Box<builtin.String>")
        (self).name = "test3.Box"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.String"])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "contents")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.constructors_md.test3_Box_builtin_String__get_Method.new()])

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

def self.Root; CLASS_Root; end
class CLASS_Root < Object
    attr_accessor 
    extend DatawireQuarkCore::Static


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
end # module MODULE_constructors_md
end # module Quark
