# Setup file for package void_return

from setuptools import setup

setup(name="void_return",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'void_return_md', 'void_return'])
