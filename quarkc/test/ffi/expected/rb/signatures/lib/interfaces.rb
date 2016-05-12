module Quark
require "quark"
def self.interfaces; Interfaces; end
module Interfaces
require 'quark' # .../reflect
require_relative 'quark_ffi_signatures_md' # 0 () ()


def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_A_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def bar()
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
A.unlazy_statics

def self.B; B; end
class B < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_B_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def bar()
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
B.unlazy_statics

def self.C; C; end
class C < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_C_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
C.unlazy_statics

def self.T1; T1; end
class T1 < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_T1_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        nil

        nil
    end

    def _getClass()
        
        return "interfaces.T1"

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
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
T1.unlazy_statics

def self.T2; T2; end
class T2 < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_T2_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        nil

        nil
    end

    def _getClass()
        
        return "interfaces.T2"

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
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
T2.unlazy_statics

def self.T3; T3; end
class T3 < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_T3_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        nil

        nil
    end

    def _getClass()
        
        return "interfaces.T3"

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
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
T3.unlazy_statics

def self.T4; T4; end
class T4 < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_T4_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "interfaces.T4"

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
        
        nil

        nil
    end

    def foo()
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
T4.unlazy_statics

def self.T5; T5; end
class T5 < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_T5_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        nil

        nil
    end

    def _getClass()
        
        return "interfaces.T5"

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
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
T5.unlazy_statics

def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_Foo_ref: -> { nil }
    static quark_List_quark_String__ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def m1()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def m2(arg)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def m3(args)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Foo.unlazy_statics

def self.Bar; Bar; end
class Bar < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_Bar_quark_Object__ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def m1()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def m2(arg)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def m3(args)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Bar.unlazy_statics

def self.Baz; Baz; end
class Baz < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_Baz_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def m2(arg)
        
        nil

        nil
    end

    def m1()
        
        nil

        nil
    end

    def m3(args)
        
        nil

        nil
    end

    def _getClass()
        
        return "interfaces.Baz"

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
Baz.unlazy_statics

def self.RazBar; RazBar; end
class RazBar < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_RazBar_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def __init_fields__()
        

        nil
    end


end
RazBar.unlazy_statics

def self.RazFaz; RazFaz; end
class RazFaz < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_RazFaz_quark_Object__ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def __init_fields__()
        

        nil
    end


end
RazFaz.unlazy_statics

def self.BazBar; BazBar; end
class BazBar < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_BazBar_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def m1()
        
        nil

        nil
    end

    def m2(arg)
        
        nil

        nil
    end

    def m3(args)
        
        nil

        nil
    end

    def _getClass()
        
        return "interfaces.BazBar"

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
BazBar.unlazy_statics

def self.BazFaz; BazFaz; end
class BazFaz < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_BazFaz_quark_Object__ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def m1()
        
        nil

        nil
    end

    def m2(arg)
        
        nil

        nil
    end

    def m3(args)
        
        nil

        nil
    end

    def _getClass()
        
        return "interfaces.BazFaz<quark.Object>"

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
BazFaz.unlazy_statics
end # module Interfaces
end # module Quark
