import sys

from .exceptions import QuarkError


version_spec_missing = '''\
{location}: Source code version declaration is missing.

    As of quark version 0.7.0, your source code must indicate what
    version of the quark toolchain (language/library) it uses by
    declaring the quark version at the beginning of each top level
    file:

        quark {compiler_version};

    To explicitly override this check, use:

        quark *;

    Source code version declarations were introduced in Quark 0.7.0 in
    order to:

      a) quickly detect incompatibilities between quark source code
         and the quark toolchain in use

      b) make it as easy as possible to update to the latest version
         of the toolchain

    If this file is written against a prior version of the quark
    toolchain, you can either downgrade to that version, or upgrade
    this source file to work with currenct compiler version
    ({compiler_version}). This requires declaring compiler version as
    the first line of any top level file (files that have a package
    declaration):

        quark {compiler_version};

    For info about any fixes and improvements, as well as info on how
    to upgrade your source code if there have been breaking changes in
    the library, please review the CHANGELOG:

        https://github.com/datawire/quark/blob/v{compiler_version}/CHANGELOG.md
'''.format

too_many_version_specs = '''\
{second_location}: Too many quark version declarations

    There should be only one quark version declared, at the very first
    line in the file, however, two were found:

     * {first_location}
     * {second_location}
'''.format

version_spec_malformed = '''\
{location}: Quark version spec malformed

    The quark version spec is malformed. It should be located on the
    first line of your file, like this:

        quark {compiler_version};
'''.format

compiler_version_incompatible_with_source = '''\
{location}: The quark version is incompatible with the source version.

    Your source code declares the following quark version:

        quark {source_version_spec};

    However, you are running version {compiler_version}. You need to
    either update your source or install the correct version of quark.

    For info about any fixes and improvements, as well as info on how
    to upgrade your source code if there have been breaking changes in
    the library, please review the CHANGELOG:

        https://github.com/datawire/quark/blob/v{compiler_version}/CHANGELOG.md

    If you want to keep using version {source_version_spec} of the compiler,
    you can install it by following the instructions:

        https://github.com/datawire/quark/wiki/Compiler-Versioning
'''.format


class Message(object):

    def __init__(self, source, prefix):
        self.source, self.prefix = source, prefix

    def __str__(self):
        return  self.prefix + self.source


class Warning(Message):

    prefix = 'Warning: '

    def __init__(self, source):
        if isinstance(source, Message):
            source = source.source
        assert isinstance(source, basestring)
        self.source = source


class Error(Warning):

    prefix = 'Error: '


def issue_all(messages):
    is_fatal = any(isinstance(message, Error) for message in messages)
    for message in messages:
        sys.stderr.write(str(message))
    if is_fatal:
        raise QuarkError()
