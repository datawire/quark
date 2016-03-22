# Topic server

import time
import flask


app = flask.Flask(__name__)
topics = {} # topic name -> topic data
subscriptions = {}  # subscription ID -> current index  # FIXME No cleanup!

def topic_data(topic):
    try:
        return topics[topic]
    except KeyError:
        data = []
        topics[topic] = data
        return data

@app.route("/subscribe/<topic>")
def subscribe(topic):
    subscription_id = topic + ":subscription" + hex(int(time.time() * 1000))[2:]
    subscriptions[subscription_id] = 0
    return subscription_id


@app.route("/push/<topic>/<value>")
def push(topic, value):
    data = topic_data(topic)
    data.append(value)
    return str(len(data) - 1)


@app.route("/pop/<topic>/<subscription_id>")
def pop(topic, subscription_id):
    data = topic_data(topic)
    assert subscription_id in subscriptions     # Or crash, aka return error
    res = data[subscriptions[subscription_id]]  # Or crash, aka return error
    subscriptions[subscription_id] += 1
    return res


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=8081)
