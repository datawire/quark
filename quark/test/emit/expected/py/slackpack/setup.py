# Setup file for package slackpack

from setuptools import setup

setup(name="slackpack",
      version="0.1.0",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['slackpack'],
      packages=['slack', 'slack.event', 'pkg', 'slackpack_md'])
