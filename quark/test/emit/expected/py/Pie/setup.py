# Setup file for package Pie

from setuptools import setup

setup(name="Pie",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'Pie_md', 'Pie_lib'])
