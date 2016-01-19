# -*- coding: utf-8 -*-
#
# autocast documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'autocast'
copyright = u'2015, autocast authors'
author = u'autocast authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'autocastdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'autocast.tex', u'autocast Documentation',
     u'autocast authors', 'manual'),
]
man_pages = [
    (master_doc, 'autocast', u'autocast Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'autocast', u'autocast Documentation',
     author, 'autocast', 'One line description of autocast.',
     'Miscellaneous'),
]
