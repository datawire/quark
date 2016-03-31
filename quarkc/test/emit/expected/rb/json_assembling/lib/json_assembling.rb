module Quark
require "quark"
def self.json_assembling; JsonAssembling; end
module JsonAssembling
require_relative 'json_assembling' # 0 () ()

def self.test_assembling()
    
    innerObject = ::DatawireQuarkCore::JSONObject.new
    innerObject.setObjectItem("astring", ::DatawireQuarkCore::JSONObject.new.setString("string value"))
    innerObject.setObjectItem("aint", ::DatawireQuarkCore::JSONObject.new.setNumber(9))
    innerObject.setObjectItem("atrue", ::DatawireQuarkCore::JSONObject.new.setBool(true))
    innerObject.setObjectItem("afalse", ::DatawireQuarkCore::JSONObject.new.setBool(false))
    innerObject.setObjectItem("anull", ::DatawireQuarkCore::JSONObject.new.setNull())
    innerList = ::DatawireQuarkCore::JSONObject.new
    innerList.setListItem(0, ::DatawireQuarkCore::JSONObject.new.setString("after this string expect 42 and null"))
    innerList.setListItem(1, ::DatawireQuarkCore::JSONObject.new.setNumber(42))
    innerList.setListItem(2, ::DatawireQuarkCore::JSONObject.new.setNull())
    outer = ::DatawireQuarkCore::JSONObject.new
    outer.setObjectItem("sub-object", innerObject)
    outer.setObjectItem("sub-list", innerList)
    outer.setObjectItem("sub-string", ::DatawireQuarkCore::JSONObject.new.setString("a string"))
    ::DatawireQuarkCore.print(outer.toString())


    nil
end

def self.main()
    
    ::Quark.json_assembling.test_assembling()


    nil
end

if __FILE__ == $0
    ::Quark.json_assembling.main()
end

end # module JsonAssembling
end # module Quark
