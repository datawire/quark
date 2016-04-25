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
from glob import glob
import re
import time

import pytest

from quarkc.test import capture_output, generate_docs
from quarkc.test.util import get_git_top

git_top = get_git_top()

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
    filt = capture_output.filter_nocmp
    assert not filt(diff.left_only), filt(diff.left_only)
    assert not filt(diff.right_only), filt(diff.right_only)
    assert not filt(diff.diff_files), filt(diff.diff_files)
    for common_dirname, common_sub_diff in diff.subdirs.items():
        if filt([common_dirname]):
            check_diff(common_sub_diff)


class Filters(object):

    isodateRE = re.compile(r"\d{4}-[01]\d-[0-3]\d")
    isotimeRE = re.compile(r"[0-2]\d:[0-5]\d(:[0-5]\d(\.\d+)?)?")
    isoTZRE = re.compile(r"(Z)|([+-][01]\d:[0-5]\d)")
    isoDTRE = re.compile(isodateRE.pattern + "T" + isotimeRE.pattern + "(T" + isoTZRE.pattern + ")?")

    @staticmethod
    def repo(text):
        return "\n".join(line.replace(git_top, "$REPO") for line in text.split("\n"))

    @staticmethod
    def isodate(text):
        return "\n".join(Filters.isodateRE.sub("yyyy-mm-dd", line) for line in text.split("\n"))

    @staticmethod
    def isotime(text):
        return "\n".join(Filters.isotimeRE.sub("HH:MM:SS", line) for line in text.split("\n"))

    @staticmethod
    def maven(text):
        # XXX Needs more work; these are inconsistent as well:
        # [INFO] Total time: 7.143 s
        # [INFO] Final Memory: 15M/245M
        return "\n".join(Filters.isoDTRE.sub("yyyy-mm-ddTHH:MM:SSTZD", line) for line in text.split("\n"))

    @staticmethod
    def quark_install(text):
        lines = text.split("\n")  # Avoid .splitlines, which tosses ^M chars
        res = []
        for line in lines:
            if line.startswith("Writing ") and "quarkc/lib/quark.q" in line:
                continue
            if line.startswith("Installing ") and line.split()[2] == "quark":
                continue
            res.append(line)
        return "\n".join(res)


class Helpers(object):

    def __init__(self, capture):
        self.capture = capture

    def quark_install(self, command):
        res = self.capture("quark install " + command, filters=[Filters.repo, Filters.quark_install], nocmp=True)
        assert res.output.splitlines()[-1] == "Done"
        return res

    def mvn(self, command):
        res = self.capture("mvn " + command, nocmp=True)
        assert "BUILD SUCCESS" in res.output
        return res


def run_python(py_file, session_name, cwd, output_dir):
    session = capture_output.Session(session_name, cwd, output_dir)
    scope = dict(re=re, sleep=time.sleep,
                 session=session, capture=session.capture, capture_bg=session.capture_bg, filters=Filters,
                 helpers=Helpers(session.capture))
    exec(open(py_file, "U"), scope)
    return scope


def gen_docs(scope, src_dir, dest_dir):
    env = generate_docs.make_env()
    for filename in glob(os.path.join(src_dir, "*.jinja2")):
        template = env.from_string(open(filename).read())
        with open(os.path.join(dest_dir, os.path.basename(filename)[:-7]), "wb") as out:
            out.write(template.render(scope))


def test_example(example):
    cwd = os.path.join(directory, example)
    gen_dir = os.path.join(directory, example, gtd)
    ex_dir = os.path.join(gen_dir, exd)
    ac_dir = os.path.join(gen_dir, acd)
    py_file = os.path.join(gen_dir, pyf)

    assert os.path.exists(py_file), "No test file found: %s" % py_file

    if os.path.exists(ac_dir):
        shutil.rmtree(ac_dir, ignore_errors=True)
    os.mkdir(ac_dir)

    scope = run_python(py_file, example, cwd, ac_dir)
    gen_docs(scope, gen_dir, cwd)

    diff = filecmp.dircmp(ex_dir, ac_dir)
    check_diff(diff)
