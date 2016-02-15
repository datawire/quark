# -*- coding: utf-8 -*-
#
# map documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'map'
copyright = u'2015, map authors'
author = u'map authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'mapdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'map.tex', u'map Documentation',
     u'map authors', 'manual'),
]
man_pages = [
    (master_doc, 'map', u'map Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'map', u'map Documentation',
     author, 'map', 'One line description of map.',
     'Miscellaneous'),
]
