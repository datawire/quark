from collections import namedtuple
from re import compile as re

from ._metadata import __version__
from .helpers import lineinfo
import ast
import messages
from messages import Error, Warning


class Version:

    class Full(namedtuple('FullVersion', ['major', 'minor', 'patch'])):
        """Version of form `X.Y.Z`."""

        def is_compatible_with(self, compiler_version):
            return (compiler_version.major == self.major and
                    (compiler_version.minor > self.minor or
                     (compiler_version.minor == self.minor and
                      (compiler_version.patch >= self.patch))))

        def __str__(self):
            return "%s.%s.%s" % (self.major, self.minor, self.patch)

    class Star(object):
        """Version `*` singleton."""

        @staticmethod
        def is_compatible_with(_):
            return True

    class Invalid(object):
        """Version that didn't parse correctly."""

    _re = re(r"""(?x)
        \A(?:
            (\d+)\.(\d+)(?:\.(\d+))? | (\*)
        )\Z
    """)

    @classmethod
    def parse(cls, source):
        match = cls._re.match(source)
        if not match:
            return cls.Invalid
        major, minor, patch, star = match.groups()
        if star:
            return cls.Star
        else:
            return cls.Full(int(major), int(minor), int(patch or 0))


COMPILER_VERSION = Version.parse(__version__)
assert isinstance(COMPILER_VERSION, Version.Full)


def version_spec_string_messages(spec_string, location):
    version = Version.parse(spec_string)

    if version is Version.Invalid:
        yield Error(messages.version_spec_malformed(
            location=location,
            compiler_version=COMPILER_VERSION,
        ))
    else:
        if not version.is_compatible_with(COMPILER_VERSION):
            yield Error(messages.compiler_version_incompatible_with_source(
                location=location,
                compiler_version=COMPILER_VERSION,
                source_version_spec=spec_string,
            ))


def compiler_version_spec_messages(file_nodes):
    for file in file_nodes:
        assert isinstance(file, ast.File)
        compiler_version_spec_nodes = [
            node for node in file.children
            if isinstance(node, ast.CompilerVersionSpec)
        ]
        if compiler_version_spec_nodes == []:
            yield Warning(messages.version_spec_missing(
                location=lineinfo(file),
                compiler_version=COMPILER_VERSION,
            ))
        if len(compiler_version_spec_nodes) >= 2:
            yield Error(messages.too_many_version_specs(
                first_location=lineinfo(compiler_version_spec_nodes[0]),
                second_location=lineinfo(compiler_version_spec_nodes[1]),
            ))
        for node in compiler_version_spec_nodes:
            if not node.strict:
                yield Error(messages.version_spec_malformed(
                    location=lineinfo(node),
                    compiler_version=COMPILER_VERSION,
                ))
            errors = version_spec_string_messages(
                spec_string=node.spec_string,
                location=lineinfo(node),
            )
            for error in errors:
                yield error
