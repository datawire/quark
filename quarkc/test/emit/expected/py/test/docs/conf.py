# -*- coding: utf-8 -*-
#
# test documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'test'
copyright = u'2015, test authors'
author = u'test authors'
version = '1.2.3'
release = '1.2.3'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'testdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'test.tex', u'test Documentation',
     u'test authors', 'manual'),
]
man_pages = [
    (master_doc, 'test', u'test Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'test', u'test Documentation',
     author, 'test', 'One line description of test.',
     'Miscellaneous'),
]
