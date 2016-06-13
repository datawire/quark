from . import ast
from .versioning import Version, compiler_version_spec_messages
from .messages import Warning


def test_parsing_of_valid_versions():
    """Allowed syntax: `x.y.z`, `x,y`, `*`."""
    assert Version.parse('1.2.3') == Version.Full(1, 2, 3)
    assert Version.parse('1.2') == Version.Full(1, 2, 0)
    assert Version.parse('*') == Version.Star


def test_multiple_digits_are_allowed():
    assert Version.parse('123.456.789') == Version.Full(123, 456, 789)


def test_parsing_of_invalid_versions():
    assert Version.parse('1') == Version.Invalid
    assert Version.parse('1.2.3.4') == Version.Invalid
    assert Version.parse('1.2.3-alpha') == Version.Invalid
    assert Version.parse('1.2.3+alpha') == Version.Invalid


def test_star_matches_any_full_version():
    assert Version.Star.is_compatible_with(Version.Full(1, 2, 3))
    assert Version.Star.is_compatible_with(Version.Full(0, 1, 2))


def test_versions_are_incompatible_if_major_version_differs():
    assert not Version.Full(1, 2, 3).is_compatible_with(Version.Full(0, 1, 2))


def test_if_major_are_same_versions_are_incompatible_if_minor_is_behind():
    assert not Version.Full(1, 2, 3).is_compatible_with(Version.Full(1, 0, 3))


def test_if_major_minor_are_same_versions_incompatible_if_patch_is_behind():
    assert not Version.Full(1, 2, 3).is_compatible_with(Version.Full(1, 2, 0))


def test_versions_are_compatible_if_major_is_same_and_right_is_ahead():
    assert Version.Full(1, 2, 3).is_compatible_with(Version.Full(1, 3, 0))
    assert Version.Full(1, 2, 3).is_compatible_with(Version.Full(1, 2, 4))


def test_versions_are_compatible_if_equal():
    assert Version.Full(1, 2, 3).is_compatible_with(Version.Full(1, 2, 3))


def test_if_version_declaration_is_missing_compiler_emmits_a_warning():
    file_node = ast.File('test.q', [])
    file_node.line, file_node.column = 0, 0

    messages = list(compiler_version_spec_messages([file_node]))
    [warning] = messages

    assert isinstance(warning, Warning)
    assert 'version declaration is missing' in str(warning)
