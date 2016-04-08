# -*- coding: utf-8 -*-
#
# logging_config documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'logging_config'
copyright = u'2015, logging_config authors'
author = u'logging_config authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'logging_configdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'logging_config.tex', u'logging_config Documentation',
     u'logging_config authors', 'manual'),
]
man_pages = [
    (master_doc, 'logging_config', u'logging_config Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'logging_config', u'logging_config Documentation',
     author, 'logging_config', 'One line description of logging_config.',
     'Miscellaneous'),
]
