# Setup file for package parameterized_defaults

from setuptools import setup

setup(name="parameterized_defaults",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['parameterized_defaults'],
      packages=['pkg', 'parameterized_defaults', 'parameterized_defaults_md'])
