# -*- coding: utf-8 -*-
#
# factorial documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'factorial'
copyright = u'2015, factorial authors'
author = u'factorial authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'factorialdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'factorial.tex', u'factorial Documentation',
     u'factorial authors', 'manual'),
]
man_pages = [
    (master_doc, 'factorial', u'factorial Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'factorial', u'factorial Documentation',
     author, 'factorial', 'One line description of factorial.',
     'Miscellaneous'),
]
