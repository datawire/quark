# -*- coding: utf-8 -*-
#
# json_building documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'json_building'
copyright = u'2015, json_building authors'
author = u'json_building authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'json_buildingdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'json_building.tex', u'json_building Documentation',
     u'json_building authors', 'manual'),
]
man_pages = [
    (master_doc, 'json_building', u'json_building Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'json_building', u'json_building Documentation',
     author, 'json_building', 'One line description of json_building.',
     'Miscellaneous'),
]
