# Topic server

import time
import flask


app = flask.Flask(__name__)
data = []
sessions = {}  # session ID -> current index  # FIXME No cleanup!


@app.route("/newsession")
def new_session():
    session_id = "session" + hex(int(time.time() * 1000))[2:]
    sessions[session_id] = 0
    return session_id


@app.route("/push/<value>")
def push(value):
    data.append(value)
    return str(len(data) - 1)


@app.route("/pop/<session_id>")
def pop(session_id):
    assert session_id in sessions     # Or crash, aka return error
    res = data[sessions[session_id]]  # Or crash, aka return error
    sessions[session_id] += 1
    return res


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8081)
