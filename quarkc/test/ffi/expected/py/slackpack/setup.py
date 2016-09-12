# Setup file for package slackpack

from setuptools import setup

setup(name="slackpack",
      version="1.0.0",
      install_requires=["wheel", "quark==1.0.406"],
      setup_requires=["wheel"],
      py_modules=[],
      packages=['slack', 'slack.event', 'slackpack', 'slackpack_md'])
