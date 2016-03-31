module Quark
require "quark"
def self.pkg; Pkg; end
module Pkg
require 'quark' # .../reflect
require_relative 'defaulted_methods_md' # 0 () ()

def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_A_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_A_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def bar()
        
        ::DatawireQuarkCore.print("A bar")
        self.foo()

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

    static pkg_B_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_B_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def bar()
        
        ::DatawireQuarkCore.print("B bar")

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

    static pkg_C_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_C_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        ::DatawireQuarkCore.print("C mixin for foo")

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

    static pkg_T1_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_T1_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        ::DatawireQuarkCore.print("T1 foo")

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
        
        ::DatawireQuarkCore.print("A bar")
        self.foo()

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

    static pkg_T2_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_T2_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        ::DatawireQuarkCore.print("T2 foo")

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
        
        ::DatawireQuarkCore.print("A bar")
        self.foo()

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

    static pkg_T3_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_T3_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        ::DatawireQuarkCore.print("T3 foo")

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
        
        ::DatawireQuarkCore.print("B bar")

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

    static pkg_T4_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_T4_md }



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
        
        ::DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def foo()
        
        ::DatawireQuarkCore.print("C mixin for foo")

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

    static pkg_T5_ref: -> { ::Quark.defaulted_methods_md.Root.pkg_T5_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        ::DatawireQuarkCore.print("T5 foo")

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
        
        ::DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end
T5.unlazy_statics
end # module Pkg
end # module Quark
