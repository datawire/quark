# -*- coding: utf-8 -*-
#
# Macro documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'Macro'
copyright = u'2015, Macro authors'
author = u'Macro authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'Macrodoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'Macro.tex', u'Macro Documentation',
     u'Macro authors', 'manual'),
]
man_pages = [
    (master_doc, 'Macro', u'Macro Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'Macro', u'Macro Documentation',
     author, 'Macro', 'One line description of Macro.',
     'Miscellaneous'),
]
