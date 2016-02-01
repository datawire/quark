# Setup file for package defaulted_methods

from setuptools import setup

setup(name="defaulted_methods",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['defaulted_methods'],
      packages=['pkg', 'defaulted_methods_md'])
