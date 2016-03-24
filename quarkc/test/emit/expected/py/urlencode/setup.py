# Setup file for package urlencode

from setuptools import setup

setup(name="urlencode",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['urlencode'],
      packages=['urlencode', 'urlencode_md'])
