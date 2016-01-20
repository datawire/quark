# Setup file for package slackpack

from setuptools import setup

setup(name="slackpack",
      version="0.1.0",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'slack', 'slack.event', 'pkg', 'slackpack_md', 'pkg_slack_common'])
