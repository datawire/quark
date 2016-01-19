# -*- coding: utf-8 -*-
#
# parameterized_defaults documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'parameterized_defaults'
copyright = u'2015, parameterized_defaults authors'
author = u'parameterized_defaults authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'parameterized_defaultsdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'parameterized_defaults.tex', u'parameterized_defaults Documentation',
     u'parameterized_defaults authors', 'manual'),
]
man_pages = [
    (master_doc, 'parameterized_defaults', u'parameterized_defaults Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'parameterized_defaults', u'parameterized_defaults Documentation',
     author, 'parameterized_defaults', 'One line description of parameterized_defaults.',
     'Miscellaneous'),
]
