# -*- coding: utf-8 -*-
#
# print documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'print'
copyright = u'2015, print authors'
author = u'print authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'printdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'print.tex', u'print Documentation',
     u'print authors', 'manual'),
]
man_pages = [
    (master_doc, 'print', u'print Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'print', u'print Documentation',
     author, 'print', 'One line description of print.',
     'Miscellaneous'),
]
