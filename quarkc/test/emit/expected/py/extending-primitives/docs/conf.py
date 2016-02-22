# -*- coding: utf-8 -*-
#
# extending_primitives documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'extending_primitives'
copyright = u'2015, extending_primitives authors'
author = u'extending_primitives authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'extending_primitivesdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'extending_primitives.tex', u'extending_primitives Documentation',
     u'extending_primitives authors', 'manual'),
]
man_pages = [
    (master_doc, 'extending_primitives', u'extending_primitives Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'extending_primitives', u'extending_primitives Documentation',
     author, 'extending_primitives', 'One line description of extending_primitives.',
     'Miscellaneous'),
]
