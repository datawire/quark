# -*- coding: utf-8 -*-
#
# hello documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'hello'
copyright = u'2015, hello authors'
author = u'hello authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'hellodoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'hello.tex', u'hello Documentation',
     u'hello authors', 'manual'),
]
man_pages = [
    (master_doc, 'hello', u'hello Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'hello', u'hello Documentation',
     author, 'hello', 'One line description of hello.',
     'Miscellaneous'),
]
