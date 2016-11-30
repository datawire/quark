import os
from quarkc.ir import IR

def load_sample(path):
    return IR.load_path(os.path.join(os.path.dirname(__file__), "ffi_ir", path))

def fibonacci_ir():
    return load_sample("fibonacci.ir")

def minimal_ir():
    return load_sample("minimal_q.ir")
