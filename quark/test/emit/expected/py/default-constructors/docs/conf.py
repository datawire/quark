# -*- coding: utf-8 -*-
#
# default_constructors documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'default_constructors'
copyright = u'2015, default_constructors authors'
author = u'default_constructors authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'default_constructorsdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'default_constructors.tex', u'default_constructors Documentation',
     u'default_constructors authors', 'manual'),
]
man_pages = [
    (master_doc, 'default_constructors', u'default_constructors Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'default_constructors', u'default_constructors Documentation',
     author, 'default_constructors', 'One line description of default_constructors.',
     'Miscellaneous'),
]
