## Object

## void

## bool

## numeric

## integral

## byte

## short

## int

## long

## float

## String

## List

## Map

## JSONObject

## print((0.builtin.print.msg,))

## now(())

## sleep((0.builtin.sleep.seconds,))

## url_get((0.builtin.url_get.url,))

## parseInt((0.builtin.parseInt.st,))

## defaultCodec(())

## WSHandler

## WebSocket

## HTTPHandler

## HTTPRequest

## HTTPResponse

## Task

## Runtime

## Buffer

A stateless buffer of bytes. Default byte order is network byte order.


## Codec

Various String and Buffer conversion routines


## Servlet

A service addresable with an url


## HTTPServlet

Http servlet


## WSServlet

Websocket servlet


## toJSON((0.builtin.toJSON.obj, 0.builtin.toJSON.cls))

Serializes object tree into JSON. skips over fields starting with underscore


## fromJSON((0.builtin.fromJSON.cls, 0.builtin.fromJSON.result, 0.builtin.fromJSON.json))

deserialize json into provided result object. Skip over fields starting with underscore


## ResponseHolder

## Service

## Client

## ServerResponder

## Server

## Class

## Field

## Method

## RPC

## RPCRequest

## Event

The contract between event implementations and Collector


## FutureListener

event handler for a future completion


## FutureCompletion

internal class that binds a listener to a future


## EventContext

Captures the current context, base class for all event source implementations


## Future

The base class for value objects


## FutureWait

Synchronization point for a Future.)


## Queue

A simple FIFO


## CollectorExecutor

Fire events one by one with no locks held


## Collector

An active queue of events. Each event will fire sequentially, one by one. Multiple instances of Collector are not serialized with eachother and may run in parallel.


## TimeoutListener

Timeout expiry handler


## TimeoutExpiry

Timeout expiry event


## Timeout

Timeout


## TLSContextInitializer

internal


## Context

The logical stack for async stuff.


## TLSInitializer

## TLS

## Mutex

## Lock

## Condition
