require "datawire-quark-core"
require "../builtin"
require "../slack"
require "../slack"
require "../pkg"


class Slack_event_SlackEvent_load_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "load", DatawireQuarkCore::List.new(["slack.Client", "builtin.JSONObject"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.load((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_SlackEvent_load_Method()
    return Slack_event_SlackEvent_load_Method

    nil
end

class Slack_event_SlackEvent_dispatch_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "dispatch", DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.dispatch((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_SlackEvent_dispatch_Method()
    return Slack_event_SlackEvent_dispatch_Method

    nil
end

class Slack_event_SlackEvent < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.SlackEvent")
        (self).name = "slack.event.SlackEvent"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "type"), builtin.reflect.Field.new("slack.User", "user"), builtin.reflect.Field.new("slack.Channel", "channel"), builtin.reflect.Field.new("builtin.String", "timestamp")])
        (self).methods = DatawireQuarkCore::List.new([slack_event_SlackEvent_load_Method.new(), slack_event_SlackEvent_dispatch_Method.new()])

        nil
    end



    
    def construct(args)
        
        return slack.event.SlackEvent.new()

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_SlackEvent()
    return Slack_event_SlackEvent

    nil
end


class Slack_event_SlackError_load_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "load", DatawireQuarkCore::List.new(["slack.Client", "builtin.JSONObject"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.load((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_SlackError_load_Method()
    return Slack_event_SlackError_load_Method

    nil
end

class Slack_event_SlackError_dispatch_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "dispatch", DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.dispatch((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_SlackError_dispatch_Method()
    return Slack_event_SlackError_dispatch_Method

    nil
end

class Slack_event_SlackError < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.SlackError")
        (self).name = "slack.event.SlackError"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "type"), builtin.reflect.Field.new("slack.User", "user"), builtin.reflect.Field.new("slack.Channel", "channel"), builtin.reflect.Field.new("builtin.String", "timestamp"), builtin.reflect.Field.new("builtin.int", "code"), builtin.reflect.Field.new("builtin.String", "text")])
        (self).methods = DatawireQuarkCore::List.new([slack_event_SlackError_load_Method.new(), slack_event_SlackError_dispatch_Method.new()])

        nil
    end



    
    def construct(args)
        
        return slack.event.SlackError.new()

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_SlackError()
    return Slack_event_SlackError

    nil
end


class Slack_event_Hello_dispatch_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "dispatch", DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.dispatch((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_Hello_dispatch_Method()
    return Slack_event_Hello_dispatch_Method

    nil
end

class Slack_event_Hello_load_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "load", DatawireQuarkCore::List.new(["slack.Client", "builtin.JSONObject"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.load((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_Hello_load_Method()
    return Slack_event_Hello_load_Method

    nil
end

class Slack_event_Hello < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.Hello")
        (self).name = "slack.event.Hello"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "type"), builtin.reflect.Field.new("slack.User", "user"), builtin.reflect.Field.new("slack.Channel", "channel"), builtin.reflect.Field.new("builtin.String", "timestamp")])
        (self).methods = DatawireQuarkCore::List.new([slack_event_Hello_dispatch_Method.new(), slack_event_Hello_load_Method.new()])

        nil
    end



    
    def construct(args)
        
        return slack.event.Hello.new()

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_Hello()
    return Slack_event_Hello

    nil
end


class Slack_event_Message_load_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "load", DatawireQuarkCore::List.new(["slack.Client", "builtin.JSONObject"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.load((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_Message_load_Method()
    return Slack_event_Message_load_Method

    nil
end

class Slack_event_Message_dispatch_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "dispatch", DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.dispatch((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_Message_dispatch_Method()
    return Slack_event_Message_dispatch_Method

    nil
end

class Slack_event_Message < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.Message")
        (self).name = "slack.event.Message"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "type"), builtin.reflect.Field.new("slack.User", "user"), builtin.reflect.Field.new("slack.Channel", "channel"), builtin.reflect.Field.new("builtin.String", "timestamp"), builtin.reflect.Field.new("builtin.String", "subtype"), builtin.reflect.Field.new("builtin.bool", "hidden"), builtin.reflect.Field.new("builtin.String", "text"), builtin.reflect.Field.new("slack.event.Edited", "edited")])
        (self).methods = DatawireQuarkCore::List.new([slack_event_Message_load_Method.new(), slack_event_Message_dispatch_Method.new()])

        nil
    end



    
    def construct(args)
        
        return slack.event.Message.new()

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_Message()
    return Slack_event_Message

    nil
end


class Slack_event_Edited < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.Edited")
        (self).name = "slack.event.Edited"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("slack.User", "user"), builtin.reflect.Field.new("builtin.String", "timestamp")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return slack.event.Edited.new()

        nil
    end

    def _getClass()
        
        return nil

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
def slack_event_Edited()
    return Slack_event_Edited

    nil
end


class Slack_SlackHandler_onSlackEvent_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onSlackEvent", DatawireQuarkCore::List.new(["slack.event.SlackEvent"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onSlackEvent((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_SlackHandler_onSlackEvent_Method()
    return Slack_SlackHandler_onSlackEvent_Method

    nil
end

class Slack_SlackHandler_onHello_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onHello", DatawireQuarkCore::List.new(["slack.event.Hello"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onHello((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_SlackHandler_onHello_Method()
    return Slack_SlackHandler_onHello_Method

    nil
end

class Slack_SlackHandler_onSlackError_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onSlackError", DatawireQuarkCore::List.new(["slack.event.SlackError"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onSlackError((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_SlackHandler_onSlackError_Method()
    return Slack_SlackHandler_onSlackError_Method

    nil
end

class Slack_SlackHandler_onMessage_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onMessage", DatawireQuarkCore::List.new(["slack.event.Message"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onMessage((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_SlackHandler_onMessage_Method()
    return Slack_SlackHandler_onMessage_Method

    nil
end

class Slack_SlackHandler < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.SlackHandler")
        (self).name = "slack.SlackHandler"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([slack_SlackHandler_onSlackEvent_Method.new(), slack_SlackHandler_onHello_Method.new(), slack_SlackHandler_onSlackError_Method.new(), slack_SlackHandler_onMessage_Method.new()])

        nil
    end



    
    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_SlackHandler()
    return Slack_SlackHandler

    nil
end


class Slack_User < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.User")
        (self).name = "slack.User"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("slack.Client", "client"), builtin.reflect.Field.new("builtin.String", "user")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return slack.User.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

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
def slack_User()
    return Slack_User

    nil
end


class Slack_Channel_send_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "send", DatawireQuarkCore::List.new(["builtin.String"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.send((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Channel_send_Method()
    return Slack_Channel_send_Method

    nil
end

class Slack_Channel < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.Channel")
        (self).name = "slack.Channel"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("slack.Client", "client"), builtin.reflect.Field.new("builtin.String", "channel")])
        (self).methods = DatawireQuarkCore::List.new([slack_Channel_send_Method.new()])

        nil
    end



    
    def construct(args)
        
        return slack.Channel.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Channel()
    return Slack_Channel

    nil
end


class Slack_Client_connect_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "connect", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.connect()
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_connect_Method()
    return Slack_Client_connect_Method

    nil
end

class Slack_Client_request_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "request", DatawireQuarkCore::List.new(["builtin.String", "builtin.Map<builtin.String,builtin.Object>", "builtin.HTTPHandler"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.request((args)[0], (args)[1], (args)[2])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_request_Method()
    return Slack_Client_request_Method

    nil
end

class Slack_Client_ws_connect_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "ws_connect", DatawireQuarkCore::List.new(["builtin.String"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.ws_connect((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_ws_connect_Method()
    return Slack_Client_ws_connect_Method

    nil
end

class Slack_Client_ws_send_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "ws_send", DatawireQuarkCore::List.new(["builtin.String"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.ws_send((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_ws_send_Method()
    return Slack_Client_ws_send_Method

    nil
end

class Slack_Client_onWSConnected_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onWSConnected", DatawireQuarkCore::List.new(["builtin.WebSocket"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onWSConnected((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_onWSConnected_Method()
    return Slack_Client_onWSConnected_Method

    nil
end

class Slack_Client_onWSClose_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onWSClose", DatawireQuarkCore::List.new(["builtin.WebSocket"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onWSClose((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_onWSClose_Method()
    return Slack_Client_onWSClose_Method

    nil
end

class Slack_Client_onWSError_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onWSError", DatawireQuarkCore::List.new(["builtin.WebSocket"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onWSError((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_onWSError_Method()
    return Slack_Client_onWSError_Method

    nil
end

class Slack_Client_construct_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("slack.event.SlackEvent", "construct", DatawireQuarkCore::List.new(["builtin.String"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        return obj.construct((args)[0])

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_construct_Method()
    return Slack_Client_construct_Method

    nil
end

class Slack_Client_onWSMessage_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onWSMessage", DatawireQuarkCore::List.new(["builtin.WebSocket", "builtin.String"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onWSMessage((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_onWSMessage_Method()
    return Slack_Client_onWSMessage_Method

    nil
end

class Slack_Client_onHTTPResponse_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onHTTPResponse", DatawireQuarkCore::List.new(["builtin.HTTPRequest", "builtin.HTTPResponse"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onHTTPResponse((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client_onHTTPResponse_Method()
    return Slack_Client_onHTTPResponse_Method

    nil
end

class Slack_Client < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.Client")
        (self).name = "slack.Client"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.Runtime", "runtime"), builtin.reflect.Field.new("builtin.String", "token"), builtin.reflect.Field.new("slack.SlackHandler", "handler"), builtin.reflect.Field.new("builtin.int", "event_id"), builtin.reflect.Field.new("builtin.WebSocket", "socket")])
        (self).methods = DatawireQuarkCore::List.new([slack_Client_connect_Method.new(), slack_Client_request_Method.new(), slack_Client_ws_connect_Method.new(), slack_Client_ws_send_Method.new(), slack_Client_onWSConnected_Method.new(), slack_Client_onWSClose_Method.new(), slack_Client_onWSError_Method.new(), slack_Client_construct_Method.new(), slack_Client_onWSMessage_Method.new(), slack_Client_onHTTPResponse_Method.new()])

        nil
    end



    
    def construct(args)
        
        return slack.Client.new((args)[0], (args)[1], (args)[2])

        nil
    end

    def _getClass()
        
        return nil

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
def slack_Client()
    return Slack_Client

    nil
end


class Pkg_Handler_onSlackEvent_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onSlackEvent", DatawireQuarkCore::List.new(["slack.event.SlackEvent"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onSlackEvent((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def pkg_Handler_onSlackEvent_Method()
    return Pkg_Handler_onSlackEvent_Method

    nil
end

class Pkg_Handler_onHello_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onHello", DatawireQuarkCore::List.new(["slack.event.Hello"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onHello((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def pkg_Handler_onHello_Method()
    return Pkg_Handler_onHello_Method

    nil
end

class Pkg_Handler_onSlackError_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onSlackError", DatawireQuarkCore::List.new(["slack.event.SlackError"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onSlackError((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def pkg_Handler_onSlackError_Method()
    return Pkg_Handler_onSlackError_Method

    nil
end

class Pkg_Handler_onMessage_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "onMessage", DatawireQuarkCore::List.new(["slack.event.Message"]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.onMessage((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

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
def pkg_Handler_onMessage_Method()
    return Pkg_Handler_onMessage_Method

    nil
end

class Pkg_Handler < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.Handler")
        (self).name = "pkg.Handler"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_Handler_onSlackEvent_Method.new(), pkg_Handler_onHello_Method.new(), pkg_Handler_onSlackError_Method.new(), pkg_Handler_onMessage_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.Handler.new()

        nil
    end

    def _getClass()
        
        return nil

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
def pkg_Handler()
    return Pkg_Handler

    nil
end


class Builtin_Map_builtin_String_builtin_Object_ < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("builtin.Map<builtin.String,builtin.Object>")
        (self).name = "builtin.Map"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.String", "builtin.Object"])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return Hash.new()

        nil
    end

    def _getClass()
        
        return nil

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
def builtin_Map_builtin_String_builtin_Object_()
    return Builtin_Map_builtin_String_builtin_Object_

    nil
end


class Root < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def _getClass()
        
        return nil

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
