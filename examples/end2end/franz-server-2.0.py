# Topic server

import gevent
from gevent.pywsgi import WSGIServer
import flask


app = flask.Flask(__name__)
data = []
event = gevent.event.Event()


@app.route("/v2/firstIdx")
def firstIdx():
    return "0"


@app.route("/v2/lastIdx")
def lastIdx():
    return str(len(data) - 1)


@app.route("/v2/submit/<value>")
def submit(value):
    data.append(value)
    global event
    event.set()
    event = gevent.event.Event()
    return lastIdx()


@app.route("/v2/retrieve/<idx>")
def retrieve(idx):
    return data[int(idx)]


@app.route("/v2/retrieve_block/<idx>")
def retrieve_block(idx):
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
