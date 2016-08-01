# Copyright 2015 datawire. All rights reserved.
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

"""
Tests for the Quark test runner that can't be accommodated some other way.
"""

import os
from subprocess import Popen, check_call


TESTING_FILE = os.path.join(os.path.dirname(__file__), "test_testing.q")


def install_and_run(quark_file, test_name):
    """Install and run a specific test in a quark file, return the exit code."""
    check_call(["quark", "install", "--python", quark_file])
    p = Popen(["quark", "run", "--python", quark_file, test_name])
    return p.wait()


def test_success():
    """A successful test run by the Quark test runner has exit code 0."""
    code = install_and_run(TESTING_FILE, "testSucceed")
    assert code == 0


def test_failure():
    """A failed test run by the Quark test runner has exit code 1."""
    code = install_and_run(TESTING_FILE, "testFail")
    assert code == 1
