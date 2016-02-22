# -*- coding: utf-8 -*-
#
# string_methods documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'string_methods'
copyright = u'2015, string_methods authors'
author = u'string_methods authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'string_methodsdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'string_methods.tex', u'string_methods Documentation',
     u'string_methods authors', 'manual'),
]
man_pages = [
    (master_doc, 'string_methods', u'string_methods Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'string_methods', u'string_methods Documentation',
     author, 'string_methods', 'One line description of string_methods.',
     'Miscellaneous'),
]
