#!/usr/bin/env python

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

import os
import re
import sys
import tempfile
import time
from glob import glob

import pexpect


template = """quark *;

%(includes)s

void main(List<String> args) {
    List<String> packages = [
%(package_list)s
    ];

%(usages)s

    int failures = quark.test.testPackages(packages, [], false);
    if (failures > 0) {
        quark.concurrent.Context.runtime().fail("Test run failed.");
    }
}
"""


def bold(s):
    return "\x1b[1m" + s + "\x1b[0m"


def pkg_name_of(path):
    return os.path.basename(path)[:-2]


def run_lib_tests():
    start_time = time.time()
    print
    os.chdir(os.path.join(os.path.dirname(__file__), "lib"))
    test_paths = glob("*_test.q")
    test_paths = [path for path in test_paths if "http_test" not in path and "ws_test" not in path]
    assert test_paths, "No test files found"

    classRe = re.compile(r"class\s+([A-z0-9_]+Test)[A-z0-9_\s]*{")
    classes = []
    for path in test_paths:
        matches = classRe.findall(open(path).read())
        assert matches, "No test classes found in %s" % path
        for match in matches:
            classes.append("{}.{}".format(pkg_name_of(path), match))

    ctx = {}
    ctx["includes"] = "\n".join("include {};".format(path) for path in test_paths)
    ctx["package_list"] = ",\n".join(" " * 8 + '"{}"'.format(pkg_name_of(path)) for path in test_paths)
    ctx["usages"] = "\n".join("    {} usage{};".format(name, idx) for idx, name in enumerate(classes))
    with tempfile.NamedTemporaryFile(prefix="run_lib_tests_", suffix=".q", dir=".") as fd:
        quark_file_name = fd.name
        fd.write(template % ctx)
        fd.flush()

        languages = "java python python3 javascript ruby".split()
        child = pexpect.spawn("quark install --%s %s" % (" --".join(languages), quark_file_name), logfile=sys.stdout)
        child.expect(pexpect.EOF, timeout=300)
        assert child.before.splitlines()[-1].strip() == "Done"

        saved = []
        success = True
        for language in languages:
            child = pexpect.spawn("quark run --%s %s" % (language, quark_file_name), logfile=sys.stdout)
            child.expect(pexpect.EOF, timeout=300)
            lines = child.before.splitlines()
            totalIdx = ([-10] + [idx for idx, line in enumerate(lines) if "Total: " in line])[-1]
            saved.append([bold(language)] + lines[totalIdx:])
            success = success and child.wait() == 0

        print
        print
        print bold(("=" * 35) + " Summary " + ("=" * 34))
        for result in saved:
            print "\n  ".join(result)
        print
        print "Test run took %.2f seconds" % (time.time() - start_time)

    try:
        os.unlink(quark_file_name + "c")
    except OSError:
        pass

    return success


def test_lib_all(capsys):
    try:
        with capsys.disabled():  # Disable capture of output for this test
            success = run_lib_tests()
    except AttributeError:
        success = run_lib_tests()
    assert success
