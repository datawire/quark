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

class String_test < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def check(actual, expected, op, q)
        
        if ((actual) == (expected))
            DatawireQuarkCore.print(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q))
        else
            DatawireQuarkCore.print(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q))
        end

        nil
    end

    def _getClass()
        
        return "string_test"

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
def string_test()
    return String_test

    nil
end

class Test_size < string_test
    attr_accessor :what

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def does(expected)
        
        actual = (@what).size
        op = (("'") + (@what)) + ("'.size()")
        self.check((actual).to_s, (expected).to_s, op, "")
        return self

        nil
    end

    def _getClass()
        
        return "test_size"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil

        nil
    end


end
def test_size()
    return Test_size

    nil
end

class Test_startsWith < string_test
    attr_accessor :what, :_that

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(_that)
        
        (self)._that = _that
        return self

        nil
    end

    def does(expected)
        
        self.check((((self).what).start_with?((self)._that)).to_s, (expected).to_s, (((("'") + ((self).what)) + ("'.startsWith('")) + ((self)._that)) + ("'"), "")
        return self

        nil
    end

    def _getClass()
        
        return "test_startsWith"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("_that"))
            return (self)._that
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("_that"))
            (self)._that = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self._that = nil

        nil
    end


end
def test_startsWith()
    return Test_startsWith

    nil
end

class Test_endsWith < string_test
    attr_accessor :what, :_that

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(_that)
        
        (self)._that = _that
        return self

        nil
    end

    def does(expected)
        
        self.check((((self).what).end_with?((self)._that)).to_s, (expected).to_s, (((("'") + ((self).what)) + ("'.endsWith('")) + ((self)._that)) + ("'"), "")
        return self

        nil
    end

    def _getClass()
        
        return "test_endsWith"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("_that"))
            return (self)._that
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("_that"))
            (self)._that = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self._that = nil

        nil
    end


end
def test_endsWith()
    return Test_endsWith

    nil
end

class Test_find < string_test
    attr_accessor :what, :_that

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(_that)
        
        (self)._that = _that
        return self

        nil
    end

    def does(expected)
        
        self.check(((((self).what).index((self)._that) || -1)).to_s, (expected).to_s, (((("'") + ((self).what)) + ("'.find('")) + ((self)._that)) + ("'"), "")
        return self

        nil
    end

    def _getClass()
        
        return "test_find"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("_that"))
            return (self)._that
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("_that"))
            (self)._that = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self._that = nil

        nil
    end


end
def test_find()
    return Test_find

    nil
end

class Test_substring < string_test
    attr_accessor :what, :start, :end_

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(start, end_)
        
        (self).start = start
        (self).end_ = end_
        return self

        nil
    end

    def does(expected)
        
        self.check(((self).what)[((self).start)...((self).end_)], expected, (((((("'") + ((self).what)) + ("'.substring(")) + (((self).start).to_s)) + (", ")) + (((self).end_).to_s)) + (")"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_substring"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("start"))
            return (self).start
        end
        if ((name) == ("end"))
            return (self).end_
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("start"))
            (self).start = value
        end
        if ((name) == ("end"))
            (self).end_ = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.start = nil
        self.end_ = nil

        nil
    end


end
def test_substring()
    return Test_substring

    nil
end

class Test_replace < string_test
    attr_accessor :what, :start, :end_

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that(start, end_)
        
        (self).start = start
        (self).end_ = end_
        return self

        nil
    end

    def does(expected)
        
        self.check(((self).what).sub(((self).start), ((self).end_)), expected, (((((("'") + ((self).what)) + ("'.replace('")) + ((self).start)) + ("', '")) + ((self).end_)) + ("')"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_replace"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("start"))
            return (self).start
        end
        if ((name) == ("end"))
            return (self).end_
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("start"))
            (self).start = value
        end
        if ((name) == ("end"))
            (self).end_ = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.start = nil
        self.end_ = nil

        nil
    end


end
def test_replace()
    return Test_replace

    nil
end

class Test_join < string_test
    attr_accessor :what, :parts, :strparts, :sep

    
    def initialize(what)
        
        super()
        (self).what = what

        nil
    end



    
    def that()
        
        (self).parts = DatawireQuarkCore::List.new()
        (self).strparts = ""
        (self).sep = ""
        return self

        nil
    end

    def a(part)
        
        ((self).parts) << (part)
        (self).strparts = (((((self).strparts) + ((self).sep)) + ("'")) + (part)) + ("'")
        (self).sep = ", "
        return self

        nil
    end

    def does(expected)
        
        self.check(((self).parts).join((self).what), expected, (((("'") + ((self).what)) + ("'.join([")) + ((self).strparts)) + ("])"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_join"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("parts"))
            return (self).parts
        end
        if ((name) == ("strparts"))
            return (self).strparts
        end
        if ((name) == ("sep"))
            return (self).sep
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("parts"))
            (self).parts = value
        end
        if ((name) == ("strparts"))
            (self).strparts = value
        end
        if ((name) == ("sep"))
            (self).sep = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.parts = nil
        self.strparts = nil
        self.sep = nil

        nil
    end


end
def test_join()
    return Test_join

    nil
end

class Test_split < string_test
    attr_accessor :what, :sep, :altsep

    
    def initialize(sep, altsep)
        
        super()
        (self).sep = sep
        (self).altsep = altsep

        nil
    end



    
    def that(what)
        
        (self).what = what
        return self

        nil
    end

    def does(expected)
        
        parts = DatawireQuarkCore.split((self).what, (self).sep)
        actual = (parts).join((self).altsep)
        self.check(actual, expected, (((((("'") + ((self).altsep)) + ("'.join('")) + ((self).what)) + ("'.split('")) + ((self).sep)) + ("'))"), "'")
        return self

        nil
    end

    def _getClass()
        
        return "test_split"

        nil
    end

    def _getField(name)
        
        if ((name) == ("what"))
            return (self).what
        end
        if ((name) == ("sep"))
            return (self).sep
        end
        if ((name) == ("altsep"))
            return (self).altsep
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("what"))
            (self).what = value
        end
        if ((name) == ("sep"))
            (self).sep = value
        end
        if ((name) == ("altsep"))
            (self).altsep = value
        end

        nil
    end

    def __init_fields__()
        

        self.what = nil
        self.sep = nil
        self.altsep = nil

        nil
    end


end
def test_split()
    return Test_split

    nil
end

class Functions < Object
    

    

    
    def self.main()
        
        test_size.new("").does(0)
        test_size.new("1").does(1)
        test_size.new("22").does(2)
        test_size.new("333").does(3)
        test_size.new("4444").does(4)
        test_startsWith.new("abcd").that("abc").does(true).that("bc").does(false).that("").does(true).that("abcde").does(false)
        test_endsWith.new("abcd").that("bcd").does(true).that("bc").does(false).that("").does(true).that("xabcd").does(false)
        test_find.new("abcd").that("bcd").does(1).that("bc").does(1).that("").does(0).that("xabcd").does(-(1)).that("abcd").does(0).that("abc").does(0).that("a").does(0).that("x").does(-(1))
        test_substring.new("abcd").that(0, 0).does("").that(0, 4).does("abcd").that(0, 1).does("a").that(1, 2).does("b").that(2, 4).does("cd").that(3, 4).does("d").that(1, 1).does("").that(2, 2).does("")
        test_replace.new("abcd").that("ab", "AB").does("ABcd").that("b", "bb").does("abbcd").that("ab", "ab").does("abcd").that("", "EE").does("EEabcd").that("c", "EE").does("abEEd").that("d", "EE").does("abcEE").that("x", "EE").does("abcd")
        test_join.new("").that().does("").that().a("a").does("a").that().a("a").a("b").does("ab").that().a("a").a("b").a("c").does("abc")
        test_join.new(",").that().does("").that().a("a").does("a").that().a("a").a("b").does("a,b").that().a("a").a("b").a("c").does("a,b,c")
        test_split.new(",", "|").that("").does("").that("a").does("a").that(",").does("|").that("a,").does("a|").that(",a").does("|a").that("a,b").does("a|b").that("a,,b").does("a||b").that("a,b,c").does("a|b|c")
        test_split.new("foo", "|").that("").does("").that("a").does("a").that("foo").does("|").that("afoo").does("a|").that("fooa").does("|a").that("afoob").does("a|b").that("afoofoob").does("a||b").that("afoobfooc").does("a|b|c")

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
        if ((className) == ("string_test"))
            return string_test.new()
        end
        if ((className) == ("test_size"))
            return test_size.new((args)[0])
        end
        if ((className) == ("test_startsWith"))
            return test_startsWith.new((args)[0])
        end
        if ((className) == ("test_endsWith"))
            return test_endsWith.new((args)[0])
        end
        if ((className) == ("test_find"))
            return test_find.new((args)[0])
        end
        if ((className) == ("test_substring"))
            return test_substring.new((args)[0])
        end
        if ((className) == ("test_replace"))
            return test_replace.new((args)[0])
        end
        if ((className) == ("test_join"))
            return test_join.new((args)[0])
        end
        if ((className) == ("test_split"))
            return test_split.new((args)[0], (args)[1])
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
        if ((className) == ("string_test"))
            return DatawireQuarkCore::List.new([])
        end
        if ((className) == ("test_size"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what")])
        end
        if ((className) == ("test_startsWith"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what"), Field.new(QuarkClass.new("String"), "_that")])
        end
        if ((className) == ("test_endsWith"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what"), Field.new(QuarkClass.new("String"), "_that")])
        end
        if ((className) == ("test_find"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what"), Field.new(QuarkClass.new("String"), "_that")])
        end
        if ((className) == ("test_substring"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what"), Field.new(QuarkClass.new("int"), "start"), Field.new(QuarkClass.new("int"), "end")])
        end
        if ((className) == ("test_replace"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what"), Field.new(QuarkClass.new("String"), "start"), Field.new(QuarkClass.new("String"), "end")])
        end
        if ((className) == ("test_join"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what"), Field.new(QuarkClass.new("List<String>"), "parts"), Field.new(QuarkClass.new("String"), "strparts"), Field.new(QuarkClass.new("String"), "sep")])
        end
        if ((className) == ("test_split"))
            return DatawireQuarkCore::List.new([Field.new(QuarkClass.new("String"), "what"), Field.new(QuarkClass.new("String"), "sep"), Field.new(QuarkClass.new("String"), "altsep")])
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
        if (((cls).id) == ("string_test"))
            (cls).name = "string_test"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_size"))
            (cls).name = "test_size"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_startsWith"))
            (cls).name = "test_startsWith"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_endsWith"))
            (cls).name = "test_endsWith"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_find"))
            (cls).name = "test_find"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_substring"))
            (cls).name = "test_substring"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_replace"))
            (cls).name = "test_replace"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_join"))
            (cls).name = "test_join"
            (cls).parameters = DatawireQuarkCore::List.new([])
            return
        end
        if (((cls).id) == ("test_split"))
            (cls).name = "test_split"
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
        if ((className) == ("string_test"))
            if ((method) == ("check"))
                tmp_15 = object
                tmp_15.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_size"))
            if ((method) == ("does"))
                tmp_16 = object
                return tmp_16.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_17 = object
                tmp_17.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_startsWith"))
            if ((method) == ("that"))
                tmp_18 = object
                return tmp_18.that((args)[0])
            end
            if ((method) == ("does"))
                tmp_19 = object
                return tmp_19.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_20 = object
                tmp_20.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_endsWith"))
            if ((method) == ("that"))
                tmp_21 = object
                return tmp_21.that((args)[0])
            end
            if ((method) == ("does"))
                tmp_22 = object
                return tmp_22.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_23 = object
                tmp_23.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_find"))
            if ((method) == ("that"))
                tmp_24 = object
                return tmp_24.that((args)[0])
            end
            if ((method) == ("does"))
                tmp_25 = object
                return tmp_25.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_26 = object
                tmp_26.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_substring"))
            if ((method) == ("that"))
                tmp_27 = object
                return tmp_27.that((args)[0], (args)[1])
            end
            if ((method) == ("does"))
                tmp_28 = object
                return tmp_28.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_29 = object
                tmp_29.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_replace"))
            if ((method) == ("that"))
                tmp_30 = object
                return tmp_30.that((args)[0], (args)[1])
            end
            if ((method) == ("does"))
                tmp_31 = object
                return tmp_31.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_32 = object
                tmp_32.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_join"))
            if ((method) == ("that"))
                tmp_33 = object
                return tmp_33.that()
            end
            if ((method) == ("a"))
                tmp_34 = object
                return tmp_34.a((args)[0])
            end
            if ((method) == ("does"))
                tmp_35 = object
                return tmp_35.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_36 = object
                tmp_36.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        if ((className) == ("test_split"))
            if ((method) == ("that"))
                tmp_37 = object
                return tmp_37.that((args)[0])
            end
            if ((method) == ("does"))
                tmp_38 = object
                return tmp_38.does((args)[0])
            end
            if ((method) == ("check"))
                tmp_39 = object
                tmp_39.check((args)[0], (args)[1], (args)[2], (args)[3])
                return nil
            end
        end
        return nil

        nil
    end


end
