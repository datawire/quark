module Quark
def self.quark; Quark; end
module Quark
def self.test_; Test; end
module Test
require_relative 'reflect' # 1 () ()
require_relative '../quark_md' # 0 () ('quark',)


def self.TestInitializer; TestInitializer; end
class TestInitializer < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_test_TestInitializer_ref: -> { ::Quark.quark_md.Root.quark_test_TestInitializer_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def getValue()
        
        return nil

        nil
    end

    def _getClass()
        
        return "quark.test.TestInitializer"

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
TestInitializer.unlazy_statics

def self.red(str)
    
    return (("\u001b[31;1m") + (str)) + ("\u001b[0m")


    nil
end

def self.green(str)
    
    return (("\u001b[32;1m") + (str)) + ("\u001b[0m")


    nil
end

def self.bold(str)
    
    return (("\u001b[1m") + (str)) + ("\u001b[0m")


    nil
end

def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name, :checks, :failures
    extend ::DatawireQuarkCore::Static

    static ctx: -> { ::DatawireQuarkCore::TLS.new(::Quark.quark.test_.TestInitializer.new()) }
    static quark_test_Test_ref: -> { ::Quark.quark_md.Root.quark_test_Test_md }



    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end




    def self.current()
        
        return ::Quark.quark.test_.Test.ctx.getValue()

        nil
    end

    def start()
        
        ::Quark.quark.test_.Test.ctx.setValue(self)

        nil
    end

    def stop()
        
        result = (((((@name) + (" [")) + ((@checks).to_s)) + (" checks, ")) + (((@failures).size).to_s)) + (" failures]")
        if (((@failures).size) > (0))
            ::DatawireQuarkCore.print(::Quark.quark.test_.red(result))
        else
            ::DatawireQuarkCore.print(::Quark.quark.test_.bold(result))
        end
        idx = 0
        while ((idx) < ((@failures).size)) do
            ::DatawireQuarkCore.print(::Quark.quark.test_.red(("  ") + ((@failures)[idx])))
            idx = (idx) + (1)
        end
        ::Quark.quark.test_.Test.ctx.setValue(nil)

        nil
    end

    def check(value, message)
        
        @checks = (@checks) + (1)
        if (!(value))
            (@failures) << (message)
        end
        return value

        nil
    end

    def fail(message)
        
        self.check(false, message)

        nil
    end

    def run()
        
        nil

        nil
    end

    def _getClass()
        
        return "quark.test.Test"

        nil
    end

    def _getField(name)
        
        if ((name) == ("ctx"))
            return ::Quark.quark.test_.Test.ctx
        end
        if ((name) == ("name"))
            return (self).name
        end
        if ((name) == ("checks"))
            return (self).checks
        end
        if ((name) == ("failures"))
            return (self).failures
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("ctx"))
            ::Quark.quark.test_.Test.ctx = value
        end
        if ((name) == ("name"))
            (self).name = value
        end
        if ((name) == ("checks"))
            (self).checks = value
        end
        if ((name) == ("failures"))
            (self).failures = value
        end

        nil
    end

    def __init_fields__()
        

        self.name = nil
        self.checks = 0
        self.failures = ::DatawireQuarkCore::List.new([])

        nil
    end


end
Test.unlazy_statics

def self.MethodTest; MethodTest; end
class MethodTest < ::Quark.quark.test_.Test
    attr_accessor :klass, :method
    extend ::DatawireQuarkCore::Static

    static quark_test_MethodTest_ref: -> { ::Quark.quark_md.Root.quark_test_MethodTest_md }



    def initialize(klass, method)
        
        super(((klass.getName()) + (".")) + (method.getName()))
        (self).klass = klass
        (self).method = method

        nil
    end




    def run()
        
        setup = @klass.getMethod("setup")
        teardown = @klass.getMethod("teardown")
        test_ = @klass.construct(::DatawireQuarkCore::List.new([]))
        if ((setup) != (nil))
            setup.invoke(test_, ::DatawireQuarkCore::List.new([]))
        end
        @method.invoke(test_, ::DatawireQuarkCore::List.new([]))
        if ((teardown) != (nil))
            teardown.invoke(test_, ::DatawireQuarkCore::List.new([]))
        end

        nil
    end

    def _getClass()
        
        return "quark.test.MethodTest"

        nil
    end

    def _getField(name)
        
        if ((name) == ("ctx"))
            return ::Quark.quark.test_.Test.ctx
        end
        if ((name) == ("name"))
            return (self).name
        end
        if ((name) == ("checks"))
            return (self).checks
        end
        if ((name) == ("failures"))
            return (self).failures
        end
        if ((name) == ("klass"))
            return (self).klass
        end
        if ((name) == ("method"))
            return (self).method
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("ctx"))
            ::Quark.quark.test_.Test.ctx = value
        end
        if ((name) == ("name"))
            (self).name = value
        end
        if ((name) == ("checks"))
            (self).checks = value
        end
        if ((name) == ("failures"))
            (self).failures = value
        end
        if ((name) == ("klass"))
            (self).klass = value
        end
        if ((name) == ("method"))
            (self).method = value
        end

        nil
    end

    def __init_fields__()
        

        self.klass = nil
        self.method = nil

        nil
    end


end
MethodTest.unlazy_statics

def self.check(value, message)
    
    return ::Quark.quark.test_.Test.current().check(value, message)


    nil
end

def self.checkEqual(expected, actual)
    
    return ::Quark.quark.test_.Test.current().check((expected) == (actual), ((("expected ") + ((expected).to_s)) + (" got ")) + ((actual).to_s))


    nil
end

def self.fail(message)
    
    ::Quark.quark.test_.Test.current().check(false, message)


    nil
end

def self.Harness; Harness; end
class Harness < ::DatawireQuarkCore::QuarkObject
    attr_accessor :pkg, :tests, :filtered
    extend ::DatawireQuarkCore::Static

    static quark_List_quark_test_Test__ref: -> { ::Quark.quark_md.Root.quark_List_quark_test_Test__md }
    static quark_test_Harness_ref: -> { ::Quark.quark_md.Root.quark_test_Harness_md }



    def initialize(pkg)
        
        self.__init_fields__
        (self).pkg = pkg

        nil
    end




    def collect(filter)
        
        names = ::DatawireQuarkCore::List.new((::Quark.quark.reflect.QuarkClass.classes).keys)
        (names).sort!
        idx = 0
        pfx = (@pkg) + (".")
        while ((idx) < ((names).size)) do
            name = (names)[idx]
            if (((name).start_with?(pfx)) && ((name).end_with?("Test")))
                klass = ::Quark.quark.reflect.QuarkClass.get(name)
                methods = klass.getMethods()
                jdx = 0
                while ((jdx) < ((methods).size)) do
                    meth = (methods)[jdx]
                    mname = meth.getName()
                    if ((mname).start_with?("test"))
                        test_ = ::Quark.quark.test_.MethodTest.new(klass, meth)
                        if (((filter) == (nil)) || (((((test_).name).index(filter) or -1)) >= (0)))
                            (@tests) << (test_)
                        else
                            if ((filter) != (nil))
                                @filtered = (@filtered) + (1)
                            end
                        end
                    end
                    jdx = (jdx) + (1)
                end
            end
            idx = (idx) + (1)
        end

        nil
    end

    def list()
        
        idx = 0
        while ((idx) < ((@tests).size)) do
            test_ = (@tests)[idx]
            ::DatawireQuarkCore.print((test_).name)
            idx = (idx) + (1)
        end

        nil
    end

    def run()
        
        ::DatawireQuarkCore.print(::Quark.quark.test_.bold("=============================== starting tests ==============================="))
        idx = 0
        failures = 0
        while ((idx) < ((@tests).size)) do
            test_ = (@tests)[idx]
            test_.start()
            test_.run()
            test_.stop()
            if ((((test_).failures).size) > (0))
                failures = (failures) + (1)
            end
            idx = (idx) + (1)
        end
        passed = ((@tests).size) - (failures)
        ::DatawireQuarkCore.print(::Quark.quark.test_.bold("=============================== stopping tests ==============================="))
        result = ((((((("Total: ") + ((((@tests).size) + (@filtered)).to_s)) + (", Filtered: ")) + ((@filtered).to_s)) + (", Passed: ")) + ((passed).to_s)) + (", Failed: ")) + ((failures).to_s)
        if ((failures) > (0))
            ::DatawireQuarkCore.print(::Quark.quark.test_.red(result))
        else
            ::DatawireQuarkCore.print(::Quark.quark.test_.green(result))
        end

        nil
    end

    def _getClass()
        
        return "quark.test.Harness"

        nil
    end

    def _getField(name)
        
        if ((name) == ("pkg"))
            return (self).pkg
        end
        if ((name) == ("tests"))
            return (self).tests
        end
        if ((name) == ("filtered"))
            return (self).filtered
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("pkg"))
            (self).pkg = value
        end
        if ((name) == ("tests"))
            (self).tests = value
        end
        if ((name) == ("filtered"))
            (self).filtered = value
        end

        nil
    end

    def __init_fields__()
        

        self.pkg = nil
        self.tests = ::DatawireQuarkCore::List.new([])
        self.filtered = 0

        nil
    end


end
Harness.unlazy_statics

def self.run(pkg, filter)
    
    h = ::Quark.quark.test_.Harness.new(pkg)
    h.collect(filter)
    h.run()


    nil
end
end # module Test
end # module Quark
end # module Quark
