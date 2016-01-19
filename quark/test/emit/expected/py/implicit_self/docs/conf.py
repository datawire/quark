# -*- coding: utf-8 -*-
#
# implicit_self documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'implicit_self'
copyright = u'2015, implicit_self authors'
author = u'implicit_self authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'implicit_selfdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'implicit_self.tex', u'implicit_self Documentation',
     u'implicit_self authors', 'manual'),
]
man_pages = [
    (master_doc, 'implicit_self', u'implicit_self Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'implicit_self', u'implicit_self Documentation',
     author, 'implicit_self', 'One line description of implicit_self.',
     'Miscellaneous'),
]
