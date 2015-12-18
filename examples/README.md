# Quark Examples

## The helloRPC example

The helloRPC directory contains a minimal example of a simple RPC
service using Quark.

## The Slack Example

The Slack example illustrates how Quark can be used to build high
level interfaces for services that require rich interaction
patterns. The Slack service includes both a JSON RPC over HTTP
(https://api.slack.com) and a real-time API for processing events
(https://api.slack.com/rtm). Quark lets a service author easily create
and maintain rich clients for both these APIs. By describing the API
using Quark, the service author can quickly produce clients in
multiple languages that interface directly with this high level API
definition.

## The binary example

The binary example illustrates how Quark can be used to provide an
implementation of an arbitrary binary websocket protocol that is
accessible from multiple languages.
