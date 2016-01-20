# -*- coding: utf-8 -*-
#
# macro_pie documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'macro_pie'
copyright = u'2015, macro_pie authors'
author = u'macro_pie authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'macro_piedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'macro_pie.tex', u'macro_pie Documentation',
     u'macro_pie authors', 'manual'),
]
man_pages = [
    (master_doc, 'macro_pie', u'macro_pie Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'macro_pie', u'macro_pie Documentation',
     author, 'macro_pie', 'One line description of macro_pie.',
     'Miscellaneous'),
]
