# -*- coding: utf-8 -*-
#
# macro_stuff documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'macro_stuff'
copyright = u'2015, macro_stuff authors'
author = u'macro_stuff authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'macro_stuffdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'macro_stuff.tex', u'macro_stuff Documentation',
     u'macro_stuff authors', 'manual'),
]
man_pages = [
    (master_doc, 'macro_stuff', u'macro_stuff Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'macro_stuff', u'macro_stuff Documentation',
     author, 'macro_stuff', 'One line description of macro_stuff.',
     'Miscellaneous'),
]
