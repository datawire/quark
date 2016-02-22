# -*- coding: utf-8 -*-
#
# pet documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'pet'
copyright = u'2015, pet authors'
author = u'pet authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'petdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'pet.tex', u'pet Documentation',
     u'pet authors', 'manual'),
]
man_pages = [
    (master_doc, 'pet', u'pet Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'pet', u'pet Documentation',
     author, 'pet', 'One line description of pet.',
     'Miscellaneous'),
]
