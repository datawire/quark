# Quark
[![Build Status](https://travis-ci.org/datawire/quark.svg?branch=master)](https://travis-ci.org/datawire/quark)
[![Slack](https://datawire-quark.herokuapp.com/badge.svg?dummy)](https://datawire-quark.herokuapp.com)

Quark is a specialized language for defining and implementing
communication protocols in multiple languages. In particular,
protocols that have semantics that require sophisticated client
behavior are well suited to Quark.

# Motivation

As distributed systems have proliferated (e.g., microservices), the
need for more sophisticated protocols that incorporate backpressure,
failover, retries, timeouts, rate limiting, and other behavior has
increased. Unfortunately, this sophistication introduces more
complexity in implementation. In turn, implementation complexity
reduces adoption because supporting a protocol implementation in
multiple languages requires manual porting.

Quark addresses this problem by enabling protocol authors to write a
single canonical implementation in the Quark language. The Quark
compiler then generates idiomatic implementations of the protocol in
multiple languages (currently Java, JavaScript, and Python, with Ruby
support in progress).

## Getting Started

A popular use case for Quark is to add resilience semantics for
microservice architectures. If you're interested in doing this, check
out [Datawire Connect](https://github.com/datawire/datawire-connect)
which embeds Quark.

If you're interested in using Quark directly to develop a protocol,
just install Quark:

        curl -sL https://raw.githubusercontent.com/datawire/quark/q2/install.sh | sh -s q2

## Next Steps

If you want to contribute to Quark see the [contributing documentation](CONTRIBUTING.md) and
[testing documentation](TESTING.md).
