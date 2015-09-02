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

from quark.backend import Java
from quark.compiler import Compiler, CompileError

def test_emit():
    c = Compiler()
    c.parse("""
class Test {
    Test add(Test t) {}

    void test() {
        int x = 2;
        int y = 2;
        int z = x + y;
        String hello = "hello";
        Test t1;
        Test t2;
        t1 + t2;
        int four = 2 + 2;
    }
}
""")
    c.compile()
    b = Java()
    c.emit(b)
    assert b.files["Test.java"] == """public class Test {
    public Test add(Test t) {}
    public void test() {
        int x = 2;
        int y = 2;
        int z = (x) + (y);
        String hello = "hello";
        Test t1;
        Test t2;
        (t1) + (t2);
        int four = (2) + (2);
    }
}"""
