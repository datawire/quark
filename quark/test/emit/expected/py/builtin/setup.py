# Setup file for package builtin

from setuptools import setup

setup(name="builtin",
      version="0.0.1",
      install_requires=["ws4py==0.3.*"],
      py_modules=['quark_runtime', 'quark_threaded_runtime'],
      packages=['builtin', 'builtin.reflect', 'builtin.behaviors', 'builtin.concurrent', 'builtin_md'])
