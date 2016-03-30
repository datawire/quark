# Setup file for package quark_delegate

from setuptools import setup

setup(name="quark_delegate",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['quark_delegate'],
      packages=['quark_delegate', 'quark_delegate_md'])
