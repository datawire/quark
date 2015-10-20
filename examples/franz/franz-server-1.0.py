# Topic server

import time
import flask


app = flask.Flask(__name__)
data = []
subscriptions = {}  # subscription ID -> current index  # FIXME No cleanup!


@app.route("/subscribe")
def subscribe():
    subscription_id = "subscription" + hex(int(time.time() * 1000))[2:]
    subscriptions[subscription_id] = 0
    return subscription_id


@app.route("/push/<value>")
def push(value):
    data.append(value)
    return str(len(data) - 1)


@app.route("/pop/<subscription_id>")
def pop(subscription_id):
    assert subscription_id in subscriptions     # Or crash, aka return error
    res = data[subscriptions[subscription_id]]  # Or crash, aka return error
    subscriptions[subscription_id] += 1
    return res


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8081)
