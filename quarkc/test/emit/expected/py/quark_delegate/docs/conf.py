# -*- coding: utf-8 -*-
#
# quark_delegate documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'quark_delegate'
copyright = u'2015, quark_delegate authors'
author = u'quark_delegate authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'quark_delegatedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'quark_delegate.tex', u'quark_delegate Documentation',
     u'quark_delegate authors', 'manual'),
]
man_pages = [
    (master_doc, 'quark_delegate', u'quark_delegate Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'quark_delegate', u'quark_delegate Documentation',
     author, 'quark_delegate', 'One line description of quark_delegate.',
     'Miscellaneous'),
]
