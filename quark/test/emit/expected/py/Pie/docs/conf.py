# -*- coding: utf-8 -*-
#
# Pie documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'Pie'
copyright = u'2015, Pie authors'
author = u'Pie authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'Piedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'Pie.tex', u'Pie Documentation',
     u'Pie authors', 'manual'),
]
man_pages = [
    (master_doc, 'Pie', u'Pie Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'Pie', u'Pie Documentation',
     author, 'Pie', 'One line description of Pie.',
     'Miscellaneous'),
]
