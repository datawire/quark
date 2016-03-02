require "datawire-quark-core"
require "../builtin"
require "../pets"


class Pets_Cat_greet_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "greet", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.greet()
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
def pets_Cat_greet_Method()
    return Pets_Cat_greet_Method

    nil
end

class Pets_Cat < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pets.Cat")
        (self).name = "pets.Cat"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pets_Cat_greet_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pets.Cat.new()

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
def pets_Cat()
    return Pets_Cat

    nil
end


class Pets_Dog_greet_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "greet", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.greet()
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
def pets_Dog_greet_Method()
    return Pets_Dog_greet_Method

    nil
end

class Pets_Dog < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pets.Dog")
        (self).name = "pets.Dog"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pets_Dog_greet_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pets.Dog.new()

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
def pets_Dog()
    return Pets_Dog

    nil
end


class Root < Object
    attr_accessor 

    
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
