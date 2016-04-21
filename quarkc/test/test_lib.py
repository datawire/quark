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

import os, pexpect, sys

directory = os.path.join(os.path.dirname(__file__), "lib")
files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

def test_lib():
    child = pexpect.spawn("quark install %s" % " ".join(paths))
    child.logfile = sys.stdout
    child.expect("Done", timeout=300)
    child.expect(pexpect.EOF)

    for lang in ("--java", "--python", "--ruby", "--javascript"):
        banner = "##############################################################################"
        pretty = lang[2:].upper()
        print
        print banner 
        n = len(banner)-4-len(pretty)
        print "##" + (" "*(n/2)) + pretty + (" "*(n - n/2)) + "##"
        print banner

        for path in paths:
            child = pexpect.spawn("quark run %s %s" % (lang, path))
            child.logfile = sys.stdout
            child.expect("Failed: 0")
            child.expect(pexpect.EOF)
