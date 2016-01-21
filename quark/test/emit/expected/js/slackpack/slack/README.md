## SlackEvent

Base class for all slack events.


## SlackError

The server has indicated an error has occurred.


## Hello

The client successfully connected to the server.


## Message

A message was sent to a channel.


## Edited

Metadata about an edit to a message.


## SlackHandler

Event handler for slack events. All unhandled events
are delegated to onSlackEvent by default.


## User

A reference to a user.


## Channel

A reference to a channel.


## Client

Represents a persistent connection to the slack service.

