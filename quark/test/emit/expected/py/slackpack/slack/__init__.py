from quark_runtime import *

import builtin.reflect
import event
import slackpack_md


class SlackHandler(object):
    """
    Event handler for slack events. All unhandled events
    are delegated to onSlackEvent by default.
    """

    def onSlackEvent(self, event):
        pass

    def onHello(self, hello):
        (self).onSlackEvent(hello);

    def onSlackError(self, error):
        (self).onSlackEvent(error);

    def onMessage(self, message):
        (self).onSlackEvent(message);


class User(object):
    """
    A reference to a user.
    """
    def _init(self):
        self.client = None
        self.user = None

    def __init__(self, client, user):
        self._init()
        (self).client = client
        (self).user = user

    def _getClass(self):
        return u"slack.User"

    def _getField(self, name):
        if ((name) == (u"client")):
            return (self).client

        if ((name) == (u"user")):
            return (self).user

        return None

    def _setField(self, name, value):
        if ((name) == (u"client")):
            (self).client = value

        if ((name) == (u"user")):
            (self).user = value

    
User.slack_User_ref = slackpack_md.Root.slack_User_md
class Channel(object):
    """
    A reference to a channel.
    """
    def _init(self):
        self.client = None
        self.channel = None

    def __init__(self, client, channel):
        self._init()
        (self).client = client
        (self).channel = channel

    def send(self, message):
        id = (self.client).event_id;
        (self.client).event_id = ((self.client).event_id) + (1)
        msg = _JSONObject();
        (msg).setObjectItem((u"id"), ((_JSONObject()).setNumber(id)));
        (msg).setObjectItem((u"type"), ((_JSONObject()).setString(u"message")));
        (msg).setObjectItem((u"channel"), ((_JSONObject()).setString((self).channel)));
        (msg).setObjectItem((u"text"), ((_JSONObject()).setString(message)));
        (self.client).ws_send((msg).toString());

    def _getClass(self):
        return u"slack.Channel"

    def _getField(self, name):
        if ((name) == (u"client")):
            return (self).client

        if ((name) == (u"channel")):
            return (self).channel

        return None

    def _setField(self, name, value):
        if ((name) == (u"client")):
            (self).client = value

        if ((name) == (u"channel")):
            (self).channel = value

    
Channel.slack_Channel_ref = slackpack_md.Root.slack_Channel_md
class Client(object):
    """
    Represents a persistent connection to the slack service.
    """
    def _init(self):
        self.runtime = None
        self.token = None
        self.handler = None
        self.event_id = 0
        self.socket = None

    def __init__(self, runtime, token, handler):
        self._init()
        (self).runtime = runtime
        (self).token = token
        (self).handler = handler

    def connect(self):
        """
        Connect the client to the slack service.
        """
        (self).request(u"rtm.start", _Map(), self);

    def request(self, request, params, handler):
        url = (u"https://slack.com/api/") + (request);
        req = _HTTPRequest(url);
        (req).setMethod(u"POST");
        (params)[u"token"] = ((self).token);
        (req).setBody(_urlencode(params));
        (req).setHeader(u"Content-Type", u"application/x-www-form-urlencoded");
        ((self).runtime).request(req, handler);

    def ws_connect(self, wsurl):
        ((self).runtime).open(wsurl, self);

    def ws_send(self, message):
        (self.socket).send(message);

    def onWSConnected(self, socket):
        (self).socket = socket

    def onWSClose(self, socket):
        _println(u"socket closed");

    def onWSError(self, socket):
        _println(u"socket error");

    def construct(self, type):
        if ((type) == (u"error")):
            return event.SlackError()

        if ((type) == (u"hello")):
            return event.Hello()

        if ((type) == (u"message")):
            return event.Message()

        return event.SlackEvent()

    def onWSMessage(self, socket, message):
        obj = _JSONObject.parse(message);
        type = ((obj).getObjectItem(u"type")).getString();
        event = (self).construct(type);
        (event).load(self, obj);
        (event).dispatch((self).handler);

    def onHTTPResponse(self, request, response):
        code = (response).getCode();
        error = None;
        if ((code) != (200)):
            error = event.SlackError()
            (error).code = code
            (error).dispatch((self).handler);
        else:
            login_data = _JSONObject.parse((response).getBody());
            if (((login_data).getObjectItem(u"ok")).getBool()):
                (self).ws_connect(((login_data).getObjectItem(u"url")).getString());
            else:
                error = event.SlackError()
                (error).text = ((login_data).getObjectItem(u"error")).getString()
                (error).dispatch((self).handler);

        

    def _getClass(self):
        return u"slack.Client"

    def _getField(self, name):
        if ((name) == (u"runtime")):
            return (self).runtime

        if ((name) == (u"token")):
            return (self).token

        if ((name) == (u"handler")):
            return (self).handler

        if ((name) == (u"event_id")):
            return (self).event_id

        if ((name) == (u"socket")):
            return (self).socket

        return None

    def _setField(self, name, value):
        if ((name) == (u"runtime")):
            (self).runtime = value

        if ((name) == (u"token")):
            (self).token = value

        if ((name) == (u"handler")):
            (self).handler = value

        if ((name) == (u"event_id")):
            (self).event_id = value

        if ((name) == (u"socket")):
            (self).socket = value

    def onWSInit(self, socket):
        pass

    def onWSBinary(self, socket, message):
        pass

    def onWSClosed(self, socket):
        pass

    def onWSFinal(self, socket):
        pass

    def onHTTPInit(self, request):
        pass

    def onHTTPError(self, request, message):
        pass

    def onHTTPFinal(self, request):
        pass
Client.slack_Client_ref = slackpack_md.Root.slack_Client_md
Client.builtin_Map_builtin_String_builtin_Object__ref = slackpack_md.Root.builtin_Map_builtin_String_builtin_Object__md
