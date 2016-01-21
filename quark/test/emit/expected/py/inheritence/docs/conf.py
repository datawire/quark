# -*- coding: utf-8 -*-
#
# inheritence documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'inheritence'
copyright = u'2015, inheritence authors'
author = u'inheritence authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'inheritencedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'inheritence.tex', u'inheritence Documentation',
     u'inheritence authors', 'manual'),
]
man_pages = [
    (master_doc, 'inheritence', u'inheritence Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'inheritence', u'inheritence Documentation',
     author, 'inheritence', 'One line description of inheritence.',
     'Miscellaneous'),
]
