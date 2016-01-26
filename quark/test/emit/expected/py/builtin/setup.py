# Setup file for package builtin

from setuptools import setup

setup(name="builtin",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2"],
      packages=['builtin', 'builtin.reflect', 'builtin.behaviors', 'builtin.concurrent', 'builtin_md'])
