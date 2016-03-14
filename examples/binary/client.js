binary = require('binary').binary;
quark = require('quark').quark;
concurrent = quark.concurrent;
runtime = concurrent.Context.runtime();

client = new binary.BinaryClient(runtime, "ws://127.0.0.1:8910/binary");
