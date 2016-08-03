import pytest
import sys
import quarkc.test.qtest as qtest

@pytest.hookimpl(hookwrapper=True)
def pytest_collection_modifyitems(items):
    """When running with xdist plugin the pytest_collection_modifyitems
    will not get invoked by master but by slaves, install quark
    runtime from xdist hooks from the master process

    """
    outcome = yield
    if items and not hasattr(items[0].config, 'slaveinput'):
        qtest.QuarkRuntime.master = True
        qtest.QuarkRuntime.prime_quark_install(i.nodeid for i in items)


def pytest_xdist_setupnodes(config, specs):
    qtest.QuarkRuntime.master = True

def pytest_xdist_node_collection_finished(node, ids):
    qtest.QuarkRuntime.prime_quark_install(ids)
