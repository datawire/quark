# Setup file for package json_building

from setuptools import setup

setup(name="json_building",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['json_building'],
      packages=['json_building', 'json_building_md'])
