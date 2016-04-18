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

"""
Helpers for testing based on command output capture.
"""

import hashlib
import os

import pexpect


class Captured(object):

    def __init__(self, cwd, source_file, output_file, command):
        self.cwd = cwd
        self.source_file = source_file  # name of command file or none
        self.output_file = output_file  # name of output file for this command
        self.command = command          # command that was run
        self.output = None              # output for this command, i.e. contents of output_file

    def spawn(self):
        child = pexpect.spawn("/bin/bash", ["-c", self.command], cwd=self.cwd, timeout=90)
        child.logfile_read = open(self.output_file, "wb")
        return child

    def do_capture(self, child):
        if self.output is None:
            child.expect(pexpect.EOF)
            self.output = child.before

    def grab_disk_capture(self):
        self.output = open(self.output_file).read()


class BGProcess(object):

    def __init__(self, cap):
        self.cap = cap
        self.child = cap.spawn()

    def terminate(self):
        return self.child.close(force=True)

    def get_captured(self):
        self.cap.grab_disk_capture()
        return self.cap


def filter_no_check(filenames):
    return [filename for filename in filenames if "-no-check" not in filename]


class Session(object):

    def __init__(self, name, cwd, output_dir):
        self.name = name
        self.cwd = cwd
        self.output_dir = output_dir
        self.counter = 0

    def _get_output_name(self, command, no_check):
        hash_obj = hashlib.sha256()
        hash_obj.update(self.name + "-" + command)
        suffix = "-no-check" if no_check else ""
        return os.path.join(self.output_dir, "out-" + hash_obj.digest().encode("hex") + suffix + ".txt")

    def capture(self, command, no_check=False):
        """
        Run the command synchronously and capture the output. Return an
        instance of Captured. Set option no_check to True to tell the
        test driver not to compare this file with expected output.
        """
        cap = Captured(self.cwd, None, self._get_output_name(command, no_check), command)
        child = cap.spawn()
        cap.do_capture(child)
        return cap

    def capture_bg(self, command, no_check=False):
        """
        Run the command asynchronously, capturing the output. Return an
        instance of BGProcess.
        """
        cap = Captured(self.cwd, None, self._get_output_name(command, no_check), command)
        res = BGProcess(cap)
        return res

    def capture_many(self, command_file):
        """
        Read lines from a command file (essentially a shell script).
        Run the command from each line synchronously by sending it to
        bash and capture the output. Return a list of instances of
        Captured. FIXME: Unimplemented.
        """
        raise NotImplementedError()

    def capture_many_bg(self, command_file):
        """
        Not sure what this should do. Unimplemented.
        """
        raise NotImplementedError()
