# Setup file for package quark_ffi_signatures

from setuptools import setup

setup(name="quark_ffi_signatures",
      version="1.0.0",
      install_requires=["wheel", "quark==0.0.1"],
      setup_requires=["wheel"],
      py_modules=[],
      packages=['functions', 'generics', 'generics.constructors', 'generics.pkg', 'generics.ccc', 'inheritance', 'inheritance.t1', 'inheritance.t2', 'inheritance.pets', 'inheritance.super_', 'inheritance.use_before_def', 'interfaces', 'classes', 'classes.stuff', 'statics', 'docs', 'p1', 'p1.p2', 'quark_ffi_signatures_md'])
