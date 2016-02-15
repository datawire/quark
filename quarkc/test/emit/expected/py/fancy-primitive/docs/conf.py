# -*- coding: utf-8 -*-
#
# fancy_primitive documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'fancy_primitive'
copyright = u'2015, fancy_primitive authors'
author = u'fancy_primitive authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'fancy_primitivedoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'fancy_primitive.tex', u'fancy_primitive Documentation',
     u'fancy_primitive authors', 'manual'),
]
man_pages = [
    (master_doc, 'fancy_primitive', u'fancy_primitive Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'fancy_primitive', u'fancy_primitive Documentation',
     author, 'fancy_primitive', 'One line description of fancy_primitive.',
     'Miscellaneous'),
]
