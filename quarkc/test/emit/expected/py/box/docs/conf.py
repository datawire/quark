# -*- coding: utf-8 -*-
#
# box documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'box'
copyright = u'2015, box authors'
author = u'box authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'boxdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'box.tex', u'box Documentation',
     u'box authors', 'manual'),
]
man_pages = [
    (master_doc, 'box', u'box Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'box', u'box Documentation',
     author, 'box', 'One line description of box.',
     'Miscellaneous'),
]
