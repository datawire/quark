import os, pytest
from quark.parser import Parser

directory = os.path.dirname(__file__)

files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

@pytest.fixture(params=paths)
def path(request):
    return request.param

def test_parser(path):
    text = open(path).read()
    p = Parser()
    ast = p.parse(text)
    astpath = os.path.splitext(path)[0] + ".ast"
    try:
        saved = open(astpath).read()
    except IOError, e:
        saved = None
    computed = str(ast)
    if saved != computed:
        open(astpath + ".cmp", "write").write(computed)
    assert computed == saved
