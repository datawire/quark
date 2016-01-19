# -*- coding: utf-8 -*-
#
# int_methods documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'int_methods'
copyright = u'2015, int_methods authors'
author = u'int_methods authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'int_methodsdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'int_methods.tex', u'int_methods Documentation',
     u'int_methods authors', 'manual'),
]
man_pages = [
    (master_doc, 'int_methods', u'int_methods Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'int_methods', u'int_methods Documentation',
     author, 'int_methods', 'One line description of int_methods.',
     'Miscellaneous'),
]
