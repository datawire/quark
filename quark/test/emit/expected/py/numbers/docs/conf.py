# -*- coding: utf-8 -*-
#
# numbers documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'numbers'
copyright = u'2015, numbers authors'
author = u'numbers authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'numbersdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'numbers.tex', u'numbers Documentation',
     u'numbers authors', 'manual'),
]
man_pages = [
    (master_doc, 'numbers', u'numbers Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'numbers', u'numbers Documentation',
     author, 'numbers', 'One line description of numbers.',
     'Miscellaneous'),
]
