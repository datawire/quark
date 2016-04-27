# Setup file for package slackpack

from setuptools import setup

setup(name="slackpack",
      version="1.0.0",
      install_requires=["quark==0.0.1"],
      py_modules=[],
      packages=['slack', 'slack.event', 'slackpack', 'slackpack_md'])
