# -*- coding: utf-8 -*-
#
# macro_native documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'macro_native'
copyright = u'2015, macro_native authors'
author = u'macro_native authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'macro_nativedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'macro_native.tex', u'macro_native Documentation',
     u'macro_native authors', 'manual'),
]
man_pages = [
    (master_doc, 'macro_native', u'macro_native Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'macro_native', u'macro_native Documentation',
     author, 'macro_native', 'One line description of macro_native.',
     'Miscellaneous'),
]
