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

from setuptools import setup

metadata = {}
with open("quark/_metadata.py") as fp:
    exec(fp.read(), metadata)

setup(name='datawire-quarkdev',
      version=metadata["__version__"],
      description=metadata["__summary__"],
      author=metadata["__author__"],
      author_email=metadata["__email__"],
      url=metadata["__uri__"],
      license=metadata["__license__"],
      packages=['quark'],
      package_data={'': ['*.q']},
      include_package_data=True,
      install_requires=["docopt==0.6.2",
                        "parsimonious==0.6.2",
                        "sphinx>=1.3.1",
                        "wheel",
                        "markdown",
                        "datawire-quark-core==%s" % metadata["__py_runtime_version__"]],
      entry_points={"console_scripts": ["quark = quark.command:call_main",
                                        "quark-grammar = quark.parser:rules"]},
      keywords=['IDL', 'service', 'microservice', 'RPC', 'async'],
      classifiers=[
          'Development Status :: 3 - Alpha',
          'Environment :: Console',
          'Intended Audience :: Developers',
          'License :: OSI Approved :: Apache Software License',
          'Operating System :: MacOS',
          'Operating System :: OS Independent',
          'Operating System :: POSIX',
          'Programming Language :: Java',
          'Programming Language :: JavaScript',
          'Programming Language :: Python',
          'Topic :: Software Development'
      ]
)
