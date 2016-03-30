module Quark
def self.slackpack_md; MODULE_slackpack_md; end
module MODULE_slackpack_md
require 'quark' # .../reflect
# for ('slackpack_md',): require_relative 'slack/event' # 0 ('slack',) ()
# for ('slackpack_md',): require_relative 'slack' # 0 () ()
# for ('slackpack_md',): require_relative 'pkg' # 0 () ()

def self.slack_event_SlackEvent_load_Method; CLASS_slack_event_SlackEvent_load_Method; end
class CLASS_slack_event_SlackEvent_load_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

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

def self.slack_event_SlackEvent_dispatch_Method; CLASS_slack_event_SlackEvent_dispatch_Method; end
class CLASS_slack_event_SlackEvent_dispatch_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

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

def self.slack_event_SlackEvent; CLASS_slack_event_SlackEvent; end
class CLASS_slack_event_SlackEvent < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_SlackEvent.new() }



    def initialize()
        
        super("slack.event.SlackEvent")
        (self).name = "slack.event.SlackEvent"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_SlackEvent_load_Method.new(), ::Quark.slackpack_md.slack_event_SlackEvent_dispatch_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.SlackEvent.new()

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
CLASS_slack_event_SlackEvent.unlazy_statics

def self.slack_event_SlackError_load_Method; CLASS_slack_event_SlackError_load_Method; end
class CLASS_slack_event_SlackError_load_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

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

def self.slack_event_SlackError_dispatch_Method; CLASS_slack_event_SlackError_dispatch_Method; end
class CLASS_slack_event_SlackError_dispatch_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

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

def self.slack_event_SlackError; CLASS_slack_event_SlackError; end
class CLASS_slack_event_SlackError < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_SlackError.new() }



    def initialize()
        
        super("slack.event.SlackError")
        (self).name = "slack.event.SlackError"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp"), ::Quark.quark.reflect.Field.new("quark.int", "code"), ::Quark.quark.reflect.Field.new("quark.String", "text")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_SlackError_load_Method.new(), ::Quark.slackpack_md.slack_event_SlackError_dispatch_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.SlackError.new()

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
CLASS_slack_event_SlackError.unlazy_statics

def self.slack_event_Hello_dispatch_Method; CLASS_slack_event_Hello_dispatch_Method; end
class CLASS_slack_event_Hello_dispatch_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

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

def self.slack_event_Hello_load_Method; CLASS_slack_event_Hello_load_Method; end
class CLASS_slack_event_Hello_load_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

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

def self.slack_event_Hello; CLASS_slack_event_Hello; end
class CLASS_slack_event_Hello < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_Hello.new() }



    def initialize()
        
        super("slack.event.Hello")
        (self).name = "slack.event.Hello"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_Hello_dispatch_Method.new(), ::Quark.slackpack_md.slack_event_Hello_load_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.Hello.new()

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
CLASS_slack_event_Hello.unlazy_statics

def self.slack_event_Message_load_Method; CLASS_slack_event_Message_load_Method; end
class CLASS_slack_event_Message_load_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

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

def self.slack_event_Message_dispatch_Method; CLASS_slack_event_Message_dispatch_Method; end
class CLASS_slack_event_Message_dispatch_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

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

def self.slack_event_Message; CLASS_slack_event_Message; end
class CLASS_slack_event_Message < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_Message.new() }



    def initialize()
        
        super("slack.event.Message")
        (self).name = "slack.event.Message"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp"), ::Quark.quark.reflect.Field.new("quark.String", "subtype"), ::Quark.quark.reflect.Field.new("quark.bool", "hidden"), ::Quark.quark.reflect.Field.new("quark.String", "text"), ::Quark.quark.reflect.Field.new("slack.event.Edited", "edited")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_Message_load_Method.new(), ::Quark.slackpack_md.slack_event_Message_dispatch_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.Message.new()

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
CLASS_slack_event_Message.unlazy_statics

def self.slack_event_Edited; CLASS_slack_event_Edited; end
class CLASS_slack_event_Edited < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_Edited.new() }



    def initialize()
        
        super("slack.event.Edited")
        (self).name = "slack.event.Edited"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.Edited.new()

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
CLASS_slack_event_Edited.unlazy_statics

def self.slack_SlackHandler_onSlackEvent_Method; CLASS_slack_SlackHandler_onSlackEvent_Method; end
class CLASS_slack_SlackHandler_onSlackEvent_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackEvent", ::DatawireQuarkCore::List.new(["slack.event.SlackEvent"]))

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

def self.slack_SlackHandler_onHello_Method; CLASS_slack_SlackHandler_onHello_Method; end
class CLASS_slack_SlackHandler_onHello_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHello", ::DatawireQuarkCore::List.new(["slack.event.Hello"]))

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

def self.slack_SlackHandler_onSlackError_Method; CLASS_slack_SlackHandler_onSlackError_Method; end
class CLASS_slack_SlackHandler_onSlackError_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackError", ::DatawireQuarkCore::List.new(["slack.event.SlackError"]))

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

def self.slack_SlackHandler_onMessage_Method; CLASS_slack_SlackHandler_onMessage_Method; end
class CLASS_slack_SlackHandler_onMessage_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onMessage", ::DatawireQuarkCore::List.new(["slack.event.Message"]))

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

def self.slack_SlackHandler; CLASS_slack_SlackHandler; end
class CLASS_slack_SlackHandler < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_SlackHandler.new() }



    def initialize()
        
        super("slack.SlackHandler")
        (self).name = "slack.SlackHandler"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_SlackHandler_onSlackEvent_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onHello_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onSlackError_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onMessage_Method.new()])

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
CLASS_slack_SlackHandler.unlazy_statics

def self.slack_User; CLASS_slack_User; end
class CLASS_slack_User < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_User.new() }



    def initialize()
        
        super("slack.User")
        (self).name = "slack.User"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("slack.Client", "client"), ::Quark.quark.reflect.Field.new("quark.String", "user")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.User.new((args)[0], (args)[1])

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
CLASS_slack_User.unlazy_statics

def self.slack_Channel_send_Method; CLASS_slack_Channel_send_Method; end
class CLASS_slack_Channel_send_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "send", ::DatawireQuarkCore::List.new(["quark.String"]))

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

def self.slack_Channel; CLASS_slack_Channel; end
class CLASS_slack_Channel < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_Channel.new() }



    def initialize()
        
        super("slack.Channel")
        (self).name = "slack.Channel"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("slack.Client", "client"), ::Quark.quark.reflect.Field.new("quark.String", "channel")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_Channel_send_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.Channel.new((args)[0], (args)[1])

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
CLASS_slack_Channel.unlazy_statics

def self.slack_Client_connect_Method; CLASS_slack_Client_connect_Method; end
class CLASS_slack_Client_connect_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "connect", ::DatawireQuarkCore::List.new([]))

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

def self.slack_Client_request_Method; CLASS_slack_Client_request_Method; end
class CLASS_slack_Client_request_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "request", ::DatawireQuarkCore::List.new(["quark.String", "quark.Map<quark.String,quark.Object>", "quark.HTTPHandler"]))

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

def self.slack_Client_ws_connect_Method; CLASS_slack_Client_ws_connect_Method; end
class CLASS_slack_Client_ws_connect_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "ws_connect", ::DatawireQuarkCore::List.new(["quark.String"]))

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

def self.slack_Client_ws_send_Method; CLASS_slack_Client_ws_send_Method; end
class CLASS_slack_Client_ws_send_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "ws_send", ::DatawireQuarkCore::List.new(["quark.String"]))

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

def self.slack_Client_onWSConnected_Method; CLASS_slack_Client_onWSConnected_Method; end
class CLASS_slack_Client_onWSConnected_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSConnected", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

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

def self.slack_Client_onWSClose_Method; CLASS_slack_Client_onWSClose_Method; end
class CLASS_slack_Client_onWSClose_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSClose", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

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

def self.slack_Client_onWSError_Method; CLASS_slack_Client_onWSError_Method; end
class CLASS_slack_Client_onWSError_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSError", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

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

def self.slack_Client_construct_Method; CLASS_slack_Client_construct_Method; end
class CLASS_slack_Client_construct_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("slack.event.SlackEvent", "construct", ::DatawireQuarkCore::List.new(["quark.String"]))

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

def self.slack_Client_onWSMessage_Method; CLASS_slack_Client_onWSMessage_Method; end
class CLASS_slack_Client_onWSMessage_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSMessage", ::DatawireQuarkCore::List.new(["quark.WebSocket", "quark.String"]))

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

def self.slack_Client_onHTTPResponse_Method; CLASS_slack_Client_onHTTPResponse_Method; end
class CLASS_slack_Client_onHTTPResponse_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPResponse", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

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

def self.slack_Client; CLASS_slack_Client; end
class CLASS_slack_Client < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_Client.new() }



    def initialize()
        
        super("slack.Client")
        (self).name = "slack.Client"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Runtime", "runtime"), ::Quark.quark.reflect.Field.new("quark.String", "token"), ::Quark.quark.reflect.Field.new("slack.SlackHandler", "handler"), ::Quark.quark.reflect.Field.new("quark.int", "event_id"), ::Quark.quark.reflect.Field.new("quark.WebSocket", "socket")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_Client_connect_Method.new(), ::Quark.slackpack_md.slack_Client_request_Method.new(), ::Quark.slackpack_md.slack_Client_ws_connect_Method.new(), ::Quark.slackpack_md.slack_Client_ws_send_Method.new(), ::Quark.slackpack_md.slack_Client_onWSConnected_Method.new(), ::Quark.slackpack_md.slack_Client_onWSClose_Method.new(), ::Quark.slackpack_md.slack_Client_onWSError_Method.new(), ::Quark.slackpack_md.slack_Client_construct_Method.new(), ::Quark.slackpack_md.slack_Client_onWSMessage_Method.new(), ::Quark.slackpack_md.slack_Client_onHTTPResponse_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.Client.new((args)[0], (args)[1], (args)[2])

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
CLASS_slack_Client.unlazy_statics

def self.pkg_Handler_onSlackEvent_Method; CLASS_pkg_Handler_onSlackEvent_Method; end
class CLASS_pkg_Handler_onSlackEvent_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackEvent", ::DatawireQuarkCore::List.new(["slack.event.SlackEvent"]))

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

def self.pkg_Handler_onHello_Method; CLASS_pkg_Handler_onHello_Method; end
class CLASS_pkg_Handler_onHello_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHello", ::DatawireQuarkCore::List.new(["slack.event.Hello"]))

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

def self.pkg_Handler_onSlackError_Method; CLASS_pkg_Handler_onSlackError_Method; end
class CLASS_pkg_Handler_onSlackError_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackError", ::DatawireQuarkCore::List.new(["slack.event.SlackError"]))

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

def self.pkg_Handler_onMessage_Method; CLASS_pkg_Handler_onMessage_Method; end
class CLASS_pkg_Handler_onMessage_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onMessage", ::DatawireQuarkCore::List.new(["slack.event.Message"]))

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

def self.pkg_Handler; CLASS_pkg_Handler; end
class CLASS_pkg_Handler < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.pkg_Handler.new() }



    def initialize()
        
        super("pkg.Handler")
        (self).name = "pkg.Handler"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.pkg_Handler_onSlackEvent_Method.new(), ::Quark.slackpack_md.pkg_Handler_onHello_Method.new(), ::Quark.slackpack_md.pkg_Handler_onSlackError_Method.new(), ::Quark.slackpack_md.pkg_Handler_onMessage_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.pkg.Handler.new()

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
CLASS_pkg_Handler.unlazy_statics

def self.quark_Map_quark_String_quark_Object_; CLASS_quark_Map_quark_String_quark_Object_; end
class CLASS_quark_Map_quark_String_quark_Object_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.quark_Map_quark_String_quark_Object_.new() }



    def initialize()
        
        super("quark.Map<quark.String,quark.Object>")
        (self).name = "quark.Map"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String", "quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Hash.new()

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
CLASS_quark_Map_quark_String_quark_Object_.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static slack_event_SlackEvent_md: -> { ::Quark.slackpack_md.slack_event_SlackEvent.singleton }
    static slack_event_SlackError_md: -> { ::Quark.slackpack_md.slack_event_SlackError.singleton }
    static slack_event_Hello_md: -> { ::Quark.slackpack_md.slack_event_Hello.singleton }
    static slack_event_Message_md: -> { ::Quark.slackpack_md.slack_event_Message.singleton }
    static slack_event_Edited_md: -> { ::Quark.slackpack_md.slack_event_Edited.singleton }
    static slack_SlackHandler_md: -> { ::Quark.slackpack_md.slack_SlackHandler.singleton }
    static slack_User_md: -> { ::Quark.slackpack_md.slack_User.singleton }
    static slack_Channel_md: -> { ::Quark.slackpack_md.slack_Channel.singleton }
    static slack_Client_md: -> { ::Quark.slackpack_md.slack_Client.singleton }
    static pkg_Handler_md: -> { ::Quark.slackpack_md.pkg_Handler.singleton }
    static quark_Map_quark_String_quark_Object__md: -> { ::Quark.slackpack_md.quark_Map_quark_String_quark_Object_.singleton }



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
CLASS_Root.unlazy_statics
end # module MODULE_slackpack_md
end # module Quark
