# Setup file for package logging_config

from setuptools import setup

setup(name="logging_config",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['logging_config'],
      packages=['logging_config', 'logging_config_md'])
