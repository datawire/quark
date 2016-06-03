import semantic_version as semver

from ._metadata import __version__
from .helpers import lineinfo
import ast
import messages


COMPILER_VERSION = semver.Version(__version__)


def version_spec_string_errors(spec_string, location):
    try:
        spec = semver.Spec(spec_string)
    except ValueError:
        yield messages.version_spec_malformed(
            location=location,
            compiler_version=COMPILER_VERSION,
        )
    else:
        if COMPILER_VERSION not in spec:
            yield messages.compiler_version_incompatible_with_source(
                location=location,
                compiler_version=COMPILER_VERSION,
                source_version_spec=spec_string,
            )


def compiler_version_spec_errors(file_nodes):
    for file in file_nodes:
        assert isinstance(file, ast.File)
        compiler_version_spec_nodes = [
            node for node in file.children
            if isinstance(node, ast.CompilerVersionSpec)
        ]
        if file.dist and compiler_version_spec_nodes == []:
            yield messages.version_spec_missing(
                location=lineinfo(file),
                compiler_version=COMPILER_VERSION,
            )
        if len(compiler_version_spec_nodes) >= 2:
            yield messages.too_many_version_specs(
                first_location=lineinfo(compiler_version_spec_nodes[0]),
                second_location=lineinfo(compiler_version_spec_nodes[1]),
            )
        for node in compiler_version_spec_nodes:
            if not node.strict:
                yield messages.version_spec_malformed(
                    location=lineinfo(node),
                    compiler_version=COMPILER_VERSION,
                )
            errors = version_spec_string_errors(
                spec_string=node.spec_string,
                location=lineinfo(node),
            )
            for error in errors:
                yield error
