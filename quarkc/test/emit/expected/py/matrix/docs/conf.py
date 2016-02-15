# -*- coding: utf-8 -*-
#
# matrix documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'matrix'
copyright = u'2015, matrix authors'
author = u'matrix authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'matrixdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'matrix.tex', u'matrix Documentation',
     u'matrix authors', 'manual'),
]
man_pages = [
    (master_doc, 'matrix', u'matrix Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'matrix', u'matrix Documentation',
     author, 'matrix', 'One line description of matrix.',
     'Miscellaneous'),
]
