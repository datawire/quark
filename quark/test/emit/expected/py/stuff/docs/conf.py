# -*- coding: utf-8 -*-
#
# stuff documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'stuff'
copyright = u'2015, stuff authors'
author = u'stuff authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'stuffdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'stuff.tex', u'stuff Documentation',
     u'stuff authors', 'manual'),
]
man_pages = [
    (master_doc, 'stuff', u'stuff Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'stuff', u'stuff Documentation',
     author, 'stuff', 'One line description of stuff.',
     'Miscellaneous'),
]
