# Topic server

import flask


app = flask.Flask(__name__)
data = []


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
    app.run(host="127.0.0.1", port=8080)
