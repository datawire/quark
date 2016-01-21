# -*- coding: utf-8 -*-
#
# list documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'list'
copyright = u'2015, list authors'
author = u'list authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'listdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'list.tex', u'list Documentation',
     u'list authors', 'manual'),
]
man_pages = [
    (master_doc, 'list', u'list Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'list', u'list Documentation',
     author, 'list', 'One line description of list.',
     'Miscellaneous'),
]
