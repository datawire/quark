# -*- coding: utf-8 -*-
#
# use_package_before_def documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'use_package_before_def'
copyright = u'2015, use_package_before_def authors'
author = u'use_package_before_def authors'
version = '0.0.1'
release = '0.0.1'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'use_package_before_defdoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'use_package_before_def.tex', u'use_package_before_def Documentation',
     u'use_package_before_def authors', 'manual'),
]
man_pages = [
    (master_doc, 'use_package_before_def', u'use_package_before_def Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'use_package_before_def', u'use_package_before_def Documentation',
     author, 'use_package_before_def', 'One line description of use_package_before_def.',
     'Miscellaneous'),
]
