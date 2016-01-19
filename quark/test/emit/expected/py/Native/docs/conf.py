# -*- coding: utf-8 -*-
#
# Native documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'Native'
copyright = u'2015, Native authors'
author = u'Native authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'Nativedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'Native.tex', u'Native Documentation',
     u'Native authors', 'manual'),
]
man_pages = [
    (master_doc, 'Native', u'Native Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'Native', u'Native Documentation',
     author, 'Native', 'One line description of Native.',
     'Miscellaneous'),
]
