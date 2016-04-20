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

import urllib
import hashlib
import os

import pexpect


class FilteredOutputFile(object):

    def __init__(self, filename, filters):
        self.file = open(filename, "wb", 0)
        self.filters = filters
        try:
            len(self.filters)
        except TypeError:
            self.filters = [self.filters]
        self.captured = []

    def get_data(self):
        data = "".join(self.captured)
        for filt in self.filters:
            data = filt(data)
        return data

    def write(self, data):
        self.captured.append(data)
        self.file.seek(0)
        self.file.truncate()
        return self.file.write(self.get_data())

    def flush(self):
        return self.file.flush()


class Captured(object):

    def __init__(self, cwd, source_file, output_file, command, filters):
        self.cwd = cwd
        self.source_file = source_file  # name of command file or none
        self.output_file = output_file  # name of output file for this command
        self.command = command          # command that was run
        self.filters = filters
        self.output = None              # output for this command, i.e. contents of output_file

    def spawn(self):
        child = pexpect.spawn("/bin/bash", ["-c", self.command], cwd=self.cwd, timeout=90)
        child.logfile_read = FilteredOutputFile(self.output_file, self.filters)
        return child

    def do_capture(self, child):
        if self.output is None:
            if child.isalive():
                child.expect(pexpect.EOF)
            self.output = child.logfile_read.get_data()


class BGProcess(object):

    def __init__(self, cap):
        self.cap = cap
        self.child = cap.spawn()

    def terminate(self):
        if self.child.isalive():
            self.child.sendintr()
        return self.child.close(force=True)

    def get_captured(self):
        self.cap.do_capture(self.child)
        return self.cap

    def __enter__(self):
        return self

    def __exit__(self, ex_type, ex_value, ex_traceback):
        self.terminate()


def filter_nocmp(filenames):
    return [filename for filename in filenames if "-nocmp" not in filename]


class Session(object):

    def __init__(self, name, cwd, output_dir):
        self.name = name
        self.cwd = cwd
        self.output_dir = output_dir
        self.counter = 0

    def _get_output_name(self, command, nocmp):
        content = urllib.quote_plus(command)
        if len(content) > 64:
            hash_obj = hashlib.sha256()
            hash_obj.update(self.name + "-" + command)
            content = hash_obj.digest().encode("hex")
        suffix = "-nocmp" if nocmp else ""
        return os.path.join(self.output_dir, "out-" + content + suffix + ".txt")

    def capture(self, command, nocmp=False, filters=[]):
        """
        Run the command synchronously and capture the output. Return an
        instance of Captured. Set option nocmp to True to tell the
        test driver not to compare this file with expected output. Pass
        filters to process the output before writing it to disk.
        """
        cap = Captured(self.cwd, None, self._get_output_name(command, nocmp), command, filters)
        child = cap.spawn()
        cap.do_capture(child)
        return cap

    def capture_bg(self, command, nocmp=False, filters=[]):
        """
        Run the command asynchronously, capturing the output. Return an
        instance of BGProcess. Use nocmp and filters as with capture.
        """
        cap = Captured(self.cwd, None, self._get_output_name(command, nocmp), command, filters)
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
