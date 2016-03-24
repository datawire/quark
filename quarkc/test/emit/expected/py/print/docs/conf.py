# -*- coding: utf-8 -*-
#
# prtest documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'prtest'
copyright = u'2015, prtest authors'
author = u'prtest authors'
version = '1.0.0'
release = '1.0.0'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'prtestdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'prtest.tex', u'prtest Documentation',
     u'prtest authors', 'manual'),
]
man_pages = [
    (master_doc, 'prtest', u'prtest Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'prtest', u'prtest Documentation',
     author, 'prtest', 'One line description of prtest.',
     'Miscellaneous'),
]
