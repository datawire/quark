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

"""This module contains IR nodes that are not part of the API between
frontend and backend

"""

from .ir import Method

class Snowflake(str):
    """Avoid dictionary lookup of reserved identifiers 

    For example, to model quark free functions the Java target creates
    a "Functions" class with static methods in it. To prevent quark
    classes named Functions to interfere with the generated class, two
    steps are necessary for each special name:

    - The special name should be tagged with the Snowflake

    - The special name should be put on the list of target reserved
      words

    """
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
