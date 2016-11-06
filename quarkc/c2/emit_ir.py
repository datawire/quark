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

from .ir import Method, Class

class Snowflake(str):
    """ Avoid dictionary lookup of reserved identifiers """
    def split(self, sep):
        return (self,)

    def __eq__(self, other):
        return type(self) is type(other) and str(self) == str(other)

    def __ne__(self, other):
        return not self.__eq__(other)

    def __hash__(self):
        return hash(str(self))

    def __repr__(self):
        return "%s(%s)" % (self.__class__.__name__, repr(str(self)))


class StaticMethod(Method):
    """ Java way of doing functions """
    pass

class TestMethod(Method):
    """ target way of doing Checks """
    pass

class TestClass(Class):
    """ Marker for container of TestMethods """
    pass
