# Setup file for package json_coersion

from setuptools import setup

setup(name="json_coersion",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['json_coersion'],
      packages=['json_coersion_md'])
