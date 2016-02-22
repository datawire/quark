# -*- coding: utf-8 -*-
#
# puse documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'puse'
copyright = u'2015, puse authors'
author = u'puse authors'
version = '4.5.6'
release = '4.5.6'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'pusedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'puse.tex', u'puse Documentation',
     u'puse authors', 'manual'),
]
man_pages = [
    (master_doc, 'puse', u'puse Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'puse', u'puse Documentation',
     author, 'puse', 'One line description of puse.',
     'Miscellaneous'),
]
