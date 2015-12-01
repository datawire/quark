from quark_runtime import *

import slack


class SlackEvent(object):
    """
    Base class for all slack events.
    """
    def _init(self):
        self.type = None
        self.user = None
        self.channel = None
        self.timestamp = None

    def __init__(self): self._init()

    def load(self, client, obj):
        (self).type = ((obj).getObjectItem(u"type")).getString()
        uid = ((obj).getObjectItem(u"user")).getString();
        if ((uid) != (None)):
            (self).user = slack.User(client, uid)

        chid = ((obj).getObjectItem(u"channel")).getString();
        if ((chid) != (None)):
            (self).channel = slack.Channel(client, chid)

        (self).timestamp = ((obj).getObjectItem(u"ts")).getString()

    def dispatch(self, handler):
        (handler).onSlackEvent(self);


class SlackError(SlackEvent):
    """
    The server has indicated an error has occurred.
    """
    def _init(self):
        SlackEvent._init(self)
        self.code = None
        self.text = None

    def __init__(self):
        super(SlackError, self).__init__();

    def load(self, client, obj):
        super(SlackError, self).load(client, obj);
        (self).code = int(round(((obj).getObjectItem(u"code")).getNumber()))
        (self).text = ((obj).getObjectItem(u"text")).getString()

    def dispatch(self, handler):
        (handler).onSlackError(self);


class Hello(SlackEvent):
    """
    The client successfully connected to the server.
    """
    def _init(self):
        SlackEvent._init(self)

    def __init__(self):
        super(Hello, self).__init__();

    def dispatch(self, handler):
        (handler).onHello(self);


class Message(SlackEvent):
    """
    A message was sent to a channel.
    """
    def _init(self):
        SlackEvent._init(self)
        self.subtype = None
        self.hidden = False
        self.text = None
        self.edited = None

    def __init__(self):
        super(Message, self).__init__();

    def load(self, client, obj):
        super(Message, self).load(client, obj);
        (self).subtype = ((obj).getObjectItem(u"subtype")).getString()
        (self).hidden = ((obj).getObjectItem(u"hidden")).getBool()
        (self).text = ((obj).getObjectItem(u"text")).getString()
        edited = (obj).getObjectItem(u"edited");
        if ((edited).isDefined()):
            (self).edited = Edited()
            ((self).edited).user = slack.User(client, ((edited).getObjectItem(u"user")).getString())
            ((self).edited).timestamp = ((edited).getObjectItem(u"ts")).getString()

    def dispatch(self, handler):
        (handler).onMessage(self);


class Edited(object):
    """
    Metadata about an edit to a message.
    """
    def _init(self):
        self.user = None
        self.timestamp = None

    def __init__(self): self._init()
