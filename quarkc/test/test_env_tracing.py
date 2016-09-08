# Copyright 2016 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Test that the QUARK_TRACE environment variable can be used to enable
# DEBUG-level logging without recompiling Quark code.


import sys
import os
from tempfile import mkdtemp
import shutil

import pexpect

quark_contents_config = """quark 1.0;
void main(List<String> args) {
    print("Start of test main()");
    logging.makeConfig().setLevel("WARN").configure();
    Logger log = new Logger("user_code_logging");
    quark.concurrent.Context.runtime().codec();  // Cause a trace message
    log.trace("logged at trace");
    log.debug("logged at debug");
    log.info("logged at info");
    log.warn("logged at warn");
    log.error("logged at error");
    quark.concurrent.Context.runtime().codec();  // Cause a trace message
    print("End of test main()");
}
"""

quark_contents_noconfig = """quark 1.0;
void main(List<String> args) {
    print("Start of test main()");
    //logging.makeConfig().setLevel("WARN").configure(); // commented out, no config
    Logger log = new Logger("user_code_logging");
    quark.concurrent.Context.runtime().codec();  // Cause a trace message
    log.trace("logged at trace");
    log.debug("logged at debug");
    log.info("logged at info");
    log.warn("logged at warn");
    log.error("logged at error");
    quark.concurrent.Context.runtime().codec();  // Cause a trace message
    print("End of test main()");
}
"""


def assert_user_none(content):
    assert "WARN quark.user_code_logging" not in content
    assert "ERROR quark.user_code_logging" not in content
    assert "INFO quark.user_code_logging" not in content
    assert "DEBUG quark.user_code_logging" not in content
    assert "TRACE quark.user_code_logging" not in content


def assert_user_info(content):
    assert "WARN quark.user_code_logging" in content
    assert "ERROR quark.user_code_logging" in content
    assert "INFO quark.user_code_logging" in content
    assert "DEBUG quark.user_code_logging" not in content
    assert "TRACE quark.user_code_logging" not in content


def assert_user_warn(content):
    assert "WARN quark.user_code_logging" in content
    assert "ERROR quark.user_code_logging" in content
    assert "INFO quark.user_code_logging" not in content
    assert "DEBUG quark.user_code_logging" not in content
    assert "TRACE quark.user_code_logging" not in content


def assert_user_debug(content):
    assert "WARN quark.user_code_logging" in content
    assert "ERROR quark.user_code_logging" in content
    assert "INFO quark.user_code_logging" in content
    assert "DEBUG quark.user_code_logging" in content
    assert "TRACE quark.user_code_logging" not in content


def assert_user_trace(content):
    assert "WARN quark.user_code_logging" in content
    assert "ERROR quark.user_code_logging" in content
    assert "INFO quark.user_code_logging" in content
    assert "DEBUG quark.user_code_logging" in content
    assert "TRACE quark.user_code_logging" in content


def assert_quark_trace(content):
    assert content.count("DEBUG quark.api Runtime$0.codec()") == 2


def assert_not_quark_trace(content):
    assert "DEBUG quark.api Runtime$0.codec()" not in content


def do_quark_run(filename, language, env, unenv=()):
    child_env = {}
    child_env.update(os.environ)
    for name in unenv:
        if name in child_env:
            del child_env[name]
    child_env.update(env)
    child = pexpect.spawn("quark run --%s %s" % (language, filename), logfile=sys.stdout, env=child_env)
    child.expect(pexpect.EOF, timeout=300)
    lines = child.before.splitlines()
    assert lines[0].strip() == "Start of test main()"
    assert lines[-1].strip() == "End of test main()"
    return child.before


def fetch_file(filename):
    try:
        return open(filename).read()
    except IOError:
        return None


def test_env_tracing():
    languages = "java python javascript ruby python3".split()
    qtrace = "QUARK_TRACE"
    ttrace = "TET_TRACE"  # Use this to test the user's env overrides
    unenv = qtrace, ttrace

    temp = mkdtemp()
    try:
        quark_file_name = os.path.join(temp, "tetc.q")
        with open(quark_file_name, "wb") as quark_file:
            quark_file.write(quark_contents_config)
        child = pexpect.spawn("quark install --%s %s" % (" --".join(languages), quark_file_name), logfile=sys.stdout)
        child.expect(pexpect.EOF, timeout=300)
        assert child.before.splitlines()[-1].strip() == "Done"
        del child

        for language in languages:
            qtrace_file_name = os.path.join(temp, "qtrace-config-%s.log" % language)
            ttrace_file_name = os.path.join(temp, "ttrace-config-%s.log" % language)

            print
            print language, "-- logging configured", "==" * 20

            print
            print "Run no qtrace no ttrace", language
            output = do_quark_run(quark_file_name, language, {}, unenv)
            assert_user_warn(output)
            assert_not_quark_trace(output)
            assert fetch_file(qtrace_file_name) is None
            assert fetch_file(ttrace_file_name) is None

            print
            print "Run qtrace 1 no ttrace", language
            output = do_quark_run(quark_file_name, language, {qtrace: "1"}, unenv)
            assert_user_debug(output)
            assert_quark_trace(output)
            assert fetch_file(qtrace_file_name) is None
            assert fetch_file(ttrace_file_name) is None

            print
            print "Run qtrace file no ttrace", language
            output = do_quark_run(quark_file_name, language, {qtrace: qtrace_file_name}, unenv)
            assert_user_none(output)
            assert_not_quark_trace(output)

            print
            print "qtrace file contents", language
            qtrace_contents = fetch_file(qtrace_file_name)
            assert qtrace_contents is not None
            print qtrace_contents
            assert_user_debug(qtrace_contents)
            assert_quark_trace(qtrace_contents)
            assert fetch_file(ttrace_file_name) is None

        quark_file_name = os.path.join(temp, "tetn.q")
        with open(quark_file_name, "wb") as quark_file:
            quark_file.write(quark_contents_noconfig)
        child = pexpect.spawn("quark install --%s %s" % (" --".join(languages), quark_file_name), logfile=sys.stdout)
        child.expect(pexpect.EOF, timeout=300)
        assert child.before.splitlines()[-1].strip() == "Done"
        del child

        for language in languages:
            qtrace_file_name = os.path.join(temp, "qtrace-noconfig-%s.log" % language)
            ttrace_file_name = os.path.join(temp, "ttrace-noconfig-%s.log" % language)

            print
            print language, "-- logging NOT configured", "==" * 20

            # XXX: I dont think we can test this case because default
            # behavior is language dependent.
            # print
            # print "Run no qtrace no ttrace", language
            # output = do_quark_run(quark_file_name, language, {}, unenv)
            # assert_user_info(output)
            # assert_not_quark_trace(output)
            # assert fetch_file(qtrace_file_name) is None
            # assert fetch_file(ttrace_file_name) is None

            print
            print "Run qtrace 1 no ttrace", language
            output = do_quark_run(quark_file_name, language, {qtrace: "1"}, unenv)
            assert_user_debug(output)
            assert_quark_trace(output)
            assert fetch_file(qtrace_file_name) is None
            assert fetch_file(ttrace_file_name) is None

            print
            print "Run qtrace file no ttrace", language
            output = do_quark_run(quark_file_name, language, {qtrace: qtrace_file_name}, unenv)
            assert_user_none(output)
            assert_not_quark_trace(output)

            print
            print "qtrace file contents", language
            qtrace_contents = fetch_file(qtrace_file_name)
            assert qtrace_contents is not None
            print qtrace_contents
            assert_user_debug(qtrace_contents)
            assert_quark_trace(qtrace_contents)
            assert fetch_file(ttrace_file_name) is None

    finally:
        shutil.rmtree(temp)


def main():
    test_env_tracing()


if __name__ == "__main__":
    main()
