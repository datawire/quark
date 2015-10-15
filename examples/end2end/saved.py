# Topic server

import flask
import json


app = flask.Flask("kafka")
data = []


@app.route("/status")
def status():
    return json.dumps((0, len(data)))


@app.route("/submit/<args>")
def submit(args):
    item = json.loads(args)
    data.append(item)
    return status()


@app.route("/retrieve/<args>")
def retrieve(args):
    decoded = json.loads(args)
    start = decoded[0]
    end = decoded[1]
    return json.dumps(data[start:end])



@app.route("/simple/firstIdx")
def simple_firstIdx():
    return "0"


@app.route("/simple/lastIdx")
def simple_lastIdx():
    return str(len(data) - 1)


@app.route("/simple/submit/<value>")
def simple_submit(value):
    data.append(value)
    return simple_lastIdx()


@app.route("/simple/retrieve/<idx>")
def simple_retrieve(idx):
    return data[int(idx)]



if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
