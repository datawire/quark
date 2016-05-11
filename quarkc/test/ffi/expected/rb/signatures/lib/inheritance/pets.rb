module Quark
require "quark"
def self.inheritance; Inheritance; end
module Inheritance
def self.pets; Pets; end
module Pets
require 'quark' # .../reflect inheritance/pets
require_relative '../quark_ffi_signatures_md' # 0 () ('inheritance',)


def self.Pet; Pet; end
class Pet < ::DatawireQuarkCore::QuarkObject



    def initialize()
        self.__init_fields__

        nil
    end




    def greet()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end

def self.Cat; Cat; end
class Cat < ::Quark.inheritance.pets.Pet
    extend ::DatawireQuarkCore::Static

    static inheritance_pets_Cat_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_pets_Cat_md }



    def initialize()
        
        super()

        nil
    end




    def greet()
        
        ::DatawireQuarkCore.print("meow!")

        nil
    end

    def _getClass()
        
        return "inheritance.pets.Cat"

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
Cat.unlazy_statics

def self.Dog; Dog; end
class Dog < ::Quark.inheritance.pets.Pet
    extend ::DatawireQuarkCore::Static

    static inheritance_pets_Dog_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_pets_Dog_md }



    def initialize()
        
        super()

        nil
    end




    def greet()
        
        ::DatawireQuarkCore.print("woof!")

        nil
    end

    def _getClass()
        
        return "inheritance.pets.Dog"

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
Dog.unlazy_statics
end # module Pets
end # module Inheritance
end # module Quark
