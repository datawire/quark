require "datawire-quark-core"
require "../builtin"
require "../defaulted_methods_md"


class A < Object
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


end

class B < Object
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


end

class C < Object
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


end

class T1 < Object
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


end

class T2 < Object
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


end

class T3 < Object
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


end

class T4 < Object
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


end

class T5 < Object
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


end

class Functions < Object
    

    

    
    def self.main()
        
        t1 = T1.new()
        t1.foo()
        t1.bar()
        DatawireQuarkCore.print("===")
        t2 = T2.new()
        t2.foo()
        t2.bar()
        DatawireQuarkCore.print("===")
        t3 = T3.new()
        t3.foo()
        t3.bar()
        DatawireQuarkCore.print("===")
        t4 = T4.new()
        t4.foo()
        t4.bar()
        DatawireQuarkCore.print("===")
        t5 = T5.new()
        t5.foo()
        t5.bar()

        nil
    end


end
