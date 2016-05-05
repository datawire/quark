from pytest import raises

from quarkc.environment import Environment


def test_query_environment():
    env = Environment()
    env['foo'] = 1
    assert env['foo'] == 1


def test_environment_inclusion():
    env = Environment()
    env['foo'] = 1
    assert 'foo' in env


def test_equal_names_collide():
    env = Environment()
    env['foo'] = 1
    with raises(env.NameCollisionError):
        env['foo'] = 2


def test_names_that_differ_only_in_case_collide():
    env = Environment()
    env['foo'] = 1
    with raises(env.NameCollisionError):
        env['FOO'] = 2
