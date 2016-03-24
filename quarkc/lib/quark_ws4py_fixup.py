"""
Carry a copy of ws4py fix [1] until it gets merged upstream

[1] https://github.com/Lawouach/WebSocket-for-Python/pull/185
"""

import logging
import sys
import itertools
import operator
from wsgiref.handlers import SimpleHandler
from wsgiref.simple_server import WSGIRequestHandler

from ws4py.compat import get_connection

__all__ = ['WebSocketWSGIHandler', 'WebSocketWSGIRequestHandler', ]

logger = logging.getLogger('ws4py_fixup')

class WebSocketWSGIHandler(SimpleHandler):
    def setup_environ(self):
        """
        Setup the environ dictionary and add the
        `'ws4py.socket'` key. Its associated value
        is the real socket underlying socket.
        """
        SimpleHandler.setup_environ(self)
        self.environ['ws4py.socket'] = get_connection(self.environ['wsgi.input'])
        self.http_version = self.environ['SERVER_PROTOCOL'].rsplit('/')[-1]

    def finish_response(self):
        """
        Completes the response and performs the following tasks:

        - Remove the `'ws4py.socket'` and `'ws4py.websocket'`
          environ keys.
        - Attach the returned websocket, if any, to the WSGI server
          using its ``link_websocket_to_server`` method.
        """
        # force execution of the result iterator until first actual content
        rest = iter(self.result)
        first = list(itertools.islice(rest, 1))
        self.result = itertools.chain(first, rest)
        # now it's safe to look if environ was modified
        ws = None
        if self.environ:
            self.environ.pop('ws4py.socket', None)
            ws = self.environ.pop('ws4py.websocket', None)

        try:
            SimpleHandler.finish_response(self)
        except:
            if ws:
                ws.close(1011, reason='Something broke')
            raise
        else:
            if ws:
                self.request_handler.server.link_websocket_to_server(ws)

class WebSocketWSGIRequestHandler(WSGIRequestHandler):
    WebSocketWSGIHandler = WebSocketWSGIHandler
    def handle(self):
        """
        Unfortunately the base class forces us
        to override the whole method to actually provide our wsgi handler.
        """
        self.raw_requestline = self.rfile.readline()
        if not self.parse_request(): # An error code has been sent, just exit
            return

        # next line is where we'd have expect a configuration key somehow
        handler = self.WebSocketWSGIHandler(
            self.rfile, self.wfile, self.get_stderr(), self.get_environ()
        )
        handler.request_handler = self      # backpointer for logging
        handler.run(self.server.get_app())
