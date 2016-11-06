import os
from quarkc.ir import IR

def load_sample(path):
    return IR.load_path(os.path.join(os.path.dirname(__file__), "ffi_ir", path))

def fibonacci_ir():
    return load_sample("fibonacci.ir")

def minimal_ir():
    return load_sample("minimal_q.ir")

def native_int():
    return load_sample("native_int.ir")

def native_map_string_string():
    return load_sample("native_map_string_string.ir")

def native_map_string_int():
    return load_sample("native_map_string_int.ir")
