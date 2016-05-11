# -*- coding: utf-8 -*-
#
# quark_ffi_signatures documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'quark_ffi_signatures'
copyright = u'2015, quark_ffi_signatures authors'
author = u'quark_ffi_signatures authors'
version = '1.0.0'
release = '1.0.0'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'quark_ffi_signaturesdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'quark_ffi_signatures.tex', u'quark_ffi_signatures Documentation',
     u'quark_ffi_signatures authors', 'manual'),
]
man_pages = [
    (master_doc, 'quark_ffi_signatures', u'quark_ffi_signatures Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'quark_ffi_signatures', u'quark_ffi_signatures Documentation',
     author, 'quark_ffi_signatures', 'One line description of quark_ffi_signatures.',
     'Miscellaneous'),
]
