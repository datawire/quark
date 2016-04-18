# Test helloRPC

py_installation = capture("quark install --python hello.q")
py_server_bg = capture_bg("python pyserver.py")
py_client = capture("python pyclient.py")
py_server_bg.terminate()

assert "Hello from Python" in py_client.output
