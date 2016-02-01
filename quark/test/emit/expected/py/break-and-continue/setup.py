# Setup file for package break_and_continue

from setuptools import setup

setup(name="break_and_continue",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['break_and_continue'],
      packages=['break_and_continue_md'])
