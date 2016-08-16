require("callable_test")

module CallableFFI

  class Foo
    def foo(x)
      2*x
    end
  end

  def check()
    return 6 == Quark::CallableTest::smug(lambda {|x| 2*x}, 3) &&
           6 == Quark::CallableTest::smug(Proc.new {|x| 2*x}, 3) &&
           6 == Quark::CallableTest::smug(Foo.new.method(:foo), 3)
  end

  module_function :check

end
