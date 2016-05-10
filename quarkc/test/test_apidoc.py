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
import sys
import shutil

import pexpect
import pytest


directory = os.path.dirname(__file__)
files = ["parse/annotations.q"]
paths = [os.path.join(directory, name) for name in files]


def do_output(directory):
    result = os.path.join(directory, "output")
    if os.path.exists(result):
        shutil.rmtree(result)
    os.mkdir(result)
    return result


@pytest.fixture(params=paths)
def annotated(request):
    return request.param


def test_apidoc_json(annotated):
    target = os.path.join(directory, "apidoc")
    do_output(target)

    child = pexpect.spawn("quark docs %s" % annotated, logfile=sys.stdout, cwd=target)
    child.expect(pexpect.EOF, timeout=300)
    assert child.before.splitlines()[-1].strip() == "Done"

    name = os.path.basename(annotated)[:-2]  # drop ".q" at the end
    expected = open(os.path.join(target, "expected", name, "api.json")).read()
    actual = open(os.path.join(target, "output", name, "api.json")).read()

    assert expected == actual
