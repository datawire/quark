version_spec_missing = '''\
{location}: Version spec is missing.

    Note: Your file should start with Quark compiler version
    spec, like one this:

        quark =={compiler_version};
        quark >=0.6.100,<0.7.0;
        quark *;

    Details: version specs were introduced in Quark 0.7.0
    in order to quickly detect breaking changes. If this file
    is written against prior version of Quark, you can either:

     * Downgrade Quark compiler to that version, or

     * Upgrade this source file to work with currenct compiler
       version ({compiler_version}). This requires:

        * Declaring compiler version as first line of your file:

              quark =={compiler_version};

        * Fixing any incompatibilities, by following the change
          log for version {compiler_version}

              https://github.com/datawire/quark/blob/v{compiler_version}/CHANGELOG.md
'''.format

too_many_version_specs = '''\
{second_location}: Too many compiler version specs

    There should be only one compiler version spec declared,
    at the very first line in the file, however, two were found:

     * {first_location}
     * {second_location}
'''.format

version_spec_malformed = '''\
{location}: Compiler version spec malformed

    This compiler version spec is malformed. It should be
    located on the first line of your file, like this:

        quark =={compiler_version};
'''.format

compiler_version_incompatible_with_source = '''\
{location}: Compiler version is incompatible with source

    The source file declares the following compiler version spec:
      {source_version_spec}
    However, the compiler you are running has the following version:
      {compiler_version}
    Which does not match the spec. You need to either update your source
    or switch to a compiler version that matches the spec.
'''.format
