version_declaration_missing = '''\
{location}: Version declaration is missing.

    Note: Your file should start with Quark compiler version
    declaration, like this:

        quark {compiler_version};

    Details: version declarations were introduced in Quark 0.7.0
    in order to quickly detect breaking changes. If this file
    is written against prior version of Quark, you can either:

     * Downgrade Quark compiler to that version, or

     * Upgrade this source file to work with currenct compiler
       version ({compiler_version}). This requires:

        * Declaring compiler version as first line of your file:

              quark {compiler_version};

        * Fixing any incompatibilities, by following the change
          log for version {compiler_version}

              https://github.com/datawire/quark/blob/v{compiler_version}/CHANGELOG.md
'''.format

too_many_version_declarations = '''\
{second_location}: There should be only one compiler version declaration,
    at the very first line in the file, however, two were found:

     * {first_location}
     * {second_location}
'''.format

non_strict_version_declaration = '''\
{location}: This compiler version declaration is malformed. It should be
    located on the first line of your file, like this:

        quark {compiler_version};
'''.format

outdated_compiler = '''\
{location}: The source file declares the following version of the compiler:
      {source_version}
    However, the compiler you are running has the following:
      {compiler_version}
    The two versions are incompatible. You need to upgrade your compiler
    to version {source_version}.
'''.format

outdated_source = '''\
{location}: The source file declares the following version of the compiler:
      {source_version}
    However, the compiler you are running has the following:
      {compiler_version}
    The two versions are incompatible. You need to either:

      * Downgrade your compiler to {source_version}, or

      * Updated your source to {compiler_version} by changing the
        version declaration to {compiler_version}, as well as by
        following the change log for version {compiler_version}

            https://github.com/datawire/quark/blob/v{compiler_version}/CHANGELOG.md
'''.format

invalid_version_declaration_syntax = '''\
{location}: Compiler version of this source file is declared as following:
     {version_string}
   However, this is not a valid compiler version. Quark compiler follows
   Semantic Versioning 2.0.0: http://semver.org
   Did you, maybe, mean the following version:
     {suggested_version}
'''.format
