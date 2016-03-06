binary = require('binary').binary;
builtin = require('builtin').builtin;
concurrent = builtin.concurrent;
runtime = concurrent.Context.runtime();

client = new binary.BinaryClient(runtime, "ws://127.0.0.1:8910/binary");
