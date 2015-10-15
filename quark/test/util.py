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

import os, pytest

def check_file(path, content):
    try:
        with open(path) as fd:
            expected = fd.read()
    except IOError, e:
        expected = None
    if expected != content:
        dir = os.path.dirname(path)
        if not os.path.exists(dir):
            os.makedirs(dir)
        with open(path + ".cmp", "wb") as fd:
            fd.write(content)
    return expected

def assert_file(path, content):
    expected = check_file(path, content)
    assert content == expected

def maybe_xfail(code):
    if "xfail" in code:
        pytest.xfail()
