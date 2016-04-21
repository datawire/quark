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
Helpers for generating documentation using Jinja2 templates.
"""

import jinja2


def filter_commandline(value, prompt="$ "):
    return prompt + value.command


def filter_output(value):
    return "\n    ".join(value.output.split("\n"))


jinja2_filters = dict(commandline=filter_commandline,
                      output=filter_output)


def make_env():
    env = jinja2.Environment()
    for key, value in jinja2_filters.items():
        env.filters[key] = value
    return env
