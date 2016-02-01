# Setup file for package macro_pie

from setuptools import setup

setup(name="macro_pie",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['macro_pie'],
      packages=['macro_pie_md'])
