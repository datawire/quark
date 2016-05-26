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
from glob import glob

import pexpect

quark_contents = """
void main(List<String> args) {
    logging.makeConfig().setLevel("ERROR").configure();
    Logger l = new Logger("tet");
    l.trace("trace");
    l.debug("debug");
    l.info("info");
    l.warn("warn");
    l.error("error");
}
"""

trace = "QUARK_TRACE"


def test_env_tracing():
    temp = mkdtemp()
    try:

        quark_file_name = os.path.join(temp, "tet.q")
        with open(quark_file_name, "wb") as quark_file:
            quark_file.write(quark_contents)

        lang = "javascript"

        child = pexpect.spawn("quark install --%s %s" % (lang, quark_file_name), logfile=sys.stdout)
        child.expect(pexpect.EOF, timeout=300)
        assert child.before.splitlines()[-1].strip() == "Done"

        child_env = {}
        child_env.update(os.environ)
        if trace in child_env:
            del child_env[trace]

        print
        print "Run no trace", lang
        child = pexpect.spawn("quark run --%s %s" % (lang, quark_file_name), logfile=sys.stdout, env=child_env)
        child.expect(pexpect.EOF, timeout=300)

        print
        print "Run trace 1"
        child_env[trace] = "1"
        child = pexpect.spawn("quark run --javascript %s" % quark_file_name, logfile=sys.stdout, env=child_env)
        child.expect(pexpect.EOF, timeout=300)

        print
        print "Run trace to file"
        trace_file_name = os.path.join(temp, "trace.log")
        child_env[trace] = trace_file_name
        child = pexpect.spawn("quark run --javascript %s" % quark_file_name, logfile=sys.stdout, env=child_env)
        child.expect(pexpect.EOF, timeout=300)

        print
        print "trace file contents"
        print open(trace_file_name).read()

    finally:
        shutil.rmtree(temp)


def main():
    test_env_tracing()


if __name__ == "__main__":
    main()
