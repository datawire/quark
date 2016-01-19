# -*- coding: utf-8 -*-
#
# Overload documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'Overload'
copyright = u'2015, Overload authors'
author = u'Overload authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'Overloaddoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'Overload.tex', u'Overload Documentation',
     u'Overload authors', 'manual'),
]
man_pages = [
    (master_doc, 'Overload', u'Overload Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'Overload', u'Overload Documentation',
     author, 'Overload', 'One line description of Overload.',
     'Miscellaneous'),
]
