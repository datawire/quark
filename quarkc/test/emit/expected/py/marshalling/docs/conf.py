# -*- coding: utf-8 -*-
#
# marshalling documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'marshalling'
copyright = u'2015, marshalling authors'
author = u'marshalling authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'marshallingdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'marshalling.tex', u'marshalling Documentation',
     u'marshalling authors', 'manual'),
]
man_pages = [
    (master_doc, 'marshalling', u'marshalling Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'marshalling', u'marshalling Documentation',
     author, 'marshalling', 'One line description of marshalling.',
     'Miscellaneous'),
]
