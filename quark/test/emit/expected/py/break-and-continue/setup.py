# Setup file for package break_and_continue

from setuptools import setup

setup(name="break_and_continue",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'break_and_continue_md', 'break_and_continue_lib'])
