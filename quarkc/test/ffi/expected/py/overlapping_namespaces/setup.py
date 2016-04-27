# Setup file for package overlapping_namespace

from setuptools import setup

setup(name="overlapping_namespace",
      version="0.1.0",
      install_requires=["quark==0.0.1", "org_example_foo==0.1.0"],
      py_modules=[],
      packages=['org', 'org.example', 'org.example.bar', 'overlapping_namespace_md'])
