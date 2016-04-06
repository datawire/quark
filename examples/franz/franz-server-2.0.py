#!/usr/bin/env python


# Topic server

import gevent
from gevent.pywsgi import WSGIServer
import flask


app = flask.Flask(__name__)
topics = {} # topic name -> topic data
event = gevent.event.Event()

def topic_data(topic):
    try:
        return topics[topic]
    except KeyError:
        data = []
        topics[topic] = data
        return data


@app.route("/v2/first/<topic>")
def first(topic):
    return "0"


@app.route("/v2/last/<topic>")
def last(topic):
    return str(len(topic_data(topic)) - 1)


@app.route("/v2/push/<topic>/<value>")
def push(topic, value):
    data = topic_data(topic)
    data.append(value)
    global event
    event.set()
    event = gevent.event.Event()
    return lastIdx()


@app.route("/v2/fetch/<topic>/<idx>")
def fetch(topic, idx):
    data = topic_data(topic)
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

