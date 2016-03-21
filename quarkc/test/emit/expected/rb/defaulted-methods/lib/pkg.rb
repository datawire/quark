module Quark
require "datawire-quark-core"
def self.pkg; MODULE_pkg; end
module MODULE_pkg
require 'builtin' # .../reflect
require 'defaulted_methods_md'

class CLASS_A < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def bar()
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.A; CLASS_A; end

class CLASS_B < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def bar()
        
        DatawireQuarkCore.print("B bar")

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.B; CLASS_B; end

class CLASS_C < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("C mixin for foo")

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.C; CLASS_C; end

class CLASS_T1 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T1 foo")

        nil
    end

    def _getClass()
        
        return "pkg.T1"

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

    def bar()
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.T1; CLASS_T1; end

class CLASS_T2 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T2 foo")

        nil
    end

    def _getClass()
        
        return "pkg.T2"

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

    def bar()
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.T2; CLASS_T2; end

class CLASS_T3 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T3 foo")

        nil
    end

    def _getClass()
        
        return "pkg.T3"

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

    def bar()
        
        DatawireQuarkCore.print("B bar")

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.T3; CLASS_T3; end

class CLASS_T4 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def _getClass()
        
        return "pkg.T4"

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

    def bar()
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def foo()
        
        DatawireQuarkCore.print("C mixin for foo")

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.T4; CLASS_T4; end

class CLASS_T5 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T5 foo")

        nil
    end

    def _getClass()
        
        return "pkg.T5"

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

    def bar()
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.T5; CLASS_T5; end

def self.main()
    
    t1 = ::Quark.pkg.T1.new()
    t1.foo()
    t1.bar()
    DatawireQuarkCore.print("===")
    t2 = ::Quark.pkg.T2.new()
    t2.foo()
    t2.bar()
    DatawireQuarkCore.print("===")
    t3 = ::Quark.pkg.T3.new()
    t3.foo()
    t3.bar()
    DatawireQuarkCore.print("===")
    t4 = ::Quark.pkg.T4.new()
    t4.foo()
    t4.bar()
    DatawireQuarkCore.print("===")
    t5 = ::Quark.pkg.T5.new()
    t5.foo()
    t5.bar()


    nil
end
end # module MODULE_pkg
end # module Quark
