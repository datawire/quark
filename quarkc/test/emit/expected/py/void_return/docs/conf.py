# -*- coding: utf-8 -*-
#
# void_return documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'void_return'
copyright = u'2015, void_return authors'
author = u'void_return authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'void_returndoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'void_return.tex', u'void_return Documentation',
     u'void_return authors', 'manual'),
]
man_pages = [
    (master_doc, 'void_return', u'void_return Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'void_return', u'void_return Documentation',
     author, 'void_return', 'One line description of void_return.',
     'Miscellaneous'),
]
