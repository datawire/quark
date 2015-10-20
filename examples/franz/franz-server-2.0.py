# Topic server

import gevent
from gevent.pywsgi import WSGIServer
import flask


app = flask.Flask(__name__)
data = []
event = gevent.event.Event()


@app.route("/v2/first")
def first():
    return "0"


@app.route("/v2/last")
def last():
    return str(len(data) - 1)


@app.route("/v2/push/<value>")
def push(value):
    data.append(value)
    global event
    event.set()
    event = gevent.event.Event()
    return lastIdx()


@app.route("/v2/fetch/<idx>")
def fetch(idx):
    int_idx = int(idx)
    while True:
        try:
            return data[int_idx]
        except IndexError:
            pass
        event.wait()


if __name__ == "__main__":
    http_server = WSGIServer(("127.0.0.1", 8082), app)
    http_server.serve_forever()
