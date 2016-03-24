# -*- coding: utf-8 -*-
#
# modulo documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'modulo'
copyright = u'2015, modulo authors'
author = u'modulo authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'modulodoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'modulo.tex', u'modulo Documentation',
     u'modulo authors', 'manual'),
]
man_pages = [
    (master_doc, 'modulo', u'modulo Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'modulo', u'modulo Documentation',
     author, 'modulo', 'One line description of modulo.',
     'Miscellaneous'),
]
