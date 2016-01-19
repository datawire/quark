# -*- coding: utf-8 -*-
#
# json_tests documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'json_tests'
copyright = u'2015, json_tests authors'
author = u'json_tests authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'json_testsdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'json_tests.tex', u'json_tests Documentation',
     u'json_tests authors', 'manual'),
]
man_pages = [
    (master_doc, 'json_tests', u'json_tests Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'json_tests', u'json_tests Documentation',
     author, 'json_tests', 'One line description of json_tests.',
     'Miscellaneous'),
]
