# Setup file for package macro_pie

from setuptools import setup

setup(name="macro_pie",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'macro_pie_md', 'macro_pie_lib'])
