# Topic server

import time
import flask


app = flask.Flask(__name__)
data = []
sessions = {}  # session ID -> current index  # FIXME No cleanup!


@app.route("/simple/newsession")
def new_session():
    session_id = "session" + hex(int(time.time() * 1000))[2:]
    sessions[session_id] = 0
    return session_id


@app.route("/simple/push/<session_id>/<value>")
def push(session_id, value):
    assert session_id in sessions
    data.append(value)
    return str(len(data) - 1)


@app.route("/simple/pop/<session_id>")
def pop(session_id):
    assert session_id in sessions
    if sessions[session_id] >= len(data):
        return ""
    res = data[sessions[session_id]]
    sessions[session_id] += 1
    return res


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8080)
