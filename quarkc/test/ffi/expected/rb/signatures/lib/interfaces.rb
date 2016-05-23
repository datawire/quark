module Quark
require "quark"
def self.interfaces; Interfaces; end
module Interfaces
require 'quark' # .../reflect
require_relative 'quark_ffi_signatures_md' # 0 () ()


def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static interfaces_A_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_A_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        raise NotImplementedError, '`A.foo` is an abstract method'

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

    static interfaces_B_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_B_md }



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

    static interfaces_C_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_C_md }



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

    static interfaces_T1_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_T1_md }



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

    static interfaces_T2_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_T2_md }



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

    static interfaces_T3_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_T3_md }



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

    static interfaces_T4_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_T4_md }



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

    static interfaces_T5_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_T5_md }



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

    static interfaces_Foo_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_Foo_md }
    static quark_List_quark_String__ref: -> { ::Quark.quark_ffi_signatures_md.Root.quark_List_quark_String__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def m1()
        raise NotImplementedError, '`Foo.m1` is an abstract method'

        nil
    end

    def m2(arg)
        raise NotImplementedError, '`Foo.m2` is an abstract method'

        nil
    end

    def m3(args)
        raise NotImplementedError, '`Foo.m3` is an abstract method'

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

    static interfaces_Bar_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_Bar_quark_Object__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def m1()
        raise NotImplementedError, '`Bar.m1` is an abstract method'

        nil
    end

    def m2(arg)
        raise NotImplementedError, '`Bar.m2` is an abstract method'

        nil
    end

    def m3(args)
        raise NotImplementedError, '`Bar.m3` is an abstract method'

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

    static interfaces_Baz_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_Baz_md }



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

    static interfaces_RazBar_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_RazBar_md }



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

    static interfaces_RazFaz_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_RazFaz_quark_Object__md }



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

    static interfaces_BazBar_ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_BazBar_md }



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

    static interfaces_BazFaz_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.interfaces_BazFaz_quark_Object__md }



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
