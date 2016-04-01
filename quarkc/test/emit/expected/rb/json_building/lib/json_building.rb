module Quark
require "quark"
def self.json_building; JsonBuilding; end
module JsonBuilding
require_relative 'json_building' # 0 () ()

def self.test_building()
    
    ::DatawireQuarkCore.print(::DatawireQuarkCore::JSONObject.new.setObjectItem("sub-object", ::DatawireQuarkCore::JSONObject.new.setObjectItem("astring", ::DatawireQuarkCore::JSONObject.new.setString("string value")).setObjectItem("aint", ::DatawireQuarkCore::JSONObject.new.setNumber(9)).setObjectItem("atrue", ::DatawireQuarkCore::JSONObject.new.setBool(true)).setObjectItem("afalse", ::DatawireQuarkCore::JSONObject.new.setBool(false)).setObjectItem("anull", ::DatawireQuarkCore::JSONObject.new.setNull())).setObjectItem("sub-list", ::DatawireQuarkCore::JSONObject.new.setListItem(0, ::DatawireQuarkCore::JSONObject.new.setString("after this string expect 42 and null")).setListItem(1, ::DatawireQuarkCore::JSONObject.new.setNumber(42)).setListItem(2, ::DatawireQuarkCore::JSONObject.new.setNull())).setObjectItem("sub-string", ::DatawireQuarkCore::JSONObject.new.setString("a string")).toString())


    nil
end

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.json_building.test_building()


    nil
end

if __FILE__ == $0 then ::Quark.json_building.call_main() end

end # module JsonBuilding
end # module Quark
