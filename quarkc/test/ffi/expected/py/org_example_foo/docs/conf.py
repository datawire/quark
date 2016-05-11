# -*- coding: utf-8 -*-
#
# org_example_foo documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'org_example_foo'
copyright = u'2015, org_example_foo authors'
author = u'org_example_foo authors'
version = '0.1.0'
release = '0.1.0'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'org_example_foodoc'
latex_elements = {}
latex_documents = [
    (master_doc, 'org_example_foo.tex', u'org_example_foo Documentation',
     u'org_example_foo authors', 'manual'),
]
man_pages = [
    (master_doc, 'org_example_foo', u'org_example_foo Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, 'org_example_foo', u'org_example_foo Documentation',
     author, 'org_example_foo', 'One line description of org_example_foo.',
     'Miscellaneous'),
]
