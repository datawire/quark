# -*- coding: utf-8 -*-
#
# package documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'package'
copyright = u'2015, package authors'
author = u'package authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'packagedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'package.tex', u'package Documentation',
     u'package authors', 'manual'),
]
man_pages = [
    (master_doc, 'package', u'package Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'package', u'package Documentation',
     author, 'package', 'One line description of package.',
     'Miscellaneous'),
]
