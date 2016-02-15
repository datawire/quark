# -*- coding: utf-8 -*-
#
# operator_overload documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'operator_overload'
copyright = u'2015, operator_overload authors'
author = u'operator_overload authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'operator_overloaddoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'operator_overload.tex', u'operator_overload Documentation',
     u'operator_overload authors', 'manual'),
]
man_pages = [
    (master_doc, 'operator_overload', u'operator_overload Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'operator_overload', u'operator_overload Documentation',
     author, 'operator_overload', 'One line description of operator_overload.',
     'Miscellaneous'),
]
