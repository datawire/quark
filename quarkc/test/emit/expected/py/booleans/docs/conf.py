# -*- coding: utf-8 -*-
#
# booleans documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'booleans'
copyright = u'2015, booleans authors'
author = u'booleans authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'booleansdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'booleans.tex', u'booleans Documentation',
     u'booleans authors', 'manual'),
]
man_pages = [
    (master_doc, 'booleans', u'booleans Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'booleans', u'booleans Documentation',
     author, 'booleans', 'One line description of booleans.',
     'Miscellaneous'),
]
