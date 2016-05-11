# -*- coding: utf-8 -*-
#
# dependencies documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'dependencies'
copyright = u'2015, dependencies authors'
author = u'dependencies authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'dependenciesdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'dependencies.tex', u'dependencies Documentation',
     u'dependencies authors', 'manual'),
]
man_pages = [
    (master_doc, 'dependencies', u'dependencies Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'dependencies', u'dependencies Documentation',
     author, 'dependencies', 'One line description of dependencies.',
     'Miscellaneous'),
]
