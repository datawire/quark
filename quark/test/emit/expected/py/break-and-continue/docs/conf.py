# -*- coding: utf-8 -*-
#
# break_and_continue documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'break_and_continue'
copyright = u'2015, break_and_continue authors'
author = u'break_and_continue authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'break_and_continuedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'break_and_continue.tex', u'break_and_continue Documentation',
     u'break_and_continue authors', 'manual'),
]
man_pages = [
    (master_doc, 'break_and_continue', u'break_and_continue Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'break_and_continue', u'break_and_continue Documentation',
     author, 'break_and_continue', 'One line description of break_and_continue.',
     'Miscellaneous'),
]
