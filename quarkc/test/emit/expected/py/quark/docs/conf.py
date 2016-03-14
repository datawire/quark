# -*- coding: utf-8 -*-
#
# quark documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'quark'
copyright = u'2015, quark authors'
author = u'quark authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'quarkdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'quark.tex', u'quark Documentation',
     u'quark authors', 'manual'),
]
man_pages = [
    (master_doc, 'quark', u'quark Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'quark', u'quark Documentation',
     author, 'quark', 'One line description of quark.',
     'Miscellaneous'),
]
