# -*- coding: utf-8 -*-
#
# defaulted_methods documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'defaulted_methods'
copyright = u'2015, defaulted_methods authors'
author = u'defaulted_methods authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'defaulted_methodsdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'defaulted_methods.tex', u'defaulted_methods Documentation',
     u'defaulted_methods authors', 'manual'),
]
man_pages = [
    (master_doc, 'defaulted_methods', u'defaulted_methods Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'defaulted_methods', u'defaulted_methods Documentation',
     author, 'defaulted_methods', 'One line description of defaulted_methods.',
     'Miscellaneous'),
]
