import semantic_version as semver

from ._metadata import __version__
from .helpers import lineinfo
import ast
import messages


COMPILER_VERSION = semver.Version(__version__)


def version_string_errors(version_string, location):
    if semver.validate(version_string):
        source_version = semver.Version(version_string)
        if source_version > COMPILER_VERSION:
            yield messages.outdated_compiler(
                location=location,
                source_version=source_version,
                compiler_version=COMPILER_VERSION,
            )
        elif source_version < COMPILER_VERSION:
            assert source_version < COMPILER_VERSION
            if COMPILER_VERSION < semver.Version('1.0.0'):
                # No compatibility promises before 1.0.0
                yield messages.outdated_source(
                    location=location,
                    source_version=source_version,
                    compiler_version=COMPILER_VERSION,
                )
            elif COMPILER_VERSION >= semver.Version('1.0.0'):
                if source_version.major == COMPILER_VERSION.major:
                    pass
                else:
                    yield messages.outdated_source(
                        location=location,
                        source_version=source_version,
                        compiler_version=COMPILER_VERSION,
                    )
            else:
                assert False
        else:
            assert source_version == COMPILER_VERSION
    else:
        try:
            suggested_version = semver.Version.coerce(version_string)
        except ValueError:
            suggested_version = COMPILER_VERSION
        yield messages.invalid_version_declaration_syntax(
            location=location,
            version_string=version_string,
            suggested_version=suggested_version,
        )


def compiler_version_declaration_errors(file_nodes):
    for file in file_nodes:
        assert isinstance(file, ast.File)
        version_declarations = [
            node for node in file.children
            if isinstance(node, ast.CompilerVersionDeclaration)
        ]
        if version_declarations == []:
            yield messages.version_declaration_missing(
                location=lineinfo(file),
                compiler_version=COMPILER_VERSION,
            )
        if len(version_declarations) >= 2:
            yield messages.too_many_version_declarations(
                first_location=lineinfo(version_declarations[0]),
                second_location=lineinfo(version_declarations[1]),
            )
        for version_declaration in version_declarations:
            if not version_declaration.strict:
                yield messages.non_strict_version_declaration(
                    location=lineinfo(version_declaration),
                    compiler_version=COMPILER_VERSION,
                )
            errors = version_string_errors(
                version_string=version_declaration.version_string,
                location=lineinfo(version_declaration),
            )
            for error in errors:
                yield error
