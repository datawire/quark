module Quark
def self.pet_md; PetMd; end
module PetMd
require 'quark' # .../reflect
# for ('pet_md',): require_relative 'pets' # 0 () ()

def self.pets_Cat_greet_Method; PetsCatGreetMethod; end
class PetsCatGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

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

def self.pets_Cat; PetsCat; end
class PetsCat < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.pet_md.pets_Cat.new() }



    def initialize()
        
        super("pets.Cat")
        (self).name = "pets.Cat"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.pet_md.pets_Cat_greet_Method.new()])

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


end
PetsCat.unlazy_statics

def self.pets_Dog_greet_Method; PetsDogGreetMethod; end
class PetsDogGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

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

def self.pets_Dog; PetsDog; end
class PetsDog < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.pet_md.pets_Dog.new() }



    def initialize()
        
        super("pets.Dog")
        (self).name = "pets.Dog"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.pet_md.pets_Dog_greet_Method.new()])

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


end
PetsDog.unlazy_statics

def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.pet_md.quark_List_quark_String_.new() }



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

    static pets_Cat_md: -> { ::Quark.pet_md.pets_Cat.singleton }
    static pets_Dog_md: -> { ::Quark.pet_md.pets_Dog.singleton }



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
end # module PetMd
end # module Quark
