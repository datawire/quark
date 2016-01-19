# -*- coding: utf-8 -*-
#
# multiple_packages documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'multiple_packages'
copyright = u'2015, multiple_packages authors'
author = u'multiple_packages authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'multiple_packagesdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'multiple_packages.tex', u'multiple_packages Documentation',
     u'multiple_packages authors', 'manual'),
]
man_pages = [
    (master_doc, 'multiple_packages', u'multiple_packages Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'multiple_packages', u'multiple_packages Documentation',
     author, 'multiple_packages', 'One line description of multiple_packages.',
     'Miscellaneous'),
]
