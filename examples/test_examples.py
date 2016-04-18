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
import shutil
import filecmp
import tempfile
from glob import glob
import re

import pytest

from quarkc.test import capture_output, generate_docs
from quarkc.test.util import get_git_top

qc_files_found = True  # *.qc files break example tests and doc generation

gtd = "gen-test"    # Name of directory where doc generation and test stuff is found
pyf = "execute.py"  # Name of python file to be executed in the above directory
exd = "expected"
acd = "output"
directory = os.path.join(os.path.dirname(__file__))

examples = [name for name in os.listdir(directory)
            if os.path.exists(os.path.join(directory, name, gtd))]


@pytest.fixture(params=examples)
def example(request):
    return request.param


def check_diff(diff):
    filt = capture_output.filter_no_check
    assert not filt(diff.left_only), filt(diff.left_only)
    assert not filt(diff.right_only), filt(diff.right_only)
    assert not filt(diff.diff_files), filt(diff.diff_files)
    for common_dirname, common_sub_diff in diff.subdirs.items():
        if filt([common_dirname]):
            check_diff(common_sub_diff)


boilerplate = """# Set up environment for test and capture
import re
from quarkc.test.capture_output import Session
session = Session("%s", "%s", "%s")
capture = session.capture
capture_bg = session.capture_bg
# --
"""


def run_python_old(py_file, session_name, cwd, output_dir):
    with tempfile.TemporaryFile() as modulish:
        modulish.write(boilerplate % (session_name, cwd, output_dir))
        modulish.write(open(py_file, "U").read())  # Read with universal newlines for exec
        scope = locals().copy()
        modulish.seek(0)
        exec(modulish, scope)
    return scope


def run_python(py_file, session_name, cwd, output_dir):
    session = capture_output.Session(session_name, cwd, output_dir)
    scope = dict(re=re, session=session, capture=session.capture, capture_bg=session.capture_bg)
    exec(open(py_file, "U"), scope)
    return scope


def gen_docs(scope, src_dir, dest_dir):
    env = generate_docs.make_env()
    for filename in glob(os.path.join(src_dir, "*.jinja2")):
        template = env.from_string(open(filename).read())
        with open(os.path.join(dest_dir, os.path.basename(filename)[:-7]), "wb") as out:
            out.write(template.render(scope))


def test_no_qc():
    global qc_files_found
    git_top = get_git_top()
    print "To delete *.qc files:"
    print """find %s -type f -name "*.qc" -print0 | xargs -0 rm""" % git_top
    for root, dirs, files in os.walk(git_top):
        for filename in files:
            assert not filename.endswith(".qc"), "Example tests will not pass when *.qc files are present"
    qc_files_found = False


def test_example(example):
    if qc_files_found:
        pytest.xfail("Example tests will not pass when *.qc files are present")
    cwd = os.path.join(directory, example)
    gen_dir = os.path.join(directory, example, gtd)
    ex_dir = os.path.join(gen_dir, exd)
    ac_dir = os.path.join(gen_dir, acd)
    py_file = os.path.join(gen_dir, pyf)

    assert os.path.exists(ex_dir)
    assert os.path.exists(py_file)

    if os.path.exists(ac_dir):
        shutil.rmtree(ac_dir, ignore_errors=True)
    os.mkdir(ac_dir)

    scope = run_python(py_file, example, cwd, ac_dir)
    gen_docs(scope, gen_dir, cwd)

    diff = filecmp.dircmp(ex_dir, ac_dir, )
    check_diff(diff)
