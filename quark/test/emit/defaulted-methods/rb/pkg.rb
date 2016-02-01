require "datawire-quark-core"




# BEGIN_BUILTIN

class QuarkClass < Object
    attr_accessor :id, :name, :parameters

    
    def initialize(id)
        
        self.__init_fields__
        (self).id = id
        Functions._class(self)

        nil
    end



    
    def getId()
        
        return @id

        nil
    end

    def getName()
        
        return @name

        nil
    end

    def getParameters()
        
        return @parameters

        nil
    end

    def construct(args)
        
        return Functions._construct(self.getId(), args)

        nil
    end

    def getFields()
        
        return Functions._fields((self).id)

        nil
    end

    def getField(name)
        
        fields = self.getFields()
        idx = 0
        while ((idx) < ((fields).size)) do
            if ((((fields)[idx]).name) == (name))
                return (fields)[idx]
            end
            idx = (idx) + (1)
        end
        return nil

        nil
    end

    def invoke(object, method, args)
        
        return Functions._invoke((self).id, object, method, args)

        nil
    end

    def _getClass()
        
        return "Class"

        nil
    end

    def _getField(name)
        
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("name"))
            return (self).name
        end
        if ((name) == ("parameters"))
            return (self).parameters
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("name"))
            (self).name = value
        end
        if ((name) == ("parameters"))
            (self).parameters = value
        end

        nil
    end

    def __init_fields__()
        

        self.id = nil
        self.name = nil
        self.parameters = nil

        nil
    end


end

# END_BUILTIN

# BEGIN_BUILTIN

class Field < Object
    attr_accessor :type, :name

    
    def initialize(type, name)
        
        self.__init_fields__
        (self).type = type
        (self).name = name

        nil
    end



    
    def _getClass()
        
        return "Field"

        nil
    end

    def _getField(name)
        
        if ((name) == ("type"))
            return (self).type
        end
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("type"))
            (self).type = value
        end
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        self.type = nil
        self.name = nil

        nil
    end


end

# END_BUILTIN

# BEGIN_BUILTIN

class Functions < Object
    

    

    
    def self.toJSON(obj)
        
        result = DatawireQuarkCore::JSONObject.new
        if ((obj) == (nil))
            result.setNull()
            return result
        end
        cls = QuarkClass.new(DatawireQuarkCore._getClass(obj))
        idx = 0
        if (((cls).name) == ("String"))
            result.setString(obj)
            return result
        end
        if (((((((cls).name) == ("byte")) || (((cls).name) == ("short"))) || (((cls).name) == ("int"))) || (((cls).name) == ("long"))) || (((cls).name) == ("float")))
            result.setNumber(obj)
            return result
        end
        if (((cls).name) == ("List"))
            result.setList()
            list = obj
            while ((idx) < ((list).size)) do
                result.setListItem(idx, Functions.toJSON((list)[idx]))
                idx = (idx) + (1)
            end
            return result
        end
        if (((cls).name) == ("Map"))
            result.setObject()
            map = obj
            return result
        end
        (result).setObjectItem(("$class"), (DatawireQuarkCore::JSONObject.new.setString((cls).id)))
        fields = cls.getFields()
        while ((idx) < ((fields).size)) do
            (result).setObjectItem((((fields)[idx]).name), (Functions.toJSON((obj)._getField(((fields)[idx]).name))))
            idx = (idx) + (1)
        end
        return result

        nil
    end


end

# END_BUILTIN

# BEGIN_BUILTIN

class Functions < Object
    

    

    
    def self.fromJSON(cls, json)
        
        if (((json) == (nil)) || (json.isNull()))
            return nil
        end
        idx = 0
        if (((cls).name) == ("List"))
            list = cls.construct(DatawireQuarkCore::List.new([]))
            while ((idx) < (json.size())) do
                (list) << (Functions.fromJSON(((cls).parameters)[0], json.getListItem(idx)))
                idx = (idx) + (1)
            end
            return list
        end
        fields = cls.getFields()
        result = cls.construct(DatawireQuarkCore::List.new([]))
        while ((idx) < ((fields).size)) do
            f = (fields)[idx]
            idx = (idx) + (1)
            if ((((f).type).name) == ("String"))
                s = (json).getObjectItem((f).name).getString()
                (result)._setField(((f).name), (s))
                next
            end
            if ((((f).type).name) == ("float"))
                flt = (json).getObjectItem((f).name).getNumber()
                (result)._setField(((f).name), (flt))
                next
            end
            if ((((f).type).name) == ("int"))
                if (!((json).getObjectItem((f).name).isNull()))
                    i = ((json).getObjectItem((f).name)).getNumber.round
                    (result)._setField(((f).name), (i))
                end
                next
            end
            if ((((f).type).name) == ("bool"))
                if (!((json).getObjectItem((f).name).isNull()))
                    b = (json).getObjectItem((f).name).getBool()
                    (result)._setField(((f).name), (b))
                end
                next
            end
            (result)._setField(((f).name), (Functions.fromJSON((f).type, (json).getObjectItem((f).name))))
        end
        return result

        nil
    end


end

# END_BUILTIN

# BEGIN_BUILTIN

class ResponseHolder < Object
    attr_accessor :response

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def onHTTPResponse(request, response)
        
        (self).response = response

        nil
    end

    def _getClass()
        
        return "ResponseHolder"

        nil
    end

    def _getField(name)
        
        if ((name) == ("response"))
            return (self).response
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("response"))
            (self).response = value
        end

        nil
    end

    def onHTTPInit(request)
        
        nil

        nil
    end

    def onHTTPError(request)
        
        nil

        nil
    end

    def onHTTPFinal(request)
        
        nil

        nil
    end

    def __init_fields__()
        

        self.response = nil

        nil
    end


end

# END_BUILTIN

# BEGIN_BUILTIN

class Service < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def getURL()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getRuntime()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def rpc(name, message)
        
        request = DatawireQuarkCore::HTTPRequest.new(self.getURL())
        json = Functions.toJSON(message)
        envelope = DatawireQuarkCore::JSONObject.new
        (envelope).setObjectItem(("$method"), (DatawireQuarkCore::JSONObject.new.setString(name)))
        (envelope).setObjectItem(("rpc"), (json))
        request.setBody(envelope.toString())
        request.setMethod("POST")
        rt = self.getRuntime()
        rh = ResponseHolder.new()
        rt.acquire()
        rt.request(request, rh)
        while (((rh).response) == (nil)) do
            rt.wait(3.14)
        end
        response = (rh).response
        rt.release()
        body = response.getBody()
        obj = DatawireQuarkCore::JSONObject.parse(body)
        return Functions.fromJSON(QuarkClass.new((obj).getObjectItem("$class").getString()), obj)

        nil
    end

    def __init_fields__()
        

        nil
    end


end

# END_BUILTIN

# BEGIN_BUILTIN

class Client < Object
    attr_accessor :runtime, :url

    
    def initialize(runtime, url)
        
        self.__init_fields__
        (self).runtime = runtime
        (self).url = url

        nil
    end



    
    def getRuntime()
        
        return (self).runtime

        nil
    end

    def getURL()
        
        return (self).url

        nil
    end

    def _getClass()
        
        return "Client"

        nil
    end

    def _getField(name)
        
        if ((name) == ("runtime"))
            return (self).runtime
        end
        if ((name) == ("url"))
            return (self).url
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("runtime"))
            (self).runtime = value
        end
        if ((name) == ("url"))
            (self).url = value
        end

        nil
    end

    def __init_fields__()
        

        self.runtime = nil
        self.url = nil

        nil
    end


end

# END_BUILTIN

# BEGIN_BUILTIN

class Server < Object
    attr_accessor :runtime, :impl

    
    def initialize(runtime, impl)
        
        self.__init_fields__
        (self).runtime = runtime
        (self).impl = impl

        nil
    end



    
    def getRuntime()
        
        return (self).runtime

        nil
    end

    def onHTTPRequest(request, response)
        
        envelope = DatawireQuarkCore::JSONObject.parse(request.getBody())
        method = (envelope).getObjectItem("$method").getString()
        json = (envelope).getObjectItem("rpc")
        argument = Functions.fromJSON(QuarkClass.new((json).getObjectItem("$class").getString()), json)
        result = (QuarkClass.new(DatawireQuarkCore._getClass(self)).getField("impl")).type.invoke(@impl, method, DatawireQuarkCore::List.new([argument]))
        response.setBody(Functions.toJSON(result).toString())
        response.setCode(200)
        self.getRuntime().respond(request, response)

        nil
    end

    def _getClass()
        
        return "Server<Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("runtime"))
            return (self).runtime
        end
        if ((name) == ("impl"))
            return (self).impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("runtime"))
            (self).runtime = value
        end
        if ((name) == ("impl"))
            (self).impl = value
        end

        nil
    end

    def onServletInit(url, runtime)
        
        nil

        nil
    end

    def onServletError(url, error)
        
        nil

        nil
    end

    def onServletEnd(url)
        
        nil

        nil
    end

    def __init_fields__()
        

        self.runtime = nil
        self.impl = nil

        nil
    end


end

# END_BUILTIN


class A < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def bar()
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class B < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def bar()
        
        DatawireQuarkCore.print("B bar")

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class C < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("C mixin for foo")

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class T1 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T1 foo")

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
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class T2 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T2 foo")

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
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class T3 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T3 foo")

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
        
        DatawireQuarkCore.print("B bar")

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class T4 < Object
    attr_accessor 

    
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
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def foo()
        
        DatawireQuarkCore.print("C mixin for foo")

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class T5 < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("T5 foo")

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
        
        DatawireQuarkCore.print("A bar")
        self.foo()

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class Functions < Object
    

    

    
    def self.main()
        
        t1 = T1.new()
        t1.foo()
        t1.bar()
        DatawireQuarkCore.print("===")
        t2 = T2.new()
        t2.foo()
        t2.bar()
        DatawireQuarkCore.print("===")
        t3 = T3.new()
        t3.foo()
        t3.bar()
        DatawireQuarkCore.print("===")
        t4 = T4.new()
        t4.foo()
        t4.bar()
        DatawireQuarkCore.print("===")
        t5 = T5.new()
        t5.foo()
        t5.bar()

        nil
    end


end

class Functions < Object
    

    

    
    def self._construct(className, args)
        
        if ((className) == ("Class"))
            return QuarkClass.new((args)[0])
        end
        if ((className) == ("Field"))
            return Field.new((args)[0], (args)[1])
        end
        if ((className) == ("List<Object>"))
            return DatawireQuarkCore::List.new()
        end
        if ((className) == ("List<Field>"))
            return DatawireQuarkCore::List.new()
        end
        if ((className) == ("List<Class>"))
            return DatawireQuarkCore::List.new()
        end
        if ((className) == ("List<String>"))
            return DatawireQuarkCore::List.new()
        end
        if ((className) == ("Map<Object,Object>"))
            return Hash.new()
        end
        if ((className) == ("Map<String,Object>"))
            return Hash.new()
        end
        if ((className) == ("ResponseHolder"))
            return ResponseHolder.new()
        end
        if ((className) == ("Client"))
            return Client.new((args)[0], (args)[1])
        end
        if ((className) == ("Server<Object>"))
            return Server.new((args)[0], (args)[1])
        end
        if ((className) == ("pkg.T1"))
            return T1.new()
        end
        if ((className) == ("pkg.T2"))
            return T2.new()
        end
        if ((className) == ("pkg.T3"))
            return T3.new()
        end
        if ((className) == ("pkg.T4"))
            return T4.new()
        end
        if ((className) == ("pkg.T5"))
            return T5.new()
        end
        return nil

        nil
    end


end

class Functions < Object
    

    

    
    def self._fields(className)
        
        if ((className) == ("Class"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "id"), Field.new(QuarkClass.new("String"), "name"), Field.new(QuarkClass.new("List<Class>"), "parameters")])
        end
        if ((className) == ("Field"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Class"), "type"), Field.new(QuarkClass.new("String"), "name")])
        end
        if ((className) == ("List<Object>"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("List<Field>"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("List<Class>"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("List<String>"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("Map<Object,Object>"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("Map<String,Object>"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("ResponseHolder"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("HTTPResponse"), "response")])
        end
        if ((className) == ("Client"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Runtime"), "runtime"), Field.new(QuarkClass.new("String"), "url")])
        end
        if ((className) == ("Server<Object>"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Runtime"), "runtime"), Field.new(QuarkClass.new("Object"), "impl")])
        end
        if ((className) == ("pkg.T1"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("pkg.T2"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("pkg.T3"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("pkg.T4"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("pkg.T5"))
            return DatawireQuarkCore::List.new([])
        end
        return nil

        nil
    end


end

class Functions < Object
    

    

    
    def self._class(cls)
        
        if (((cls).id) == ("Class"))
            (cls).name = "Class"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("Field"))
            (cls).name = "Field"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("List<Object>"))
            (cls).name = "List"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("Object")])
            return
        end
        if (((cls).id) == ("List<Field>"))
            (cls).name = "List"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("Field")])
            return
        end
        if (((cls).id) == ("List<Class>"))
            (cls).name = "List"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("Class")])
            return
        end
        if (((cls).id) == ("List<String>"))
            (cls).name = "List"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("String")])
            return
        end
        if (((cls).id) == ("Map<Object,Object>"))
            (cls).name = "Map"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("Object"), QuarkClass.new("Object")])
            return
        end
        if (((cls).id) == ("Map<String,Object>"))
            (cls).name = "Map"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("String"), QuarkClass.new("Object")])
            return
        end
        if (((cls).id) == ("ResponseHolder"))
            (cls).name = "ResponseHolder"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("Service"))
            (cls).name = "Service"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("Client"))
            (cls).name = "Client"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("Server<Object>"))
            (cls).name = "Server"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("Object")])
            return
        end
        if (((cls).id) == ("pkg.A"))
            (cls).name = "pkg.A"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("pkg.B"))
            (cls).name = "pkg.B"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("pkg.C"))
            (cls).name = "pkg.C"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("pkg.T1"))
            (cls).name = "pkg.T1"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("pkg.T2"))
            (cls).name = "pkg.T2"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("pkg.T3"))
            (cls).name = "pkg.T3"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("pkg.T4"))
            (cls).name = "pkg.T4"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("pkg.T5"))
            (cls).name = "pkg.T5"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        (cls).name = (cls).id

        nil
    end


end

class Functions < Object
    

    

    
    def self._invoke(className, object, method, args)
        
        if ((className) == ("Class"))
            if ((method) == ("getId"))
                tmp_0 = object
                return tmp_0.getId()
            end
            if ((method) == ("getName"))
                tmp_1 = object
                return tmp_1.getName()
            end
            if ((method) == ("getParameters"))
                tmp_2 = object
                return tmp_2.getParameters()
            end
            if ((method) == ("construct"))
                tmp_3 = object
                return tmp_3.construct((args)[0])
            end
            if ((method) == ("getFields"))
                tmp_4 = object
                return tmp_4.getFields()
            end
            if ((method) == ("getField"))
                tmp_5 = object
                return tmp_5.getField((args)[0])
            end
            if ((method) == ("invoke"))
                tmp_6 = object
                return tmp_6.invoke((args)[0], (args)[1], (args)[2])
            end
        end
        if ((className) == ("Field"))
            nil
        end
        if ((className) == ("List<Object>"))
            nil
        end
        if ((className) == ("List<Field>"))
            nil
        end
        if ((className) == ("List<Class>"))
            nil
        end
        if ((className) == ("List<String>"))
            nil
        end
        if ((className) == ("Map<Object,Object>"))
            nil
        end
        if ((className) == ("Map<String,Object>"))
            nil
        end
        if ((className) == ("ResponseHolder"))
            if ((method) == ("onHTTPResponse"))
                tmp_7 = object
                tmp_7.onHTTPResponse((args)[0], (args)[1])
                return nil
            end
        end
        if ((className) == ("Service"))
            if ((method) == ("getURL"))
                tmp_8 = object
                return tmp_8.getURL()
            end
            if ((method) == ("getRuntime"))
                tmp_9 = object
                return tmp_9.getRuntime()
            end
            if ((method) == ("rpc"))
                tmp_10 = object
                return tmp_10.rpc((args)[0], (args)[1])
            end
        end
        if ((className) == ("Client"))
            if ((method) == ("getRuntime"))
                tmp_11 = object
                return tmp_11.getRuntime()
            end
            if ((method) == ("getURL"))
                tmp_12 = object
                return tmp_12.getURL()
            end
        end
        if ((className) == ("Server<Object>"))
            if ((method) == ("getRuntime"))
                tmp_13 = object
                return tmp_13.getRuntime()
            end
            if ((method) == ("onHTTPRequest"))
                tmp_14 = object
                tmp_14.onHTTPRequest((args)[0], (args)[1])
                return nil
            end
        end
        if ((className) == ("pkg.A"))
            if ((method) == ("foo"))
                tmp_15 = object
                tmp_15.foo()
                return nil
            end
            if ((method) == ("bar"))
                tmp_16 = object
                tmp_16.bar()
                return nil
            end
        end
        if ((className) == ("pkg.B"))
            if ((method) == ("bar"))
                tmp_17 = object
                tmp_17.bar()
                return nil
            end
        end
        if ((className) == ("pkg.C"))
            if ((method) == ("foo"))
                tmp_18 = object
                tmp_18.foo()
                return nil
            end
        end
        if ((className) == ("pkg.T1"))
            if ((method) == ("foo"))
                tmp_19 = object
                tmp_19.foo()
                return nil
            end
        end
        if ((className) == ("pkg.T2"))
            if ((method) == ("foo"))
                tmp_20 = object
                tmp_20.foo()
                return nil
            end
        end
        if ((className) == ("pkg.T3"))
            if ((method) == ("foo"))
                tmp_21 = object
                tmp_21.foo()
                return nil
            end
        end
        if ((className) == ("pkg.T4"))
            nil
        end
        if ((className) == ("pkg.T5"))
            if ((method) == ("foo"))
                tmp_22 = object
                tmp_22.foo()
                return nil
            end
        end
        return nil

        nil
    end


end
