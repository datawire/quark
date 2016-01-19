# -*- coding: utf-8 -*-
#
# delegate documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'delegate'
copyright = u'2015, delegate authors'
author = u'delegate authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'delegatedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'delegate.tex', u'delegate Documentation',
     u'delegate authors', 'manual'),
]
man_pages = [
    (master_doc, 'delegate', u'delegate Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'delegate', u'delegate Documentation',
     author, 'delegate', 'One line description of delegate.',
     'Miscellaneous'),
]
