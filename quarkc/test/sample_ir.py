from quarkc.ir import *

def fibonacci_ir():
    return Package(
        Function(
            Name("pf:pf.fib"), Type(Name("q:q.int")),
            Param("i", Type(Name("q:q.int"))),
            Block(
                If(Invoke(Name("q:q.__eq__"), Var("i"), Int(0)),
                   Block(
                       Return(Int(0))),
                   Block(
                       If(Invoke(Name("q:q.__eq__"), Var("i"), Int(1)),
                          Block(
                              Return(Int(1))),
                          Block(
                              Return(Invoke(
                                  Name("q:q.__add__"),
                                  Invoke(Name("pf:pf.fib"),
                                         Invoke(Name("q:q.__sub__"), Var("i"), Int(1))),
                                  Invoke(Name("pf:pf.fib"),
                                         Invoke(Name("q:q.__sub__"), Var("i"), Int(2)))
                              ))
                          )
                       )
                   )
                )
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
            Message("externalize", Type(Name("q:q.String"))),
            Message("log", Void(), Param("msg", Type(Name("q:q.String"))))
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
            Message("join", Type("minimal:mdk.api.Session"), Param("id", "q:q.String")),
            Message("stop", Void()),
            Message("register", Void(), Param("plugin", "minimal:mdk.api.Plugin"))
            ),
        Function(Name("minimal:mdk.api.GetMDK"), Type("minimal:mdk.api.MDK"),
                 Block(Return(Construct(Name("minimal:mdk.impl.MDK"), ())))
        ),
        Class(Name("minimal:mdk.impl.MDK"),
              Type("minimal:mdk.api.MDK"),
              Field("plugin", Type("minimal:mdk.api.Plugin")),
              Constructor("MDK", Type("minimal:mdk.impl.MDK"), Block(
                  Evaluate(Set(This(), "plugin", Null())))
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
                      Param("id", Type("q:q.String")),
                      Block(Return(Send(This(), "_session", (Var("id"), ))))
              ),
              Method("_session", Type("minimal:mdk.api.Session"),
                     Param("id", Type("q:q.String")),
                     Block(
                         Local("s", Type("minimal:mdk.api.Session"),
                               Construct(Name("minimal:mdk.impl.Session"),
                                         (This(), Var("id")))),
                         If(Invoke(Name("q:q.__ne__"), Get(This(), "plugin"), Null()),
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
              Type("minimal:mdk.api.Session"),
              Field("mdk", Type("minimal:mdk.impl.MDK")),
              Field("id", Type("q:q.String")),
              Constructor("Session", Type("minimal:mdk.impl.Session"),
                          Param("mdk", Type("minimal:mdk.impl.MDK")),
                          Param("id", Type("q:q.String")),
                          Block(
                              # XXX default field initializers?
                              Evaluate(Set(This(), "mdk", Null())),
                              Evaluate(Set(This(), "id", Null())),
                              # user code
                              Evaluate(Set(This(), "mdk", Var("mdk"))),
                              Evaluate(Set(This(), "id", Var("id"))),
                          )),
              Method("log", Void(), Param("msg", Type("q:q.String")),
                     Block(Invoke(Name("q:q.print"), Var("msg")))),
              Method("externalize", Type("q:q.String"),
                     Block(Return(String("id"))))
              ),
        Function(Name("minimal:mdk.helpers.uuid"), Type("q:q.String"),
                 Block(Return(String("u-u-i-d"))))
    )

