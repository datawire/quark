# -*- coding: utf-8 -*-
#
# constructors documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'constructors'
copyright = u'2015, constructors authors'
author = u'constructors authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'constructorsdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'constructors.tex', u'constructors Documentation',
     u'constructors authors', 'manual'),
]
man_pages = [
    (master_doc, 'constructors', u'constructors Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'constructors', u'constructors Documentation',
     author, 'constructors', 'One line description of constructors.',
     'Miscellaneous'),
]
