# -*- coding: utf-8 -*-
#
# logme documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'logme'
copyright = u'2015, logme authors'
author = u'logme authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'logmedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'logme.tex', u'logme Documentation',
     u'logme authors', 'manual'),
]
man_pages = [
    (master_doc, 'logme', u'logme Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'logme', u'logme Documentation',
     author, 'logme', 'One line description of logme.',
     'Miscellaneous'),
]
