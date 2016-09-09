# Copyright 2015 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from __future__ import absolute_import

import os
from collections import OrderedDict

from .helpers import indent, doc_helper, Code


## Packaging

pom_xml = """<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>%(name)s</groupId>
  <artifactId>%(name)s</artifactId>
  <version>%(version)s</version>
  <name>%(name)s</name>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.3</version>
        <configuration>
          <source>1.7</source>
          <target>1.7</target>
        </configuration>
      </plugin>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-javadoc-plugin</artifactId>
        <version>2.10.3</version>
        <configuration>
          <excludePackageNames>io.datawire:*.Functions</excludePackageNames>
        </configuration>
      </plugin>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-jar-plugin</artifactId>
        <version>2.6</version>
        <configuration>
          <archive>
            <index>true</index>
            <manifest>
              <addClasspath>true</addClasspath>
              <classpathLayoutType>repository</classpathLayoutType>
              <classpathPrefix>../../../</classpathPrefix>
              <mainClass>%(main)s.Main</mainClass>
            </manifest>
            <manifestEntries>
              <mode>development</mode>
              <url>${project.url}</url>
              <key>value</key>
            </manifestEntries>
          </archive>
        </configuration>
      </plugin>%(more_plugins)s
    </plugins>
  </build>
  <dependencies>
%(dependencies)s
  </dependencies>
</project>
"""

def format_deps(deps):
    for group, name, ver in deps:
        yield """    <dependency>
      <groupId>%s</groupId>
      <artifactId>%s</artifactId>
      <version>%s</version>
    </dependency>""" % (group, name, ver)

shade_plugin = """
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-shade-plugin</artifactId>
        <version>2.4.3</version>
        <executions>
          <execution>
            <phase>package</phase>
            <goals>
              <goal>shade</goal>
            </goals>
            <configuration>
              <minimizeJar>false</minimizeJar>
              <createDependencyReducedPom>true</createDependencyReducedPom>
              <dependencyReducedPomLocation>
                ${java.io.tmpdir}/dependency-reduced-pom.xml
              </dependencyReducedPomLocation>
              <relocations>
                <relocation>
                  <pattern>com.fasterxml.jackson</pattern>
                  <shadedPattern>internaldatawire.com.fasterxml.jackson</shadedPattern>
                </relocation>
                <relocation>
                  <pattern>io.netty</pattern>
                  <shadedPattern>internaldatawire.io.netty</shadedPattern>
                </relocation>
                <relocation>
                  <pattern>junit</pattern>
                  <shadedPattern>internaldatawire.junit</shadedPattern>
                </relocation>
                <relocation>
                  <pattern>org.junit</pattern>
                  <shadedPattern>internaldatawire.org.junit</shadedPattern>
                </relocation>
                <relocation>
                  <pattern>org.hamcrest</pattern>
                  <shadedPattern>internaldatawire.org.hamcrest</shadedPattern>
                </relocation>
              </relocations>
            </configuration>
          </execution>
        </executions>
      </plugin>
"""

def package(name_, version, packages, srcs, deps):
    files = OrderedDict()
    for fname, content in srcs.items():
        files[os.path.join("src/main/java", fname)] = content

    fmt_dict = {"name": name_,
                "version": version,
                "pkg_list": repr([".".join(p) for p in packages]),
                "dependencies": "\n".join(format_deps(deps)),
                "main": name(name_),
                "more_plugins": ""}
    if name_ == "quark":
        # We want to shade the quark stdlib so its dependencies don't conflict
        # with user's dependencies.
        fmt_dict["more_plugins"] = shade_plugin
    files["pom.xml"] = pom_xml % fmt_dict
    return files


def class_file(path, name, fname):
    return "/".join(path + ["%s.java" % name])

def function_file(path, name, fname):
    return "/".join(path + ["Functions.java"])

def package_file(path, name, fname):
    return None

def make_class_file(path, name, rtloc=None):
    return Code(comment, head="package %s;\n\n" % ".".join(path))

def make_function_file(path, name, mdpkg):
    return Code(comment, head="package %s;\n\npublic class Functions {\n\n"
                "    static %s.Root root = new %s.Root();\n\n" % (".".join(path), mdpkg, mdpkg),
                tail="}")

def make_package_file(path, name, rtloc=None):
    assert False

def main_file(name):
    return os.path.join(name, "Main.java")

def make_main_file(name):
    return Code(comment, head="package %s;\n\npublic class Main {\n\n" % name,
                tail="}")

def main_prolog():
    return indent("public static final void main(String[] args) {\n"
                  "    main(new java.util.ArrayList(java.util.Arrays.asList(args)));\n}")

def main(path, name):
    expr = invoke_function(path, name, ("args",))
    return indent("public static void main(String[] args) {\n    %s;\n}" % expr)

## Naming and imports

SUBS = {"self": "this",
        "package": "package_",
        "interface": "interface_",
        "super": "super_",
        "static": "static_"}
def name(n):
    return SUBS.get(n, n).replace("-", "_")

def type(path, name, parameters):
    base = ".".join(path + [name])
    if parameters:
        return base + ("<%s>" % ",".join(parameters))
    else:
        return base

def import_(path, origin, dep, seen=None, lazy=False):
    return None

def qualify(package, origin):
    if package and package != origin:
        return package
    else:
        return []

def native_include(path, du_name):
    assert path.endswith(".java"), path
    return ""

## Documentation

def doc(lines):
    return doc_helper(lines, "/**", " * ", " */")

## Comments

def comment(stuff):
    return "/* %s */\n" % stuff

## Class definition

def clazz(doc, abstract, clazz, parameters, base, interfaces, static_fields, fields, constructors, methods):
    kw = "abstract " if abstract else ""
    params = "<%s>" % ", ".join(parameters) if parameters else ""
    extends = " extends %s" % base if base else ""
    interfaces = interfaces + ["io.datawire.quark.runtime.QObject"]
    implements = " implements %s" % ", ".join(interfaces) if interfaces else ""
    body = "\n".join(static_fields + fields + constructors + methods)
    return "%spublic %sclass %s%s%s%s {%s}" % (doc, kw, clazz, params, extends, implements, indent(body))

def static_field(doc, clazz, type, name, value):
    if value is None:
        return "%spublic static %s %s;" % (doc, type, name)
    else:
        return "%spublic static %s %s = %s;" % (doc, type, name, value)

def field(doc, clazz, type, name, value):
    if value is None:
        return "%spublic %s %s;" % (doc, type, name)
    else:
        return "%spublic %s %s = %s;" % (doc, type, name, value)

def field_init():
    return None

def default_constructor(clazz):
    return "public %s() {}" % clazz

def constructor(doc, clazz, parameters, body):
    return "public %s(%s)%s" % (clazz, ", ".join(parameters), body)

def method(doc, clazz, type, name, parameters, body):
    return "%spublic %s %s(%s)%s" % (doc, type, name, ", ".join(parameters), body)

def static_method(doc, clazz, type, name, parameters, body):
    return "%spublic static %s %s(%s)%s" % (doc, type, name, ", ".join(parameters), body)

def abstract_method(doc, clazz, type, name, parameters):
    return "%spublic abstract %s %s(%s);" % (doc, type, name, ", ".join(parameters))

## Interface definition

def interface(doc, iface, parameters, bases, static_fields, methods):
    params = "<%s>" % ", ".join(parameters) if parameters else ""
    extends = " extends %s" % ", ".join(bases) if bases else ""
    body = "\n".join(static_fields + methods)
    return "%spublic interface %s%s%s {%s}" % (doc, iface, params, extends, indent(body))

def interface_method(doc, iface, type, name, parameters, body):
    return "%s %s %s(%s);" % (doc, type, name, ", ".join(parameters))

## Function definition

def function(doc, type, name, parameters, body):
    return indent("%spublic static %s %s(%s)%s" % (doc, type, name, ", ".join(parameters), body))

## Parameters for methods and functions

def param(type, name, value):
    if value is None:
        return "%s %s" % (type, name)
    else:
        return "%s %s = %s" % (type, name, value)

## Blocks

def block(statements):
    return " {%s}" % indent("\n".join(statements))

## Statements

def local(type, name, value):
    if value is None:
        return "%s %s;" % (type, name)
    else:
        return "%s %s = %s;" % (type, name, value)

def expr_stmt(e):
    return "%s;" % e

def assign(lhs, rhs):
    return "%s = %s;" % (lhs, rhs)

def if_(pred, cons, alt):
    result = "if (%s)%s" % (pred, cons)
    if alt:
        result += " else%s" % alt
    return result

def while_(cond, body):
    return "while (%s)%s" % (cond, body)

def break_():
    return "break;"

def continue_():
    return "continue;"

def return_(expr):
    if expr:
        return "return %s;" % expr
    else:
        return "return;"

## Expressions

def class_ref(v):
    return v

def method_ref(v):
    return "this.%s" % v

def field_ref(v):
    return "this.%s" % v

def local_ref(v):
    return v

def invoke_function(pkg, name, args):
    return "%s(%s)" % (".".join(pkg + ["Functions", name]), ", ".join(args))

def construct(clazz, args):
    return "new %s(%s)" % (clazz, ", ".join(args))

def invoke_super(clazz, base, args):
    return "super(%s)" % ", ".join(args)

def invoke_method(expr, method, args):
    return "(%s).%s(%s)" % (expr, method, ", ".join(args))

def invoke_method_implicit(method, args):
    return "this.%s(%s)" % (method, ", ".join(args))

def invoke_super_method(clazz, base, method, args):
    return "super.%s(%s)" % (method, ", ".join(args))

def invoke_static_method(path, clazz, method, args):
    return "%s.%s(%s)" % (".".join(path + [clazz]), method, ", ".join(args))

def get_static_field(path, clazz, field):
    return "%s.%s" % (".".join(path + [clazz]), field)

def get_field(expr, field):
    return "(%s).%s" % (expr, field)

def cast(type, expr):
    return "(%s) (%s)" % (type, expr)

## Literals

def null():
    return "null"

def bool_(b):
    return b.text

def number(n):
    return n.text

def string(s):
    result = s.text[0]
    idx = 1
    while idx < len(s.text) - 1:
        c = s.text[idx]
        next = s.text[idx + 1]
        if c == "\\" and next == "x":
            result += "\\u00"
            idx += 1
        else:
            result += c
        idx += 1
    result += s.text[-1]
    return result

def list_(elements):
    return "new java.util.ArrayList(java.util.Arrays.asList(new Object[]{%s}))" % ", ".join(elements)

def map(entries):
    return "io.datawire.quark.runtime.Builtins.map(new Object[]{%s})" % \
        (", ".join(["%s, %s" % e for e in entries]))
