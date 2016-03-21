module Quark
require "datawire-quark-core"
def self.pet_md; MODULE_pet_md; end
module MODULE_pet_md
require 'builtin' # .../reflect
require 'pets'

class CLASS_pets_Cat_greet_Method < ::Quark.builtin.reflect.Method
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


end; def self.pets_Cat_greet_Method; CLASS_pets_Cat_greet_Method; end

class CLASS_pets_Cat < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pets.Cat")
        (self).name = "pets.Cat"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.pet_md.pets_Cat_greet_Method.new()])

        nil
    end



    
    def construct(args)
        
        return ::Quark.pets.Cat.new()

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


end; def self.pets_Cat; CLASS_pets_Cat; end

class CLASS_pets_Dog_greet_Method < ::Quark.builtin.reflect.Method
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


end; def self.pets_Dog_greet_Method; CLASS_pets_Dog_greet_Method; end

class CLASS_pets_Dog < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pets.Dog")
        (self).name = "pets.Dog"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.pet_md.pets_Dog_greet_Method.new()])

        nil
    end



    
    def construct(args)
        
        return ::Quark.pets.Dog.new()

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


end; def self.pets_Dog; CLASS_pets_Dog; end

class CLASS_Root < Object
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


end; def self.Root; CLASS_Root; end
end # module MODULE_pet_md
end # module Quark
