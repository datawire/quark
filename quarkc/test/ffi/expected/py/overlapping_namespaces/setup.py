# Setup file for package overlapping_namespace

from setuptools import setup

setup(name="overlapping_namespace",
      version="0.1.0",
      install_requires=["wheel", "quark==1.0.406", "org_example_foo==0.1.0"],
      setup_requires=["wheel"],
      py_modules=[],
      packages=['org', 'org.example', 'org.example.bar', 'overlapping_namespace_md'])
