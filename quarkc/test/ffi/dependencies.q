quark 0.6.100;
// Quark file dependency (same as use.q test)
use lib/test.q;

// Native dependencies
use java org.apache.commons commons-compress 1.9;
use js ws 1.0;
use py requests 2.7;

// Unsupported language at the moment should not fail
use rb rails 3.0;
