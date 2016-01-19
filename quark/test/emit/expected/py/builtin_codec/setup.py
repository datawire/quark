# Setup file for package builtin_codec

from setuptools import setup

setup(name="builtin_codec",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'builtin_codec_md', 'builtin_codec_lib'])
