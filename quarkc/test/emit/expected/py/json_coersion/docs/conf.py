# -*- coding: utf-8 -*-
#
# json_coersion documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'json_coersion'
copyright = u'2015, json_coersion authors'
author = u'json_coersion authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'json_coersiondoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'json_coersion.tex', u'json_coersion Documentation',
     u'json_coersion authors', 'manual'),
]
man_pages = [
    (master_doc, 'json_coersion', u'json_coersion Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'json_coersion', u'json_coersion Documentation',
     author, 'json_coersion', 'One line description of json_coersion.',
     'Miscellaneous'),
]
