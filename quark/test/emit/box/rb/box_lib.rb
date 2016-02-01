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

class Box < Object
    attr_accessor :contents

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def set(contents)
        
        (self).contents = contents

        nil
    end

    def get()
        
        return (self).contents

        nil
    end

    def _getClass()
        
        return "Box<Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("contents"))
            return (self).contents
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("contents"))
            (self).contents = value
        end

        nil
    end

    def __init_fields__()
        

        self.contents = nil

        nil
    end


end

class Crate < Object
    attr_accessor :box, :ibox

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def set(stuff)
        
        (self).box.set(stuff)

        nil
    end

    def get()
        
        return (self).box.get()

        nil
    end

    def _getClass()
        
        return "Crate<Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("box"))
            return (self).box
        end
        if ((name) == ("ibox"))
            return (self).ibox
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("box"))
            (self).box = value
        end
        if ((name) == ("ibox"))
            (self).ibox = value
        end

        nil
    end

    def __init_fields__()
        

        self.box = Box.new()
        self.ibox = Box.new()

        nil
    end


end

class Sack < Object
    attr_accessor :ints

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def _getClass()
        
        return "Sack"

        nil
    end

    def _getField(name)
        
        if ((name) == ("ints"))
            return (self).ints
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("ints"))
            (self).ints = value
        end

        nil
    end

    def __init_fields__()
        

        self.ints = Box.new()

        nil
    end


end

class Functions < Object
    

    

    
    def self.test1()
        
        ibox = Box.new()
        ibox.set(3)
        three = ibox.get()
        DatawireQuarkCore.print(three)
        (ibox).contents = 4
        DatawireQuarkCore.print((ibox).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test2()
        
        sbox = Box.new()
        sbox.set("hello")
        hello = sbox.get()
        DatawireQuarkCore.print(hello)
        (sbox).contents = "world"
        DatawireQuarkCore.print((sbox).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test3()
        
        icrate = Crate.new()
        icrate.set(3)
        DatawireQuarkCore.print(icrate.get())
        icrate.set(4)
        DatawireQuarkCore.print(((icrate).box).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test4()
        
        s = Sack.new()
        DatawireQuarkCore.print((s).ints.get())
        DatawireQuarkCore.print(((s).ints).contents)
        (s).ints.set(3)
        DatawireQuarkCore.print((s).ints.get())
        DatawireQuarkCore.print(((s).ints).contents)
        ((s).ints).contents = 4
        DatawireQuarkCore.print((s).ints.get())
        DatawireQuarkCore.print(((s).ints).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test5()
        
        scrate = Crate.new()
        DatawireQuarkCore.print(scrate.get())
        DatawireQuarkCore.print(((scrate).box).contents)
        scrate.set("hello")
        DatawireQuarkCore.print(scrate.get())
        DatawireQuarkCore.print(((scrate).box).contents)
        ((scrate).ibox).contents = 3
        DatawireQuarkCore.print(((scrate).ibox).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test6()
        
        box = Box.new()
        box.set(Box.new())
        box.get().set(3)
        DatawireQuarkCore.print(box.get().get())
        DatawireQuarkCore.print(((box).contents).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.main()
        
        DatawireQuarkCore.print("test1:\n--")
        Functions.test1()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test2:\n--")
        Functions.test2()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test3:\n--")
        Functions.test3()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test4:\n--")
        Functions.test4()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test5:\n--")
        Functions.test5()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test6:\n--")
        Functions.test6()

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
        if ((className) == ("Box<Object>"))
            return Box.new()
        end
        if ((className) == ("Box<int>"))
            return Box.new()
        end
        if ((className) == ("Box<String>"))
            return Box.new()
        end
        if ((className) == ("Box<Box<int>>"))
            return Box.new()
        end
        if ((className) == ("Crate<int>"))
            return Crate.new()
        end
        if ((className) == ("Crate<String>"))
            return Crate.new()
        end
        if ((className) == ("Sack"))
            return Sack.new()
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
        if ((className) == ("Box<Object>"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Object"), "contents")])
        end
        if ((className) == ("Box<int>"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Object"), "contents")])
        end
        if ((className) == ("Box<String>"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Object"), "contents")])
        end
        if ((className) == ("Box<Box<int>>"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Object"), "contents")])
        end
        if ((className) == ("Crate<int>"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Box<Object>"), "box"), Field.new(QuarkClass.new("Box<int>"), "ibox")])
        end
        if ((className) == ("Crate<String>"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Box<Object>"), "box"), Field.new(QuarkClass.new("Box<int>"), "ibox")])
        end
        if ((className) == ("Sack"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("Box<int>"), "ints")])
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
        if (((cls).id) == ("Box<Object>"))
            (cls).name = "Box"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("Object")])
            return
        end
        if (((cls).id) == ("Box<int>"))
            (cls).name = "Box"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("int")])
            return
        end
        if (((cls).id) == ("Box<String>"))
            (cls).name = "Box"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("String")])
            return
        end
        if (((cls).id) == ("Box<Box<int>>"))
            (cls).name = "Box"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("Box<int>")])
            return
        end
        if (((cls).id) == ("Crate<int>"))
            (cls).name = "Crate"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("int")])
            return
        end
        if (((cls).id) == ("Crate<String>"))
            (cls).name = "Crate"
            (cls).parameters = DatawireQuarkCore::List.new([QuarkClass.new("String")])
            return
        end
        if (((cls).id) == ("Sack"))
            (cls).name = "Sack"
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
        if ((className) == ("Box<Object>"))
            if ((method) == ("set"))
                tmp_15 = object
                tmp_15.set((args)[0])
                return nil
            end
            if ((method) == ("get"))
                tmp_16 = object
                return tmp_16.get()
            end
        end
        if ((className) == ("Box<int>"))
            if ((method) == ("set"))
                tmp_17 = object
                tmp_17.set((args)[0])
                return nil
            end
            if ((method) == ("get"))
                tmp_18 = object
                return tmp_18.get()
            end
        end
        if ((className) == ("Box<String>"))
            if ((method) == ("set"))
                tmp_19 = object
                tmp_19.set((args)[0])
                return nil
            end
            if ((method) == ("get"))
                tmp_20 = object
                return tmp_20.get()
            end
        end
        if ((className) == ("Box<Box<int>>"))
            if ((method) == ("set"))
                tmp_21 = object
                tmp_21.set((args)[0])
                return nil
            end
            if ((method) == ("get"))
                tmp_22 = object
                return tmp_22.get()
            end
        end
        if ((className) == ("Crate<int>"))
            if ((method) == ("set"))
                tmp_23 = object
                tmp_23.set((args)[0])
                return nil
            end
            if ((method) == ("get"))
                tmp_24 = object
                return tmp_24.get()
            end
        end
        if ((className) == ("Crate<String>"))
            if ((method) == ("set"))
                tmp_25 = object
                tmp_25.set((args)[0])
                return nil
            end
            if ((method) == ("get"))
                tmp_26 = object
                return tmp_26.get()
            end
        end
        if ((className) == ("Sack"))
            nil
        end
        return nil

        nil
    end


end
