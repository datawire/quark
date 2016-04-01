module Quark
require "quark"
def self.json_coersion; JsonCoersion; end
module JsonCoersion
require_relative 'json_coersion' # 0 () ()

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    json = ::DatawireQuarkCore::JSONObject.new
    (json).setObjectItem(("string"), (::DatawireQuarkCore::JSONObject.new.setString("this is a string")))
    (json).setObjectItem(("number"), (::DatawireQuarkCore::JSONObject.new.setNumber(3.14159)))
    (json).setObjectItem(("boolean"), (::DatawireQuarkCore::JSONObject.new.setBool(true)))
    encoded = json.toString()
    ::DatawireQuarkCore.print(encoded)
    dec = ::DatawireQuarkCore::JSONObject.parse(encoded)
    string = (dec).getObjectItem("string").getString()
    number = (dec).getObjectItem("number").getNumber()
    boolean_ = (dec).getObjectItem("boolean").getBool()
    ::DatawireQuarkCore.print(string)
    ::DatawireQuarkCore.print(number)
    ::DatawireQuarkCore.print((boolean_).to_s)


    nil
end

if __FILE__ == $0 then ::Quark.json_coersion.call_main() end

end # module JsonCoersion
end # module Quark
