# Test binary example

# Install everything all-at-once. This will generate the .qc files.

install_all = capture("quark install binary.q", nocmp=True)
assert install_all.output.splitlines()[-1] == "Done"

# Capture individual compile/install stuff

java_quark_install = capture("quark install --java binary.q",
                             filters=[filters.repo, filters.quark_install], nocmp=True)
assert java_quark_install.output.splitlines()[-1] == "Done"
java_mvn_compile = capture("mvn compile", nocmp=True)
assert "BUILD SUCCESS" in java_mvn_compile.output

python_quark_install = capture("quark install --python binary.q",
                               filters=[filters.repo, filters.quark_install], nocmp=True)
assert python_quark_install.output.splitlines()[-1] == "Done"

javascript_quark_install = capture("quark install --javascript binary.q",
                                   filters=[filters.repo, filters.quark_install], nocmp=True)
assert javascript_quark_install.output.splitlines()[-1] == "Done"

#ruby_quark_install = capture("quark install --ruby binary.q",
#                             filters=[filters.repo, filters.quark_install], nocmp=True)
#assert ruby_quark_install.output.splitlines()[-1] == "Done"

# Launch server

java_server_bg = capture_bg("mvn exec:java -Dexec.mainClass=binary.ServerMain", nocmp=True)
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

# Kill server

java_server_bg.terminate()
