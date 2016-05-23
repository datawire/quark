from quark_runtime import *

import quark.reflect
import event
import slackpack_md
import quark


class SlackHandler(object):
    """
    Event handler for slack events. All unhandled events
    are delegated to onSlackEvent by default.
    """

    def onSlackEvent(self, event):
        pass

    def onHello(self, hello):
        pass

    def onSlackError(self, error):
        pass

    def onMessage(self, message):
        pass

SlackHandler.slack_SlackHandler_ref = slackpack_md.Root.slack_SlackHandler_md
class User(object):
    """
    A reference to a user.
    """
    def _init(self):
        self.client = None
        self.user = None

    def __init__(self, client, user):
        self._init()

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
            (self).client = _cast(value, lambda: Client)

        if ((name) == (u"user")):
            (self).user = _cast(value, lambda: unicode)


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

    def send(self, message):
        """
        Send a message to a channel.
        """
        pass

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
            (self).client = _cast(value, lambda: Client)

        if ((name) == (u"channel")):
            (self).channel = _cast(value, lambda: unicode)


Channel.slack_Channel_ref = slackpack_md.Root.slack_Channel_md
class Client(object):
    """
    Represents a persistent connection to the slack service.
    """
    def _init(self):
        self.runtime = None
        self.token = None
        self.handler = None
        self.event_id = None
        self.socket = None

    def __init__(self, runtime, token, handler):
        self._init()

    def connect(self):
        """
        Connect the client to the slack service.
        """
        pass

    def request(self, request, params, handler):
        pass

    def ws_connect(self, wsurl):
        pass

    def ws_send(self, message):
        pass

    def onWSConnected(self, socket):
        pass

    def onWSClose(self, socket):
        pass

    def onWSError(self, socket):
        pass

    def construct(self, type):
        return _cast(None, lambda: event.SlackEvent)

    def onWSMessage(self, socket, message):
        pass

    def onHTTPResponse(self, request, response):
        pass

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
            (self).runtime = _cast(value, lambda: quark.Runtime)

        if ((name) == (u"token")):
            (self).token = _cast(value, lambda: unicode)

        if ((name) == (u"handler")):
            (self).handler = _cast(value, lambda: SlackHandler)

        if ((name) == (u"event_id")):
            (self).event_id = _cast(value, lambda: int)

        if ((name) == (u"socket")):
            (self).socket = _cast(value, lambda: quark.WebSocket)

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
Client.quark_Map_quark_String_quark_Object__ref = slackpack_md.Root.quark_Map_quark_String_quark_Object__md
