# -*- coding: utf-8 -*-
#
# package_ documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'package_'
copyright = u'2015, package_ authors'
author = u'package_ authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'package_doc'
latex_elements = {}
latex_documents = [
    (master_doc, 'package_.tex', u'package_ Documentation',
     u'package_ authors', 'manual'),
]
man_pages = [
    (master_doc, 'package_', u'package_ Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'package_', u'package_ Documentation',
     author, 'package_', 'One line description of package_.',
     'Miscellaneous'),
]
