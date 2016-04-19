# Test the fallback example

# Install everything all-at-once. This will generate the .qc files.

install_all = helpers.quark_install("fallback.q")

# Capture individual compile/install stuff

java_quark_install = helpers.quark_install("--java fallback.q")
java_mvn_compile = helpers.mvn("compile")
python_quark_install = helpers.quark_install("--python fallback.q")
javascript_quark_install = helpers.quark_install("--javascript fallback.q")
#ruby_quark_install = helpers.quark_install("--ruby fallback.q")

with capture_bg("python -m SimpleHTTPServer 8000", nocmp=True) as server_bg:  # timestamps in output
    server_bg.child.expect("Serving HTTP on 0.0.0.0 port 8000")

    java_client = helpers.mvn("exec:java -Dexec.mainClass=get.Main -Dexec.args=" +
                              '"http://127.0.0.1:8001 http://127.0.0.1:8000"')
    assert "Directory listing" in java_client.output
    server_bg.child.expect("200")

    python_client = capture("python get.py http://127.0.0.1:8001 http://127.0.0.1:8000")
    assert "Directory listing" in python_client.output
    server_bg.child.expect("200")

    javascript_client = capture("node get.js http://127.0.0.1:8001 http://127.0.0.1:8000")
    assert "Directory listing" in javascript_client.output
    server_bg.child.expect("200")
