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

def is_excluded_file(name):
    if name.endswith("quark/builtin.q"):
        return True
    else:
        return False

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

def maybe_xfail(code, ext=None):
    if "xfail" in code and "xfail:" not in code:
        pytest.xfail()
    if ext and ("xfail:%s"%ext) in code:
        pytest.xfail()
