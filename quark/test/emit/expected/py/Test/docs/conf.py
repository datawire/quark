# -*- coding: utf-8 -*-
#
# Test documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'Test'
copyright = u'2015, Test authors'
author = u'Test authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'Testdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'Test.tex', u'Test Documentation',
     u'Test authors', 'manual'),
]
man_pages = [
    (master_doc, 'Test', u'Test Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'Test', u'Test Documentation',
     author, 'Test', 'One line description of Test.',
     'Miscellaneous'),
]
