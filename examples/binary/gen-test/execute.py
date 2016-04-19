# Test binary example

# Install everything all-at-once. This will generate the .qc files.

install_all = helpers.quark_install("binary.q")

# Capture individual compile/install stuff

java_quark_install = helpers.quark_install("--java binary.q")
java_mvn_compile = helpers.mvn("compile")
python_quark_install = helpers.quark_install("--python binary.q")
javascript_quark_install = helpers.quark_install("--javascript binary.q")
#ruby_quark_install = helpers.quark_install("--ruby binary.q")

# Launch server

with capture_bg("mvn exec:java -Dexec.mainClass=binary.ServerMain", nocmp=True) as java_server_bg:
    java_server_bg.child.expect("server starting")

    # Try each client

    java_client_bg = capture_bg("mvn exec:java -Dexec.mainClass=binary.ClientMain", nocmp=True)
    java_client_bg.child.expect("de ad be ef")
    java_client_bg.terminate()

    python_client_bg = capture_bg("python client.py")
    python_client_bg.child.expect("de ad be ef")
    python_client_bg.terminate()

    javascript_client_bg = capture_bg("node client.js")
    javascript_client_bg.child.expect("de ad be ef")
    javascript_client_bg.terminate()

    #ruby_client_bg = capture_bg("ruby client.rb")
    #ruby_client_bg.child.expect("de ad be ef")
    #ruby_client_bg.terminate()
