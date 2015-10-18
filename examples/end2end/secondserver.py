# Topic server

import gevent
from gevent.pywsgi import WSGIServer
import flask


app = flask.Flask(__name__)
data = []


@app.route("/simple/v2/firstIdx")
def simple_firstIdx():
    return "0"


@app.route("/simple/v2/lastIdx")
def simple_lastIdx():
    return str(len(data) - 1)


@app.route("/simple/v2/submit/<value>")
def simple_submit(value):
    data.append(value)
    return simple_lastIdx()


@app.route("/simple/v2/retrieve/<idx>")
def simple_retrieve(idx):
    return data[int(idx)]


@app.route("/simple/v2/retrieve_block/<idx>")
def simple_retrieve_block(idx):
    int_idx = int(idx)
    while len(data) <= int_idx:
        gevent.sleep(0.1)
    return data[int_idx]


if __name__ == "__main__":
    http_server = WSGIServer(("127.0.0.1", 8082), app)
    http_server.serve_forever()
