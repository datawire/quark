# Setup file for package implicit_self

from setuptools import setup

setup(name="implicit_self",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'implicit_self_md', 'implicit_self'])
