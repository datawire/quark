# -*- coding: utf-8 -*-
#
# super documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'super'
copyright = u'2015, super authors'
author = u'super authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'superdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'super.tex', u'super Documentation',
     u'super authors', 'manual'),
]
man_pages = [
    (master_doc, 'super', u'super Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'super', u'super Documentation',
     author, 'super', 'One line description of super.',
     'Miscellaneous'),
]
