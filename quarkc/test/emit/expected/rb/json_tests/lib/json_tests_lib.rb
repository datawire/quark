module Quark
def self.json_tests_lib; MODULE_json_tests_lib; end
module MODULE_json_tests_lib
def self.test_roundtrip()
    
    DatawireQuarkCore.print(DatawireQuarkCore::JSONObject.parse(DatawireQuarkCore::JSONObject.new.setObject().toString()).toString())
    DatawireQuarkCore.print(DatawireQuarkCore::JSONObject.parse(DatawireQuarkCore::JSONObject.new.setList().toString()).toString())
    DatawireQuarkCore.print(DatawireQuarkCore::JSONObject.parse(DatawireQuarkCore::JSONObject.new.setString("").toString()).toString())
    DatawireQuarkCore.print(DatawireQuarkCore::JSONObject.parse(DatawireQuarkCore::JSONObject.new.setBool(false).toString()).toString())
    DatawireQuarkCore.print(DatawireQuarkCore::JSONObject.parse(DatawireQuarkCore::JSONObject.new.setBool(true).toString()).toString())
    DatawireQuarkCore.print(DatawireQuarkCore::JSONObject.parse(DatawireQuarkCore::JSONObject.new.setNull().toString()).toString())


    nil
end

def self.test_iterate_list()
    
    l = DatawireQuarkCore::JSONObject.parse("[1.2,2.3,3.4,4.5,5.6,6.7,7.8]")
    i = 0
    item = l.getListItem(i)
    while ((item) != (l.undefined())) do
        DatawireQuarkCore.print(((("l[") + ((i).to_s)) + ("] = ")) + ((item.getNumber()).to_s))
        i = (i) + (1)
        item = l.getListItem(i)
        if ((i) > (10))
            DatawireQuarkCore.print("Error!")
            return
        end
    end


    nil
end

def self.test_iterate_list_directory()
    
    message = DatawireQuarkCore::JSONObject.new.setObjectItem("endpoints", DatawireQuarkCore::JSONObject.new.setListItem(0, DatawireQuarkCore::JSONObject.new.setString("endpoint0")).setListItem(1, DatawireQuarkCore::JSONObject.new.setString("endpoint1")).setListItem(2, DatawireQuarkCore::JSONObject.new.setString("endpoint2"))).toString()
    DatawireQuarkCore.print(message)
    jobj = DatawireQuarkCore::JSONObject.parse(message)
    endpoints = (jobj).getObjectItem("endpoints")
    i = 0
    endpoint = endpoints.getListItem(i)
    while ((endpoint) != (endpoints.undefined())) do
        ep = endpoint.getString()
        DatawireQuarkCore.print(ep)
        i = (i) + (1)
        endpoint = endpoints.getListItem(i)
    end


    nil
end

def self.iterables()
    
    jobj = DatawireQuarkCore::JSONObject.new.setObjectItem("sub-object", DatawireQuarkCore::JSONObject.new.setObjectItem("astring", DatawireQuarkCore::JSONObject.new.setString("string value")).setObjectItem("aint", DatawireQuarkCore::JSONObject.new.setNumber(9)).setObjectItem("atrue", DatawireQuarkCore::JSONObject.new.setBool(true)).setObjectItem("afalse", DatawireQuarkCore::JSONObject.new.setBool(false)).setObjectItem("anull", DatawireQuarkCore::JSONObject.new.setNull())).setObjectItem("sub-list", DatawireQuarkCore::JSONObject.new.setListItem(0, DatawireQuarkCore::JSONObject.new.setString("after this string expect 42 and null")).setListItem(1, DatawireQuarkCore::JSONObject.new.setNumber(42)).setListItem(2, DatawireQuarkCore::JSONObject.new.setNull())).setObjectItem("sub-string", DatawireQuarkCore::JSONObject.new.setString("a string"))
    keys = jobj.keys()
    (keys).sort!
    DatawireQuarkCore.print(keys)
    keys = (jobj).getObjectItem("sub-object").keys()
    (keys).sort!
    DatawireQuarkCore.print(keys)


    nil
end

def self.main()
    
    ::Quark.json_tests_lib.test_roundtrip()
    ::Quark.json_tests_lib.test_iterate_list()
    ::Quark.json_tests_lib.test_iterate_list_directory()
    ::Quark.json_tests_lib.iterables()


    nil
end
end # module MODULE_json_tests_lib
end # module Quark
