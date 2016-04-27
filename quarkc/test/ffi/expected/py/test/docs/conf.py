# -*- coding: utf-8 -*-
#
# testlib documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'testlib'
copyright = u'2015, testlib authors'
author = u'testlib authors'
version = '1.2.3'
release = '1.2.3'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'testlibdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'testlib.tex', u'testlib Documentation',
     u'testlib authors', 'manual'),
]
man_pages = [
    (master_doc, 'testlib', u'testlib Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'testlib', u'testlib Documentation',
     author, 'testlib', 'One line description of testlib.',
     'Miscellaneous'),
]
