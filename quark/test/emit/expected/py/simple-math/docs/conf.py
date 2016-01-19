# -*- coding: utf-8 -*-
#
# simple_math documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'simple_math'
copyright = u'2015, simple_math authors'
author = u'simple_math authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'simple_mathdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'simple_math.tex', u'simple_math Documentation',
     u'simple_math authors', 'manual'),
]
man_pages = [
    (master_doc, 'simple_math', u'simple_math Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'simple_math', u'simple_math Documentation',
     author, 'simple_math', 'One line description of simple_math.',
     'Miscellaneous'),
]
