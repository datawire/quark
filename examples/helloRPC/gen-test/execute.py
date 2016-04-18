# Test helloRPC

# target (for quark install --blah), server command, client command, output pattern, no_check
# Java's no_check is True because mvn and logging stick timestamps in the
# output by default, breaking full-file comparisons.
targets = (
    ("java", "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer",
     "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient", "Java", True),
    ("python", "python pyserver.py", "python pyclient.py", "Python", False),
    ("javascript", "node jsserver.js", "node jsclient.js", "JavaScript", False),
    ("ruby", "ruby rbserver.rb", "ruby rbclient.rb", "Ruby", False)
)

# Install everything all-at-once. This will generate the .qc files.
install_all = capture("quark install hello.q")

# Install everything one-at-a-time to capture individual output for docs
for target, server_cmd, client_cmd, pattern, no_check in targets:
    installation = capture("quark install --%s hello.q" % target)

# Extra step for Java
java_compile = capture("mvn compile", no_check=True)  # mvn's output is inconsistent

# Test each combo
client_captures = {}  # server target, client target -> captured client output
server_captures = {}  # server target -> captured server output
for server_target, server_cmd, _, server_pattern, server_no_check in targets:
    server_bg = capture_bg(server_cmd, no_check=server_no_check)
    for client_target, _, client_cmd, client_pattern, client_no_check in targets:
        key = server_target, client_target
        client_captures[key] = capture(client_cmd + " # " + server_target, no_check=client_no_check)
        assert "Responding to [Hello from %s!] from %s" % (client_pattern, server_pattern) in \
               client_captures[key].output
    server_bg.terminate()
    server_captures[server_target] = server_bg.get_captured()
