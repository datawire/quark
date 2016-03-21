module Quark
require "datawire-quark-core"
def self.slackpack_md; MODULE_slackpack_md; end
module MODULE_slackpack_md
require 'builtin' # .../reflect
require 'slack/event'
require 'slack'
require 'pkg'

class CLASS_slack_event_SlackEvent_load_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_SlackEvent_load_Method; CLASS_slack_event_SlackEvent_load_Method; end

class CLASS_slack_event_SlackEvent_dispatch_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_SlackEvent_dispatch_Method; CLASS_slack_event_SlackEvent_dispatch_Method; end

class CLASS_slack_event_SlackEvent < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.SlackEvent")
        (self).name = "slack.event.SlackEvent"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "type"), ::Quark.builtin.reflect.Field.new("slack.User", "user"), ::Quark.builtin.reflect.Field.new("slack.Channel", "channel"), ::Quark.builtin.reflect.Field.new("builtin.String", "timestamp")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_SlackEvent_load_Method.new(), ::Quark.slackpack_md.slack_event_SlackEvent_dispatch_Method.new()])

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


end; def self.slack_event_SlackEvent; CLASS_slack_event_SlackEvent; end

class CLASS_slack_event_SlackError_load_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_SlackError_load_Method; CLASS_slack_event_SlackError_load_Method; end

class CLASS_slack_event_SlackError_dispatch_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_SlackError_dispatch_Method; CLASS_slack_event_SlackError_dispatch_Method; end

class CLASS_slack_event_SlackError < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.SlackError")
        (self).name = "slack.event.SlackError"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "type"), ::Quark.builtin.reflect.Field.new("slack.User", "user"), ::Quark.builtin.reflect.Field.new("slack.Channel", "channel"), ::Quark.builtin.reflect.Field.new("builtin.String", "timestamp"), ::Quark.builtin.reflect.Field.new("builtin.int", "code"), ::Quark.builtin.reflect.Field.new("builtin.String", "text")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_SlackError_load_Method.new(), ::Quark.slackpack_md.slack_event_SlackError_dispatch_Method.new()])

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


end; def self.slack_event_SlackError; CLASS_slack_event_SlackError; end

class CLASS_slack_event_Hello_dispatch_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_Hello_dispatch_Method; CLASS_slack_event_Hello_dispatch_Method; end

class CLASS_slack_event_Hello_load_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_Hello_load_Method; CLASS_slack_event_Hello_load_Method; end

class CLASS_slack_event_Hello < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.Hello")
        (self).name = "slack.event.Hello"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "type"), ::Quark.builtin.reflect.Field.new("slack.User", "user"), ::Quark.builtin.reflect.Field.new("slack.Channel", "channel"), ::Quark.builtin.reflect.Field.new("builtin.String", "timestamp")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_Hello_dispatch_Method.new(), ::Quark.slackpack_md.slack_event_Hello_load_Method.new()])

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


end; def self.slack_event_Hello; CLASS_slack_event_Hello; end

class CLASS_slack_event_Message_load_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_Message_load_Method; CLASS_slack_event_Message_load_Method; end

class CLASS_slack_event_Message_dispatch_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_event_Message_dispatch_Method; CLASS_slack_event_Message_dispatch_Method; end

class CLASS_slack_event_Message < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.Message")
        (self).name = "slack.event.Message"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "type"), ::Quark.builtin.reflect.Field.new("slack.User", "user"), ::Quark.builtin.reflect.Field.new("slack.Channel", "channel"), ::Quark.builtin.reflect.Field.new("builtin.String", "timestamp"), ::Quark.builtin.reflect.Field.new("builtin.String", "subtype"), ::Quark.builtin.reflect.Field.new("builtin.bool", "hidden"), ::Quark.builtin.reflect.Field.new("builtin.String", "text"), ::Quark.builtin.reflect.Field.new("slack.event.Edited", "edited")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_Message_load_Method.new(), ::Quark.slackpack_md.slack_event_Message_dispatch_Method.new()])

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


end; def self.slack_event_Message; CLASS_slack_event_Message; end

class CLASS_slack_event_Edited < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.event.Edited")
        (self).name = "slack.event.Edited"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("slack.User", "user"), ::Quark.builtin.reflect.Field.new("builtin.String", "timestamp")])
        (self).methods = DatawireQuarkCore::List.new([])

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


end; def self.slack_event_Edited; CLASS_slack_event_Edited; end

class CLASS_slack_SlackHandler_onSlackEvent_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_SlackHandler_onSlackEvent_Method; CLASS_slack_SlackHandler_onSlackEvent_Method; end

class CLASS_slack_SlackHandler_onHello_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_SlackHandler_onHello_Method; CLASS_slack_SlackHandler_onHello_Method; end

class CLASS_slack_SlackHandler_onSlackError_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_SlackHandler_onSlackError_Method; CLASS_slack_SlackHandler_onSlackError_Method; end

class CLASS_slack_SlackHandler_onMessage_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_SlackHandler_onMessage_Method; CLASS_slack_SlackHandler_onMessage_Method; end

class CLASS_slack_SlackHandler < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.SlackHandler")
        (self).name = "slack.SlackHandler"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_SlackHandler_onSlackEvent_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onHello_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onSlackError_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onMessage_Method.new()])

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


end; def self.slack_SlackHandler; CLASS_slack_SlackHandler; end

class CLASS_slack_User < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.User")
        (self).name = "slack.User"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("slack.Client", "client"), ::Quark.builtin.reflect.Field.new("builtin.String", "user")])
        (self).methods = DatawireQuarkCore::List.new([])

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


end; def self.slack_User; CLASS_slack_User; end

class CLASS_slack_Channel_send_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Channel_send_Method; CLASS_slack_Channel_send_Method; end

class CLASS_slack_Channel < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.Channel")
        (self).name = "slack.Channel"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("slack.Client", "client"), ::Quark.builtin.reflect.Field.new("builtin.String", "channel")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_Channel_send_Method.new()])

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


end; def self.slack_Channel; CLASS_slack_Channel; end

class CLASS_slack_Client_connect_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_connect_Method; CLASS_slack_Client_connect_Method; end

class CLASS_slack_Client_request_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_request_Method; CLASS_slack_Client_request_Method; end

class CLASS_slack_Client_ws_connect_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_ws_connect_Method; CLASS_slack_Client_ws_connect_Method; end

class CLASS_slack_Client_ws_send_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_ws_send_Method; CLASS_slack_Client_ws_send_Method; end

class CLASS_slack_Client_onWSConnected_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_onWSConnected_Method; CLASS_slack_Client_onWSConnected_Method; end

class CLASS_slack_Client_onWSClose_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_onWSClose_Method; CLASS_slack_Client_onWSClose_Method; end

class CLASS_slack_Client_onWSError_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_onWSError_Method; CLASS_slack_Client_onWSError_Method; end

class CLASS_slack_Client_construct_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_construct_Method; CLASS_slack_Client_construct_Method; end

class CLASS_slack_Client_onWSMessage_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_onWSMessage_Method; CLASS_slack_Client_onWSMessage_Method; end

class CLASS_slack_Client_onHTTPResponse_Method < ::Quark.builtin.reflect.Method
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


end; def self.slack_Client_onHTTPResponse_Method; CLASS_slack_Client_onHTTPResponse_Method; end

class CLASS_slack_Client < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("slack.Client")
        (self).name = "slack.Client"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.Runtime", "runtime"), ::Quark.builtin.reflect.Field.new("builtin.String", "token"), ::Quark.builtin.reflect.Field.new("slack.SlackHandler", "handler"), ::Quark.builtin.reflect.Field.new("builtin.int", "event_id"), ::Quark.builtin.reflect.Field.new("builtin.WebSocket", "socket")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_Client_connect_Method.new(), ::Quark.slackpack_md.slack_Client_request_Method.new(), ::Quark.slackpack_md.slack_Client_ws_connect_Method.new(), ::Quark.slackpack_md.slack_Client_ws_send_Method.new(), ::Quark.slackpack_md.slack_Client_onWSConnected_Method.new(), ::Quark.slackpack_md.slack_Client_onWSClose_Method.new(), ::Quark.slackpack_md.slack_Client_onWSError_Method.new(), ::Quark.slackpack_md.slack_Client_construct_Method.new(), ::Quark.slackpack_md.slack_Client_onWSMessage_Method.new(), ::Quark.slackpack_md.slack_Client_onHTTPResponse_Method.new()])

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


end; def self.slack_Client; CLASS_slack_Client; end

class CLASS_pkg_Handler_onSlackEvent_Method < ::Quark.builtin.reflect.Method
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


end; def self.pkg_Handler_onSlackEvent_Method; CLASS_pkg_Handler_onSlackEvent_Method; end

class CLASS_pkg_Handler_onHello_Method < ::Quark.builtin.reflect.Method
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


end; def self.pkg_Handler_onHello_Method; CLASS_pkg_Handler_onHello_Method; end

class CLASS_pkg_Handler_onSlackError_Method < ::Quark.builtin.reflect.Method
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


end; def self.pkg_Handler_onSlackError_Method; CLASS_pkg_Handler_onSlackError_Method; end

class CLASS_pkg_Handler_onMessage_Method < ::Quark.builtin.reflect.Method
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


end; def self.pkg_Handler_onMessage_Method; CLASS_pkg_Handler_onMessage_Method; end

class CLASS_pkg_Handler < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.Handler")
        (self).name = "pkg.Handler"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.slackpack_md.pkg_Handler_onSlackEvent_Method.new(), ::Quark.slackpack_md.pkg_Handler_onHello_Method.new(), ::Quark.slackpack_md.pkg_Handler_onSlackError_Method.new(), ::Quark.slackpack_md.pkg_Handler_onMessage_Method.new()])

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


end; def self.pkg_Handler; CLASS_pkg_Handler; end

class CLASS_builtin_Map_builtin_String_builtin_Object_ < ::Quark.builtin.reflect.QuarkClass
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


end; def self.builtin_Map_builtin_String_builtin_Object_; CLASS_builtin_Map_builtin_String_builtin_Object_; end

class CLASS_Root < Object
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


end; def self.Root; CLASS_Root; end
end # module MODULE_slackpack_md
end # module Quark
