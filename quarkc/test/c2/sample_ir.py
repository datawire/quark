from quarkc.c2.ir import *

def fibonacci_ir():
    return Package(
        Function(
            Name("pf:pf.fib"), Int(),
            Param("i", Int()),
            Block(
                If(Invoke(Name("q:q.int__eq__"), Var("i"), IntLit(0)),
                   Block(
                       Return(IntLit(0))),
                   Block(
                       If(Invoke(Name("q:q.int__eq__"), Var("i"), IntLit(1)),
                          Block(
                              Return(IntLit(1))),
                          Block(
                              Return(Invoke(
                                  Name("q:q.int__add__"),
                                  Invoke(Name("pf:pf.fib"),
                                         Invoke(Name("q:q.int__sub__"), Var("i"), IntLit(1))),
                                  Invoke(Name("pf:pf.fib"),
                                         Invoke(Name("q:q.int__sub__"), Var("i"), IntLit(2)))
                              ))
                          )
                       )
                   )
                )
            )
        ),
        TestFunction(
            Name("pf:pf.zero"),
            Block(
                AssertEqual(IntLit(0), Invoke(Name("pf:pf.fib"), IntLit(0)))
            )
        ),
        TestFunction(
            Name("pf:pf.one"),
            Block(
                AssertEqual(IntLit(1), Invoke(Name("pf:pf.fib"), IntLit(1)))
            )
        ),
        TestFunction(
            Name("pf:pf.two"),
            Block(
                AssertEqual(IntLit(1), Invoke(Name("pf:pf.fib"), IntLit(2)))
            )
        ),
        TestFunction(
            Name("pf:pf.three"),
            Block(
                AssertEqual(IntLit(2), Invoke(Name("pf:pf.fib"), IntLit(3)))
            )
        ),
        TestFunction(
            Name("pf:pf.four"),
            Block(
                AssertEqual(IntLit(3), Invoke(Name("pf:pf.fib"), IntLit(4)))
            )
        ),
        TestFunction(
            Name("pf:pf.five"),
            Block(
                AssertEqual(IntLit(5), Invoke(Name("pf:pf.fib"), IntLit(5)))
            )
        )
    )


def minimal_ir():
    return Package(
        Function(
            Name("minimal:mdk.init"), Type(Name("minimal:mdk.api.MDK")),
            Block(Return(Invoke(Name("minimal:mdk.api.GetMDK"))))
        ),
        Function(
            Name("minimal:mdk.start"), Type(Name("minimal:mdk.api.MDK")),
            Block(
                Local("m", Type(Name("minimal:mdk.api.MDK")), Invoke(Name("minimal:mdk.init"))),
                Evaluate(Send(Var("m"), "start", ())),
                Return(Var("m"))
            )
        ),
        Interface(
            Name("minimal:mdk.api.Session"),
            Message("externalize", String()),
            Message("log", Void(), Param("msg", String()))
        ),
        Interface(
            Name("minimal:mdk.api.Plugin"),
            Message("init", Void(), Param("mdk", Type("minimal:mdk.api.MDK"))),
            Message("onSession", Void(), Param("s", "minimal:mdk.api.Session"))
        ),
        Interface(
            Name("minimal:mdk.api.MDK"),
            Message("start", Void()),
            Message("session", Type("minimal:mdk.api.Session")),
            Message("join", Type("minimal:mdk.api.Session"), Param("id", String())),
            Message("stop", Void()),
            Message("register", Void(), Param("plugin", "minimal:mdk.api.Plugin"))
            ),
        Function(Name("minimal:mdk.api.GetMDK"), Type("minimal:mdk.api.MDK"),
                 Block(Return(Construct(Name("minimal:mdk.impl.MDK"), ())))
        ),
        Class(Name("minimal:mdk.impl.MDK"),
              InterfaceType("minimal:mdk.api.MDK"),
              Field("plugin", Type("minimal:mdk.api.Plugin")),
              Constructor("MDK", ClassType("minimal:mdk.impl.MDK"), Block()
              ),
              Method("start", Void(), Block()
              ),
              Method("session", Type("minimal:mdk.api.Session"), Block(
                  Return(
                      Send(This(), "_session", (
                          Invoke(Name("minimal:mdk.helpers.uuid")), ))
                  ))
              ),
              Method("join", Type("minimal:mdk.api.Session"),
                      Param("id", String()),
                      Block(Return(Send(This(), "_session", (Var("id"), ))))
              ),
              Method("_session", Type("minimal:mdk.api.Session"),
                     Param("id", String()),
                     Block(
                         Local("s", Type("minimal:mdk.api.Session"),
                               Construct(Name("minimal:mdk.impl.Session"),
                                         (This(), Var("id")))),
                         If(Invoke(Name("q:q.object__ne__"), Get(This(), "plugin"), Null()),
                            Block(
                                Send(Get(This(), "plugin"), "onSession", (Var("s"), ))
                            ),
                            Block()
                         ),
                         Return(Var("s")))
              ),
              Method("stop", Void(), Block()),
              Method("register", Void(),
                     Param("plugin", Type("minimal:mdk.api.Plugin")),
                     Block(
                         Evaluate(Set(This(), "plugin", Var("plugin"))),
                         Evaluate(Send(Var("plugin"), "init", (This(), )))
                     )
              )
        ),
        Class(Name("minimal:mdk.impl.Session"),
              InterfaceType("minimal:mdk.api.Session"),
              Field("mdk", Type("minimal:mdk.impl.MDK")),
              Field("id", String()),
              Constructor("Session", ClassType("minimal:mdk.impl.Session"),
                          Param("mdk", Type("minimal:mdk.impl.MDK")),
                          Param("id", String()),
                          Block(
                              # user code
                              Evaluate(Set(This(), "mdk", Var("mdk"))),
                              Evaluate(Set(This(), "id", Var("id"))),
                          )),
              Method("log", Void(), Param("msg", String()),
                     Block(Invoke(Name("q:q.print"), Var("msg")))),
              Method("externalize", String(),
                     Block(Return(StringLit("id"))))
              ),
        Function(Name("minimal:mdk.helpers.uuid"), String(),
                 Block(Return(StringLit("u-u-i-d"))))
    )

